<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server"> 
    <title>Dashboard - Sistema de Certidões CREA-RJ</title> 
    <link href="estijo.css" rel="stylesheet" type="text/css" /> 
</head> 
<body  style="background-color:#F3D7A6"> 
    <form id="form1" runat="server"> 
        <div class="form-container"> 
 
            <h2>area de cordernacao</h2> 
 
            <h3 style="background-color: #A9713A">Bem-vindo, <asp:Label ID="lblUsuario" 
runat="server"></asp:Label>!</h3> 
 
            <!-- Área de Navegação do Sistema --> 
            <div> 
                <h4 style="background-color: #A9713A">Menu Principal</h4> 
 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/gerenciarencontros.aspx">Gerenciar Encontros</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/usuarios.aspx">Usuários</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/roupas.aspx">Roupas</asp:HyperLink>
                &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/alunos.aspx">Alunos</asp:HyperLink>
                <br />
                <asp:HyperLink ID="concite" runat="server" NavigateUrl="~/convites.aspx">convite</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/transacoes.aspx">transacoes</asp:HyperLink>
                &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/categoriaitem.aspx">categoria do item</asp:HyperLink>
                <br /><br /> 
 
                <br /><br /> 
 
                <br />
                <br />
 
                <br /><br /> 
 
            </div> 
 
        </div> 
    </form> 
</body> 
</html>
