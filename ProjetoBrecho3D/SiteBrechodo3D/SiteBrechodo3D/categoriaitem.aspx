<%@ Page Language="VB" AutoEventWireup="false" CodeFile="categoriaitem.aspx.vb" Inherits="categoriaitem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 171px;
        }
    </style>
</head>
<body  style="background-color:#F3D7A6">
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6"> 
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" /><br />  </div>
        <div style="background-color:#F3D7A6"> categorias de item  </div> 
        <table style="width: 100%; height: 84px; background-color: #F3D7A6;">
            <tr>
                <td class="auto-style1">id da categoria</td>
                <td>
                    <asp:TextBox ID="txtidcat" runat="server" BackColor="#FDF3DE" BorderStyle="Solid" BorderColor="#FDF3DE"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style1">nome da categoria</td>
                <td>
                    <asp:TextBox ID="txtnomecat" runat="server" BackColor="#FDF3DE" BorderStyle="Solid" BorderColor="#FDF3DE"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
    <td class="auto-style1">descricao da categoria</td>
    <td>
                    <asp:TextBox ID="iddescricat" runat="server" BackColor="#FDF3DE" BorderStyle="Solid" BorderColor="#FDF3DE"></asp:TextBox>
    </td>
    
</tr>
          
        </table>
                     <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
  <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
        <asp:SqlDataSource ID="Sqlcatitem" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [CategoriasItem] WHERE [id_categoria] = @original_id_categoria AND (([nomeCategoria] = @original_nomeCategoria) OR ([nomeCategoria] IS NULL AND @original_nomeCategoria IS NULL)) AND (([Descrição_categoria] = @original_Descrição_categoria) OR ([Descrição_categoria] IS NULL AND @original_Descrição_categoria IS NULL))" InsertCommand="INSERT INTO [CategoriasItem] ([id_categoria], [nomeCategoria], [Descrição_categoria]) VALUES (@id_categoria, @nomeCategoria, @Descrição_categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CategoriasItem]" UpdateCommand="UPDATE [CategoriasItem] SET [nomeCategoria] = @nomeCategoria, [Descrição_categoria] = @Descrição_categoria WHERE [id_categoria] = @original_id_categoria AND (([nomeCategoria] = @original_nomeCategoria) OR ([nomeCategoria] IS NULL AND @original_nomeCategoria IS NULL)) AND (([Descrição_categoria] = @original_Descrição_categoria) OR ([Descrição_categoria] IS NULL AND @original_Descrição_categoria IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_categoria" Type="Int32" />
                <asp:Parameter Name="original_nomeCategoria" Type="String" />
                <asp:Parameter Name="original_Descrição_categoria" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtidcat" Name="id_categoria" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtnomecat" Name="nomeCategoria" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="iddescricat" Name="Descrição_categoria" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nomeCategoria" Type="String" />
                <asp:Parameter Name="Descrição_categoria" Type="String" />
                <asp:Parameter Name="original_id_categoria" Type="Int32" />
                <asp:Parameter Name="original_nomeCategoria" Type="String" />
                <asp:Parameter Name="original_Descrição_categoria" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       <div align="center">
        <asp:GridView ID="GridView1" runat="server"  BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id_categoria" DataSourceID="Sqlcatitem" AllowPaging="True" AllowSorting="True">
            
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                 <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" ReadOnly="True" SortExpression="id_categoria" />
                 <asp:BoundField DataField="nomeCategoria" HeaderText="nomeCategoria" SortExpression="nomeCategoria" />
                 <asp:BoundField DataField="Descrição_categoria" HeaderText="Descrição_categoria" SortExpression="Descrição_categoria" />
             </Columns>
            
             <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
           </div>
    </form>
        </body>
        </html>