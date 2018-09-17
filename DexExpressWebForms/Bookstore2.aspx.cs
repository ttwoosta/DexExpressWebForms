using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class Bookstore2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {

    }

    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {

    }

    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {

    }

    protected void ASPxGridView1_HtmlEditFormCreated(object sender, DevExpress.Web.ASPxGridViewEditFormEventArgs e)
    {
        Table table = (Table)e.EditForm.Controls[0];
        //e.EditForm.Controls[0].Controls.Add(table);

        ASPxLabel label = new ASPxLabel();
        label.Text = "Product name";
        table.Rows[0].Cells[0].Controls.Add(label);

        ASPxTextBox tb = new ASPxTextBox();
        tb.ID = "tbProductName";
        tb.Value = "Custom value";
        table.Rows[0].Cells[0].Controls.Add(tb);

        /*ASPxSpinEdit spin = new ASPxSpinEdit();
        spin.ID = "spinUnitPrice";
        //spin.CssFilePath = @"~/App_Themes/Soft Orange/{0}/styles.css";
        //spin.CssPostfix = "Soft_Orange";
        //spin.Value = DataBinder.Eval((container as
        //     GridViewEditFormTemplateContainer).DataItem, "UnitPrice");
        table.Rows[0].Cells[1].Controls.Add(spin);

        ASPxGridViewTemplateReplacement tr = new ASPxGridViewTemplateReplacement();
        tr.ReplacementType = GridViewTemplateReplacementType.EditFormUpdateButton;
        table.Rows[1].Cells[2].Controls.Add(tr);
        Literal separator = new Literal();
        separator.Text = " | ";
        table.Rows[1].Cells[2].Controls.Add(separator);
        tr = new ASPxGridViewTemplateReplacement();
        tr.ReplacementType = GridViewTemplateReplacementType.EditFormCancelButton;
        table.Rows[1].Cells[2].Controls.Add(tr);*/

    }

    Table CreateHtmlTable()
    {
        Table table = new Table();
        table.Rows.Add(new TableRow());
        table.Rows[0].Cells.AddRange(new TableCell[] { new TableCell(),
                                                       new TableCell(),
                                                       new TableCell()});
        table.Rows.Add(new TableRow());
        table.Rows[1].Cells.AddRange(new TableCell[] { new TableCell(),
                                                       new TableCell(),
                                                       new TableCell()});
        return table;
    }

}