
Partial Class transacoes
    Inherits System.Web.UI.Page


    Protected Sub btncadast_Click(sender As Object, e As EventArgs) Handles btncadast.Click
        Sqltransacao.Insert()
    End Sub

    Protected Sub btnlinpar_Click(sender As Object, e As EventArgs) Handles btnlinpar.Click
        txtdatatran.Text = ""
        txtiddoa.Text = ""
        txtidit.Text = ""
        txtidrec.Text = ""
        txttipotrans.Text = ""
        txtidrec.Focus()
    End Sub
End Class
