using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int tph = tphCalc(DropDownList1.SelectedValue);
        Label1.Text = labelMaker(tph);
        Label2.Text = "Money per hour: " + String.Format("{0:C}",tickCalc(TextBox1.Text, tph));
        Label3.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int tph = tphCalc(DropDownList1.SelectedValue);
        Label4.Text = labelMaker(tph);
        Label5.Text = "Research per hour: " + String.Format("{0:N0}", tickCalc(TextBox4.Text, tph));
        if (empty(TextBox5.Text))
        {
            if (!empty(TextBox6.Text))
            {

            }
        }
            
    }
    // Calculate total number of ticks times income
    protected double tickCalc(String inc, int ticks)
    {
        return Convert.ToDouble(inc) * ticks;
    }
    // Calculate ticks per hour
    protected int tphCalc(String ticks)
    {
        return Convert.ToInt16(ticks) * 60 * 60;
    }
    // Output for ticks in an hour calculation
    protected String labelMaker(int ticks)
    {
        return "Ticks per hour: " + String.Format("{0:N0}", ticks);
    }
    protected bool empty(String box)
    {
        return box == String.Empty;
    }
}