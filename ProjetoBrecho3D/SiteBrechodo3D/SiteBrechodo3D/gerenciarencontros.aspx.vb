
Partial Class gerenciarencontros
    Inherits System.Web.UI.Page


    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqleventos.Insert()
    End Sub

    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtdataeve.Text = ""
        txtdescrisaoev.Text = ""
        txtlocal.Text = ""
        txtnomeve.Text = ""
        txtnomeve.Focus()
    End Sub
End Class
