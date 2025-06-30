<%@ Page Language="VB" AutoEventWireup="false" CodeFile="transacoes.aspx.vb" Inherits="transacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-color:#F3D7A6">
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6">
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" />transacoes</div>
        <div style="background-color: #F3D7A6">
                <table style="width: 100%; height: 84px; background-color: #F3D7A6;"">
            <tr>
                <td>id do aluno receptor</td>
                <td>
                    <asp:TextBox ID="txtidrec" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Data da Transação</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdatatran" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
    <td class="auto-style1">tipo de Transação</td>
    <td class="auto-style1">
        <asp:TextBox ID="txttipotrans" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
</tr>
                                <tr>
    <td class="auto-style1"> id do item</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtidit" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
</tr>
                                                    <tr>
    <td class="auto-style1"> id do aluno doador</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtiddoa" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
</tr>
        </table>
    <p style="background-color: #F3D7A6">
         <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
 <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
    </p>
        <asp:SqlDataSource ID="Sqltransacao" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [Transações] WHERE [Id_Transações] = @original_Id_Transações AND [Data_Transação] = @original_Data_Transação AND (([tipo_Transação] = @original_tipo_Transação) OR ([tipo_Transação] IS NULL AND @original_tipo_Transação IS NULL)) AND (([id_item] = @original_id_item) OR ([id_item] IS NULL AND @original_id_item IS NULL)) AND (([Id_alunoDoador] = @original_Id_alunoDoador) OR ([Id_alunoDoador] IS NULL AND @original_Id_alunoDoador IS NULL)) AND (([id_alunoreceptor] = @original_id_alunoreceptor) OR ([id_alunoreceptor] IS NULL AND @original_id_alunoreceptor IS NULL))" InsertCommand="INSERT INTO [Transações] ([Data_Transação], [tipo_Transação], [id_item], [Id_alunoDoador], [id_alunoreceptor]) VALUES (@Data_Transação, @tipo_Transação, @id_item, @Id_alunoDoador, @id_alunoreceptor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Transações]" UpdateCommand="UPDATE [Transações] SET [Data_Transação] = @Data_Transação, [tipo_Transação] = @tipo_Transação, [id_item] = @id_item, [Id_alunoDoador] = @Id_alunoDoador, [id_alunoreceptor] = @id_alunoreceptor WHERE [Id_Transações] = @original_Id_Transações AND [Data_Transação] = @original_Data_Transação AND (([tipo_Transação] = @original_tipo_Transação) OR ([tipo_Transação] IS NULL AND @original_tipo_Transação IS NULL)) AND (([id_item] = @original_id_item) OR ([id_item] IS NULL AND @original_id_item IS NULL)) AND (([Id_alunoDoador] = @original_Id_alunoDoador) OR ([Id_alunoDoador] IS NULL AND @original_Id_alunoDoador IS NULL)) AND (([id_alunoreceptor] = @original_id_alunoreceptor) OR ([id_alunoreceptor] IS NULL AND @original_id_alunoreceptor IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_Transações" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Data_Transação" />
                <asp:Parameter Name="original_tipo_Transação" Type="String" />
                <asp:Parameter Name="original_id_item" Type="Int32" />
                <asp:Parameter Name="original_Id_alunoDoador" Type="Int32" />
                <asp:Parameter Name="original_id_alunoreceptor" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtdatatran" DbType="Date" Name="Data_Transação" PropertyName="Text" />
                <asp:ControlParameter ControlID="txttipotrans" Name="tipo_Transação" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtidit" Name="id_item" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtiddoa" Name="Id_alunoDoador" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtidrec" Name="id_alunoreceptor" PropertyName="Text" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Data_Transação" />
                <asp:Parameter Name="tipo_Transação" Type="String" />
                <asp:Parameter Name="id_item" Type="Int32" />
                <asp:Parameter Name="Id_alunoDoador" Type="Int32" />
                <asp:Parameter Name="id_alunoreceptor" Type="Int32" />
                <asp:Parameter Name="original_Id_Transações" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_Data_Transação" />
                <asp:Parameter Name="original_tipo_Transação" Type="String" />
                <asp:Parameter Name="original_id_item" Type="Int32" />
                <asp:Parameter Name="original_Id_alunoDoador" Type="Int32" />
                <asp:Parameter Name="original_id_alunoreceptor" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <div aling="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Transações" DataSourceID="Sqltransacao" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_Transações" HeaderText="Id_Transações" InsertVisible="False" ReadOnly="True" SortExpression="Id_Transações" />
                <asp:BoundField DataField="Data_Transação" HeaderText="Data_Transação" SortExpression="Data_Transação" />
                <asp:BoundField DataField="tipo_Transação" HeaderText="tipo_Transação" SortExpression="tipo_Transação" />
                <asp:BoundField DataField="id_item" HeaderText="id_item" SortExpression="id_item" />
                <asp:BoundField DataField="Id_alunoDoador" HeaderText="Id_alunoDoador" SortExpression="Id_alunoDoador" />
                <asp:BoundField DataField="id_alunoreceptor" HeaderText="id_alunoreceptor" SortExpression="id_alunoreceptor" />
            </Columns>
             <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
            </div>
            </div>
    </form>
    </body>
</html>
