Option Infer On

Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports System

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ASPxGridView1_CustomCallback(ByVal sender As Object, ByVal e As ASPxGridViewCustomCallbackEventArgs)
        Dim colIndex As Integer = Convert.ToInt32(e.Parameters)
        Dim grid = TryCast(sender, ASPxGridView)

        grid.Columns(colIndex).Visible = Not grid.Columns(colIndex).Visible

        For i As Integer = 0 To grid.Columns.Count - 1
            If grid.Columns(i).Visible Then
                grid.Columns(i).VisibleIndex = i
            End If
        Next i
    End Sub
End Class