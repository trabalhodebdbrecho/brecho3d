
Partial Class usuarios
    Inherits System.Web.UI.Page


    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtNome.Text = ""
        txtSenha.Text = ""
        txtperfil.Text = ""
        txtNome.Focus()
    End Sub

    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqlusu.Insert()
    End Sub
End Class
