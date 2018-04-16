Imports System
Imports DevExpress.Web

Partial Public Class DXControlsTwoWayBinding
    Inherits System.Web.UI.Page

    Protected Sub gv_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
        Dim gridView As ASPxGridView = DirectCast(sender, ASPxGridView)
        Dim pageControl As ASPxPageControl = CType(gridView.FindEditFormTemplateControl("pc"), ASPxPageControl)
        Dim txt As ASPxTextBox = CType(pageControl.FindControl("txtCategoryName"), ASPxTextBox)
        e.NewValues("CategoryName") = txt.Text.Trim()

        'Online Demo Mode Restriction
        Throw New CallbackException("Data modifications are not allowed in online demos")
        'Online Demo Mode Restriction
    End Sub
End Class