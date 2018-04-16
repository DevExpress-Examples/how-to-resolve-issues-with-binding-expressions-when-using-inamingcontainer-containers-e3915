Imports System
Imports System.Web.UI.WebControls

Partial Public Class MSControlsTwoWayBinding
    Inherits System.Web.UI.Page

    Protected Sub fv_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs)
        Dim formView As FormView = DirectCast(sender, FormView)
        Dim wzd As Wizard = CType(formView.FindControl("wzd"), Wizard)
        Dim txt As TextBox = CType(wzd.FindControl("txtCategoryName"), TextBox)
        e.NewValues("CategoryName") = txt.Text.Trim()

        'Online Demo Mode Restriction
        ClientScript.RegisterStartupScript(Me.GetType(), "ANY_KEY", "alert('Data modifications are not allowed in online demos');", True)
        e.Cancel = True
        'Online Demo Mode Restriction
    End Sub
End Class