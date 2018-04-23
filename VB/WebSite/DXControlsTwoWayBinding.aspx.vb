Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxTabControl
Imports DevExpress.Web.ASPxEditors

Partial Public Class DXControlsTwoWayBinding
	Inherits System.Web.UI.Page
	Protected Sub gv_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
		Dim gridView As ASPxGridView = CType(sender, ASPxGridView)
		Dim pageControl As ASPxPageControl = CType(gridView.FindEditFormTemplateControl("pc"), ASPxPageControl)
		Dim txt As ASPxTextBox = CType(pageControl.FindControl("txtCategoryName"), ASPxTextBox)
		e.NewValues("CategoryName") = txt.Text.Trim()

		'Online Demo Mode Restriction
		Throw New InvalidOperationException("Data modifications are not allowed in online demos")
		'Online Demo Mode Restriction
	End Sub
End Class