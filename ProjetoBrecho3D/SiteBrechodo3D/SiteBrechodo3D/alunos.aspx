<%@ Page Language="VB" AutoEventWireup="false" CodeFile="alunos.aspx.vb" Inherits="alunos"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      
    </style>
</head>
<body style="background-color:#F3D7A6">
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6">
           <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px"/>
            alunos&nbsp;
        </div>
        <div style="background-color: #F3D7A6">
        <table style="width: 100%; height: 84px; background-color: #F3D7A6;">
            <tr>
                <td>nome</td>
                <td>
                    <asp:TextBox ID="txtnome" runat="server" BackColor="#FDF3DE" BorderColor="#FDF3DE" BorderStyle="Solid"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">turma</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtturm" runat="server" BackColor="#FDF3DE" BorderColor="#FDF3DE" BorderStyle="Solid"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemail" runat="server" BackColor="#FDF3DE" BorderColor="#FDF3DE" BorderStyle="Solid"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
    <td class="auto-style1">telefone</td>
    <td class="auto-style1">
        <asp:TextBox ID="txttele" runat="server" BackColor="#FDF3DE" BorderColor="#FDF3DE" BorderStyle="Solid"></asp:TextBox>
                </td>
    <td class="auto-style1"></td>
</tr>
        </table>
        <asp:Button ID="btncadas" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
        <asp:Button ID="btnlimpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
        <asp:SqlDataSource ID="Sqlalunos" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [Aluno] WHERE [id_alunos] = @original_id_alunos AND [nome] = @original_nome AND [turma] = @original_turma AND [email] = @original_email AND [telefone] = @original_telefone" InsertCommand="INSERT INTO [Aluno] ([nome], [turma], [email], [telefone]) VALUES (@nome, @turma, @email, @telefone)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Aluno]" UpdateCommand="UPDATE [Aluno] SET [nome] = @nome, [turma] = @turma, [email] = @email, [telefone] = @telefone WHERE [id_alunos] = @original_id_alunos AND [nome] = @original_nome AND [turma] = @original_turma AND [email] = @original_email AND [telefone] = @original_telefone">
            <DeleteParameters>
                <asp:Parameter Name="original_id_alunos" Type="Int32" />
                <asp:Parameter Name="original_nome" Type="String" />
                <asp:Parameter Name="original_turma" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_telefone" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="turma" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="telefone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="turma" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="telefone" Type="String" />
                <asp:Parameter Name="original_id_alunos" Type="Int32" />
                <asp:Parameter Name="original_nome" Type="String" />
                <asp:Parameter Name="original_turma" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_telefone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_alunos" DataSourceID="Sqlalunos" AllowPaging="True" AllowSorting="True" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None">
            <Columns>
                <asp:BoundField DataField="id_alunos" HeaderText="id_alunos" ReadOnly="True" SortExpression="id_alunos" InsertVisible="False" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="turma" HeaderText="turma" SortExpression="turma" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
            </Columns>
            <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
        </div>
            </div>
    </form>
</body>
</html>
