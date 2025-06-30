<%@ Page Language="VB" AutoEventWireup="false" CodeFile="roupas.aspx.vb" Inherits="roupas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-color:#F3D7A6">
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6">
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" />roupas
        </div>
        <div style="background-color:#F3D7A6">
                <table style="width: 100%; height: 84px; background-color: #F3D7A6; margin-top: 0px;">
            <tr>
                <td>nome do item</td>
                <td>
                    <asp:TextBox ID="txtnomit" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">descrição</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdescrisao" runat="server"  BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">estado de conservação</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtestado" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
    <td class="auto-style1">data de cadastro</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtdata" runat="server"  BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
    <td class="auto-style1"></td>
</tr>
                                <tr>
    <td class="auto-style1">id da categoria</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtidcat" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
    <td class="auto-style1"></td>
</tr>
        </table>
        <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
        <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
        <asp:SqlDataSource ID="Sqlroupas" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [Itens] WHERE [id_itens] = @original_id_itens AND (([Nome_Item] = @original_Nome_Item) OR ([Nome_Item] IS NULL AND @original_Nome_Item IS NULL)) AND (([descrição] = @original_descrição) OR ([descrição] IS NULL AND @original_descrição IS NULL)) AND (([Estado_conservação] = @original_Estado_conservação) OR ([Estado_conservação] IS NULL AND @original_Estado_conservação IS NULL)) AND (([Data_cadastro] = @original_Data_cadastro) OR ([Data_cadastro] IS NULL AND @original_Data_cadastro IS NULL)) AND (([id_categoria] = @original_id_categoria) OR ([id_categoria] IS NULL AND @original_id_categoria IS NULL))" InsertCommand="INSERT INTO [Itens] ([Nome_Item], [descrição], [Estado_conservação], [Data_cadastro], [id_categoria]) VALUES (@Nome_Item, @descrição, @Estado_conservação, @Data_cadastro, @id_categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Itens]" UpdateCommand="UPDATE [Itens] SET [Nome_Item] = @Nome_Item, [descrição] = @descrição, [Estado_conservação] = @Estado_conservação, [Data_cadastro] = @Data_cadastro, [id_categoria] = @id_categoria WHERE [id_itens] = @original_id_itens AND (([Nome_Item] = @original_Nome_Item) OR ([Nome_Item] IS NULL AND @original_Nome_Item IS NULL)) AND (([descrição] = @original_descrição) OR ([descrição] IS NULL AND @original_descrição IS NULL)) AND (([Estado_conservação] = @original_Estado_conservação) OR ([Estado_conservação] IS NULL AND @original_Estado_conservação IS NULL)) AND (([Data_cadastro] = @original_Data_cadastro) OR ([Data_cadastro] IS NULL AND @original_Data_cadastro IS NULL)) AND (([id_categoria] = @original_id_categoria) OR ([id_categoria] IS NULL AND @original_id_categoria IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_itens" Type="Int32" />
                <asp:Parameter Name="original_Nome_Item" Type="String" />
                <asp:Parameter Name="original_descrição" Type="String" />
                <asp:Parameter Name="original_Estado_conservação" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_cadastro" />
                <asp:Parameter Name="original_id_categoria" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome_Item" Type="String" />
                <asp:Parameter Name="descrição" Type="String" />
                <asp:Parameter Name="Estado_conservação" Type="String" />
                <asp:Parameter DbType="Date" Name="Data_cadastro" />
                <asp:Parameter Name="id_categoria" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome_Item" Type="String" />
                <asp:Parameter Name="descrição" Type="String" />
                <asp:Parameter Name="Estado_conservação" Type="String" />
                <asp:Parameter DbType="Date" Name="Data_cadastro" />
                <asp:Parameter Name="id_categoria" Type="Int32" />
                <asp:Parameter Name="original_id_itens" Type="Int32" />
                <asp:Parameter Name="original_Nome_Item" Type="String" />
                <asp:Parameter Name="original_descrição" Type="String" />
                <asp:Parameter Name="original_Estado_conservação" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_cadastro" />
                <asp:Parameter Name="original_id_categoria" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_itens" DataSourceID="Sqlroupas" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_itens" HeaderText="id_itens" InsertVisible="False" ReadOnly="True" SortExpression="id_itens" />
                <asp:BoundField DataField="Nome_Item" HeaderText="Nome_Item" SortExpression="Nome_Item" />
                <asp:BoundField DataField="descrição" HeaderText="descrição" SortExpression="descrição" />
                <asp:BoundField DataField="Estado_conservação" HeaderText="Estado_conservação" SortExpression="Estado_conservação" />
                <asp:BoundField DataField="Data_cadastro" HeaderText="Data_cadastro" SortExpression="Data_cadastro" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
            </Columns>
             <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
            </div>
            </div>
    </form>
</body>
</html>
