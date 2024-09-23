Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindRecentEvents()
        End If
    End Sub

    Private Sub BindRecentEvents()
        'Dim dt As DataTable = GetRecentEvents() ' Replace with your method to fetch events

        'If dt.Rows.Count > 0 Then
        '    rptRecentEvents.DataSource = dt
        '    rptRecentEvents.DataBind()
        'Else
        '    litNoEvents.Visible = True
        'End If
    End Sub

    Private Function GetRecentEvents() As DataTable
        ' Your code to fetch recent events from the database
    End Function

End Class