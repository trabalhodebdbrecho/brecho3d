<%@ Page Language="VB" AutoEventWireup="false" CodeFile="convites.aspx.vb" Inherits="convites" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    form {
            background-color: #F3D7A6; /* Altere para a cor que quiser */
        }
    
        .auto-style1 {
            height: 23px;
        }
    </style>

</head>
<body style="background-color:#F3D7A6">
 
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6">
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" />convites
        </div>
        <div background-color: ##FDF3DE; style="background-color:#F3D7A6"> 
                <table style="width: 100%; height: 84px; max-width: 800px;
    margin: 0 auto;
    background: #F3D7A6;
    padding: 32px;
    border-radius: 12px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.05);">
            <tr>
                <td style="background-color: #F3D7A6" class="auto-style1">status do convite</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtstatus" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #F3D7A6">data de envio</td>
                <td class="auto-style1" style="background-color: #F3D7A6">
                    <asp:TextBox ID="txtdataenvi" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
    <td class="auto-style1">id do evento</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtideve" runat="server" BackColor="#FDF3DE" BorderStyle="None" ></asp:TextBox>
                </td>
</tr>
                                <tr>
    <td class="auto-style1">id do aluno convidado</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtidaluconv" runat="server" BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
</tr>
        </table>
        <p style="background-color: #F3D7A6">
        <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
        <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
        </p>
        <div align="center" style="background-color: #FDF3DE">
        <asp:SqlDataSource ID="Sqlconvite" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobd %>" DeleteCommand="DELETE FROM [ConviteEventos] WHERE [id_convite] = @original_id_convite AND (([Status_convite] = @original_Status_convite) OR ([Status_convite] IS NULL AND @original_Status_convite IS NULL)) AND (([Data_envio] = @original_Data_envio) OR ([Data_envio] IS NULL AND @original_Data_envio IS NULL)) AND (([id_evento] = @original_id_evento) OR ([id_evento] IS NULL AND @original_id_evento IS NULL)) AND (([Id_alunocovidado] = @original_Id_alunocovidado) OR ([Id_alunocovidado] IS NULL AND @original_Id_alunocovidado IS NULL))" InsertCommand="INSERT INTO [ConviteEventos] ([Status_convite], [Data_envio], [id_evento], [Id_alunocovidado]) VALUES (@Status_convite, @Data_envio, @id_evento, @Id_alunocovidado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ConviteEventos]" UpdateCommand="UPDATE [ConviteEventos] SET [Status_convite] = @Status_convite, [Data_envio] = @Data_envio, [id_evento] = @id_evento, [Id_alunocovidado] = @Id_alunocovidado WHERE [id_convite] = @original_id_convite AND (([Status_convite] = @original_Status_convite) OR ([Status_convite] IS NULL AND @original_Status_convite IS NULL)) AND (([Data_envio] = @original_Data_envio) OR ([Data_envio] IS NULL AND @original_Data_envio IS NULL)) AND (([id_evento] = @original_id_evento) OR ([id_evento] IS NULL AND @original_id_evento IS NULL)) AND (([Id_alunocovidado] = @original_Id_alunocovidado) OR ([Id_alunocovidado] IS NULL AND @original_Id_alunocovidado IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_evento" Type="Int32" />
                <asp:Parameter Name="original_Nome_Evento" Type="String" />
                <asp:Parameter Name="original_Descrição_evento" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_evento" />
                <asp:Parameter Name="original_Local_evento" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtstatus" Name="Status_convite" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtdataenvi" DbType="Date" Name="Data_envio" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtideve" Name="id_evento" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtidaluconv" Name="Id_alunocovidado" PropertyName="Text" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome_Evento" Type="String" />
                <asp:Parameter Name="Descrição_evento" Type="String" />
                <asp:Parameter DbType="Date" Name="Data_evento" />
                <asp:Parameter Name="Local_evento" Type="String" />
                <asp:Parameter Name="original_Id_evento" Type="Int32" />
                <asp:Parameter Name="original_Nome_Evento" Type="String" />
                <asp:Parameter Name="original_Descrição_evento" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_evento" />
                <asp:Parameter Name="original_Local_evento" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <hr />

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_convite" DataSourceID="Sqlconvite" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None">
           
            <Columns>
                <asp:BoundField DataField="id_convite" HeaderText="id_convite" InsertVisible="False" ReadOnly="True" SortExpression="id_convite" />
                <asp:BoundField DataField="Status_convite" HeaderText="Status_convite" SortExpression="Status_convite" />
                <asp:BoundField DataField="Data_envio" HeaderText="Data_envio" SortExpression="Data_envio" />
                <asp:BoundField DataField="id_evento" HeaderText="id_evento" SortExpression="id_evento" />
                <asp:BoundField DataField="Id_alunocovidado" HeaderText="Id_alunocovidado" SortExpression="Id_alunocovidado" />
            </Columns>
            <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
        </div>
            </div>
    </form>
</body>
</html>