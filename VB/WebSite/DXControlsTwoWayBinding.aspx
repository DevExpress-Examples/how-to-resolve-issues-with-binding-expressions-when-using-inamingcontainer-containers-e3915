<%@ Page Language="vb" AutoEventWireup="true" CodeFile="DXControlsTwoWayBinding.aspx.vb"
    Inherits="DXControlsTwoWayBinding" %>
<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmMain" runat="server">
    <dx:ASPxGridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="CategoryID" OnRowUpdating="gv_RowUpdating">
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="true" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Templates>
            <EditForm>
                <dx:ASPxPageControl ID="pc" runat="server" ActiveTabIndex="0">
                    <TabPages>
                        <dx:TabPage Text="EditForm Template INamingContainer">
                            <ContentCollection>
                                <dx:ContentControl ID="cntCtrl" runat="server">
                                    CategoryName:
                                    <dx:ASPxTextBox ID="txtCategoryName" runat="server" Width="170px" Value='<%#Bind("CategoryName")%>'>
                                    </dx:ASPxTextBox>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                    </TabPages>
                </dx:ASPxPageControl>
                <dx:ASPxGridViewTemplateReplacement ID="btnUpdate" runat="server" ReplacementType="EditFormUpdateButton" />&nbsp;|&nbsp;
                <dx:ASPxGridViewTemplateReplacement ID="btnCancel" runat="server" ReplacementType="EditFormCancelButton" />
            </EditForm>
        </Templates>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" 
        SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]" 
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