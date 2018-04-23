using System;
using System.Web.UI.WebControls;

public partial class MSControlsTwoWayBinding : System.Web.UI.Page {
    protected void fv_ItemUpdating(object sender, System.Web.UI.WebControls.FormViewUpdateEventArgs e) {
        FormView formView = (FormView)sender;
        Wizard wzd = (Wizard)formView.FindControl("wzd");
        TextBox txt = (TextBox)wzd.FindControl("txtCategoryName");
        e.NewValues["CategoryName"] = txt.Text.Trim();

        /*Online Demo Mode Restriction*/
        ClientScript.RegisterStartupScript(GetType(), "ANY_KEY", "alert('Data modifications are not allowed in online demos');", true);
        e.Cancel = true;
        /*Online Demo Mode Restriction*/
    }
} 