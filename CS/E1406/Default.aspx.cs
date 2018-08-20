using DevExpress.Web;
using DevExpress.Web.ASPxGridView;
using System;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxGridView1_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e) {
        int colIndex = Convert.ToInt32(e.Parameters);
        var grid = sender as ASPxGridView;

        grid.Columns[colIndex].Visible = !grid.Columns[colIndex].Visible;

        for (int i = 0; i < grid.Columns.Count; i++) {
            if (grid.Columns[i].Visible)
                grid.Columns[i].VisibleIndex = i;
        }
    }
}