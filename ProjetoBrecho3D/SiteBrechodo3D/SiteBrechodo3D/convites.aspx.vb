
Partial Class convites
    Inherits System.Web.UI.Page


    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqlconvite.Insert()
    End Sub

    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtdataenvi.Text = ""
        txtidaluconv.Text = ""
        txtideve.Text = ""
        txtstatus.Text = ""
        txtidaluconv.Focus()
    End Sub
End Class
