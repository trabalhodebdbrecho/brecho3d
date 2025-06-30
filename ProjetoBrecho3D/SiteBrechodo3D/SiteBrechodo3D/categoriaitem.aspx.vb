
Partial Class categoriaitem
    Inherits System.Web.UI.Page


    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqlcatitem.Insert()
    End Sub

    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtidcat.Text = ""
        txtnomecat.Text = ""
        iddescricat.Text = ""
        txtidcat.Focus()
    End Sub
End Class
