﻿<%@ Application Language="vb" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
        AddHandler DevExpress.Web.ASPxWebControl.CallbackError, AddressOf Callback_Error
    End Sub
    Protected Sub Callback_Error(ByVal sender As Object, ByVal e As EventArgs)
        Dim exception = HttpContext.Current.Server.GetLastError()

        If TypeOf exception Is CallbackException Then
            DevExpress.Web.ASPxWebControl.SetCallbackErrorMessage(exception.Message)
        End If
    End Sub
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        '  Code that runs on application shutdown

    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs

    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started

    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.

    End Sub

</script>