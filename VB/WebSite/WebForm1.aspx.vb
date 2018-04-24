Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxGridView

Namespace WebApplication9
    Partial Public Class WebForm1
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        End Sub

        Protected Sub ASPxGridView1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs)
            Dim colIndex As Integer = Convert.ToInt32(e.Parameters)
            If DirectCast(sender, ASPxGridView).Columns(colIndex).Visible Then
                DirectCast(sender, ASPxGridView).Columns(colIndex).Visible = False
            Else
                DirectCast(sender, ASPxGridView).Columns(colIndex).Visible = True
            End If

            Dim i As Integer = 0
            Do While i < DirectCast(sender, ASPxGridView).Columns.Count
                If DirectCast(sender, ASPxGridView).Columns(i).Visible Then
                    DirectCast(sender, ASPxGridView).Columns(i).VisibleIndex = i
                End If
                i += 1
            Loop
        End Sub
    End Class
End Namespace
