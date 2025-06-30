<%@ Page Language="VB" AutoEventWireup="false" CodeFile="usuarios.aspx.vb" Inherits="usuarios" %>

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
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" />Usuarios <br />  </div>
        <div style="background-color: #F3D7A6">
        <table style="width: 100%; height: 84px; background-color: #F3D7A6;">
            <tr>
                <td class="auto-style1">Nome</td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style1">Senha</td>
                <td>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    perfil</td>
                <td>
                    <asp:TextBox ID="txtperfil" runat="server" TextMode="Password" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
                
            </tr>
        </table>
                     <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
  <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idusuario" DataSourceID="Sqlusu" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="idusuario" HeaderText="idusuario" InsertVisible="False" ReadOnly="True" SortExpression="idusuario" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
                <asp:BoundField DataField="perfil" HeaderText="perfil" SortExpression="perfil" />
            </Columns>
            <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
            
        </asp:GridView>
            <asp:SqlDataSource ID="Sqlusu" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [idusuario] = @original_idusuario AND [login] = @original_login AND [senha] = @original_senha AND (([perfil] = @original_perfil) OR ([perfil] IS NULL AND @original_perfil IS NULL))" InsertCommand="INSERT INTO [Usuarios] ([login], [senha], [perfil]) VALUES (@login, @senha, @perfil)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [login] = @login, [senha] = @senha, [perfil] = @perfil WHERE [idusuario] = @original_idusuario AND [login] = @original_login AND [senha] = @original_senha AND (([perfil] = @original_perfil) OR ([perfil] IS NULL AND @original_perfil IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_idusuario" Type="Int32" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_senha" Type="String" />
                    <asp:Parameter Name="original_perfil" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNome" Name="login" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtSenha" Name="senha" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtperfil" Name="perfil" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="login" Type="String" />
                    <asp:Parameter Name="senha" Type="String" />
                    <asp:Parameter Name="perfil" Type="String" />
                    <asp:Parameter Name="original_idusuario" Type="Int32" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_senha" Type="String" />
                    <asp:Parameter Name="original_perfil" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            </div>
            

    </form>
</body>
</html>
