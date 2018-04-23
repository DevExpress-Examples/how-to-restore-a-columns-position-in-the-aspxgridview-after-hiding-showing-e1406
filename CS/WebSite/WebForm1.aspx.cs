using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
            int colIndex = Convert.ToInt32(e.Parameters);
            if (((ASPxGridView)sender).Columns[colIndex].Visible)
            {
                ((ASPxGridView)sender).Columns[colIndex].Visible = false;
            }
            else
            {
                ((ASPxGridView)sender).Columns[colIndex].Visible = true;
            }

            for (int i = 0; i < ((ASPxGridView)sender).Columns.Count; i++)
            {
                if (((ASPxGridView)sender).Columns[i].Visible)
                    ((ASPxGridView)sender).Columns[i].VisibleIndex = i;
            }
        }
    }
}
