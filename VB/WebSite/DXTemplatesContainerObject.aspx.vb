Imports System
Imports DevExpress.Web

Partial Public Class DXTemplatesContainerObject
    Inherits System.Web.UI.Page

    Protected Sub txtCategoryName_Init(ByVal sender As Object, ByVal e As EventArgs)
        Dim txt As ASPxTextBox = DirectCast(sender, ASPxTextBox)
        Dim container As ASPxPageControl = CType(txt.NamingContainer, ASPxPageControl)
        Dim templateContainer As GridViewEditFormTemplateContainer = CType(container.NamingContainer, GridViewEditFormTemplateContainer)

        txt.ValidationSettings.ValidationGroup = templateContainer.ValidationGroup
        txt.Value = templateContainer.KeyValue
        'etc.
    End Sub
End Class
