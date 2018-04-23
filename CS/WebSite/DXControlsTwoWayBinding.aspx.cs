using System;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxTabControl;
using DevExpress.Web.ASPxEditors;

public partial class DXControlsTwoWayBinding : System.Web.UI.Page {
    protected void gv_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e) {
        ASPxGridView gridView = (ASPxGridView)sender;
        ASPxPageControl pageControl = (ASPxPageControl)gridView.FindEditFormTemplateControl("pc");
        ASPxTextBox txt = (ASPxTextBox)pageControl.FindControl("txtCategoryName");
        e.NewValues["CategoryName"] = txt.Text.Trim();

        /*Online Demo Mode Restriction*/
        throw new InvalidOperationException("Data modifications are not allowed in online demos");
        /*Online Demo Mode Restriction*/
    }
}