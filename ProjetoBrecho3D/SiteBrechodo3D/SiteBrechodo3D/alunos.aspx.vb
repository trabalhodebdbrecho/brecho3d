
Partial Class alunos
    Inherits System.Web.UI.Page


    Protected Sub btnlimpar_Click(sender As Object, e As EventArgs) Handles btnlimpar.Click
        txtemail.Text = ""
        txtnome.Text = ""
        txttele.Text = ""
        txtturm.Text = ""
        txtnome.Focus()


    End Sub

    Protected Sub btncadas_Click(sender As Object, e As EventArgs) Handles btncadas.Click
        Sqlalunos.Insert()
    End Sub
End Class
