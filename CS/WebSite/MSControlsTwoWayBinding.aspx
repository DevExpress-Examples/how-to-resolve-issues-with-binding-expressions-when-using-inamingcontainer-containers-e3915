<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MSControlsTwoWayBinding.aspx.cs" Inherits="MSControlsTwoWayBinding" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmMain" runat="server">
    <asp:FormView ID="fw" runat="server" AllowPaging="True" DataKeyNames="CategoryID"
        DataSourceID="ads" OnItemUpdating="fv_ItemUpdating">
        <EditItemTemplate>
            CategoryID:
            <asp:Label ID="lblCategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Wizard ID="wzd" runat="server">
                <WizardSteps>
                    <asp:WizardStep ID="wzaStepOne" runat="server" Title="Step One">
                        <asp:TextBox ID="txtCategoryName" runat="server" Text='<%# Bind("CategoryName") %>' />
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update" />&nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel" />
        </EditItemTemplate>
        <ItemTemplate>
            CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit" />
        </ItemTemplate>
    </asp:FormView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"
        UpdateCommand="UPDATE [Categories] SET [CategoryName] = ? WHERE [CategoryID] = ?">
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <a href="Default.aspx"><< Home</a>
    </form>
</body>
</html>