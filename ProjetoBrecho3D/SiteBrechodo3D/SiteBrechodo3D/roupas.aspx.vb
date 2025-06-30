
Partial Class roupas
    Inherits System.Web.UI.Page


    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqlroupas.Insert()
    End Sub

    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtdata.Text = ""
        txtdescrisao.Text = ""
        txtestado.Text = ""
        txtidcat.Text = ""
        txtnomit.Text = ""
        txtnomit.Focus()
    End Sub

End Class
