using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Orders : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridInvoice_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow row = gridInvoice.Rows[e.NewEditIndex];
        TableCellCollection cells = row.Cells;

    }
}