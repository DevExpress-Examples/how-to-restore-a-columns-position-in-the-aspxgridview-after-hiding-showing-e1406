Imports Microsoft.VisualBasic
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
			If (CType(sender, ASPxGridView)).Columns(colIndex).Visible Then
				CType(sender, ASPxGridView).Columns(colIndex).Visible = False
			Else
				CType(sender, ASPxGridView).Columns(colIndex).Visible = True
			End If

			For i As Integer = 0 To (CType(sender, ASPxGridView)).Columns.Count - 1
				If (CType(sender, ASPxGridView)).Columns(i).Visible Then
					CType(sender, ASPxGridView).Columns(i).VisibleIndex = i
				End If
			Next i
		End Sub
	End Class
End Namespace
