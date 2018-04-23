Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxTabControl
Imports DevExpress.Web.ASPxEditors

Partial Public Class DXTemplatesContainerObject
	Inherits System.Web.UI.Page
	Protected Sub txtCategoryName_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim txt As ASPxTextBox = CType(sender, ASPxTextBox)
		Dim container As ASPxPageControl = CType(txt.NamingContainer, ASPxPageControl)
		Dim templateContainer As GridViewEditFormTemplateContainer = CType(container.NamingContainer, GridViewEditFormTemplateContainer)

		txt.ValidationSettings.ValidationGroup = templateContainer.ValidationGroup
		txt.Value = templateContainer.KeyValue
		'etc.
	End Sub
End Class
