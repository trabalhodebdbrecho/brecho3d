<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gerenciarencontros.aspx.vb" Inherits="gerenciarencontros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body  style="background-color:#F3D7A6">
    <form id="form1" runat="server">
        <div style="background-color: #F3D7A6">
            <img src="NovaPasta1/img.jpeg" style="width: 39px; height: 31px" />gerenciarencontros
        </div>
         <div style="background-color:  #F3D7A6"">
                <table style="width: 100%; height: 84px; background-color: #F3D7A6;">
            <tr>
                <td>nome do evento</td>
                <td>
                    <asp:TextBox ID="txtnomeve" runat="server"  BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">descrição do evento</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdescrisaoev" runat="server"  BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
    <td class="auto-style1">data do evento</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtdataeve" runat="server"  BackColor="#FDF3DE" BorderStyle="None" ></asp:TextBox>
                </td>
</tr>
                                <tr>
    <td class="auto-style1">local do evento</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtlocal" runat="server"  BackColor="#FDF3DE" BorderStyle="None"></asp:TextBox>
                </td>
</tr>
        </table>
        <p>
        <asp:Button ID="btncadast" runat="server" Text="Cadastrar" Width="143px" BackColor="#8A9A5B" BorderColor="#8A9A5B" BorderStyle="Solid" />
        <asp:Button ID="btnlinpar" runat="server" Text="Limpar" Width="156px" BackColor="#A9713A" BorderColor="#A9713A" BorderStyle="Solid" />
        </p>
        <asp:SqlDataSource ID="Sqleventos" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:trabalhobdConnectionString %>" DeleteCommand="DELETE FROM [Eventos] WHERE [Id_evento] = @original_Id_evento AND (([Nome_Evento] = @original_Nome_Evento) OR ([Nome_Evento] IS NULL AND @original_Nome_Evento IS NULL)) AND (([Descrição_evento] = @original_Descrição_evento) OR ([Descrição_evento] IS NULL AND @original_Descrição_evento IS NULL)) AND (([Data_evento] = @original_Data_evento) OR ([Data_evento] IS NULL AND @original_Data_evento IS NULL)) AND (([Local_evento] = @original_Local_evento) OR ([Local_evento] IS NULL AND @original_Local_evento IS NULL))" InsertCommand="INSERT INTO [Eventos] ([Nome_Evento], [Descrição_evento], [Data_evento], [Local_evento]) VALUES (@Nome_Evento, @Descrição_evento, @Data_evento, @Local_evento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Eventos]" UpdateCommand="UPDATE [Eventos] SET [Nome_Evento] = @Nome_Evento, [Descrição_evento] = @Descrição_evento, [Data_evento] = @Data_evento, [Local_evento] = @Local_evento WHERE [Id_evento] = @original_Id_evento AND (([Nome_Evento] = @original_Nome_Evento) OR ([Nome_Evento] IS NULL AND @original_Nome_Evento IS NULL)) AND (([Descrição_evento] = @original_Descrição_evento) OR ([Descrição_evento] IS NULL AND @original_Descrição_evento IS NULL)) AND (([Data_evento] = @original_Data_evento) OR ([Data_evento] IS NULL AND @original_Data_evento IS NULL)) AND (([Local_evento] = @original_Local_evento) OR ([Local_evento] IS NULL AND @original_Local_evento IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_evento" Type="Int32" />
                <asp:Parameter Name="original_Nome_Evento" Type="String" />
                <asp:Parameter Name="original_Descrição_evento" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Data_evento" />
                <asp:Parameter Name="original_Local_evento" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtnomeve" Name="Nome_Evento" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtdescrisaoev" Name="Descrição_evento" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtdataeve" DbType="Date" Name="Data_evento" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtlocal" Name="Local_evento" PropertyName="Text" Type="String" />
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
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id_evento" DataSourceID="Sqleventos" BackColor="#FFF4E0" PageSize="20" Width="80px" BorderColor="#FDF3DE" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_evento" HeaderText="Id_evento" InsertVisible="False" ReadOnly="True" SortExpression="Id_evento" />
                <asp:BoundField DataField="Nome_Evento" HeaderText="Nome_Evento" SortExpression="Nome_Evento" />
                <asp:BoundField DataField="Descrição_evento" HeaderText="Descrição_evento" SortExpression="Descrição_evento" />
                <asp:BoundField DataField="Data_evento" HeaderText="Data_evento" SortExpression="Data_evento" />
                <asp:BoundField DataField="Local_evento" HeaderText="Local_evento" SortExpression="Local_evento" />
       
            </Columns>
                 <HeaderStyle BackColor="#C8AD86" CssClass="body" Font-Bold="False" Font-Italic="False" />
        </asp:GridView>
            </div>
                 </div>
    </form>
</body>
</html>
