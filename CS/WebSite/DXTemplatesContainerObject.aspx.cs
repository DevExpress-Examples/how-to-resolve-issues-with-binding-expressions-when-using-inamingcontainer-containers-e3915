using System;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxTabControl;
using DevExpress.Web.ASPxEditors;

public partial class DXTemplatesContainerObject : System.Web.UI.Page {
    protected void txtCategoryName_Init(object sender, EventArgs e) {
        ASPxTextBox txt = (ASPxTextBox)sender;
        ASPxPageControl container = (ASPxPageControl)txt.NamingContainer;
        GridViewEditFormTemplateContainer templateContainer = (GridViewEditFormTemplateContainer)container.NamingContainer;

        txt.ValidationSettings.ValidationGroup = templateContainer.ValidationGroup;
        txt.Value = templateContainer.KeyValue;
        //etc.
    }
}
