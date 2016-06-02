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
        double income = tickCalc(TextBox1.Text, tph);
        Label1.Text = labelMaker(tph);
        Label2.Text = "Money per hour: " + String.Format("{0:C}",income);
        if (!empty(TextBox2.Text) || !empty(TextBox3.Text))
        {
            if (empty(TextBox3.Text))
            {
                Label3.Text = "In one hour, you will have " +
                    String.Format("{0:C}", income + 
                    (Convert.ToDouble(TextBox2.Text) * Convert.ToInt32(RadioButtonList1.SelectedValue)));
            }
            else if (empty(TextBox2.Text)) // no current value
            {
                Label3.Text = "It will take " +
                    6
                    + "hours to reach your goal. Good luck!";
            }
            else // both target and current value
            {

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int tph = tphCalc(DropDownList1.SelectedValue);
        double income = tickCalc(TextBox4.Text, tph);
        Label4.Text = labelMaker(tph);
        Label5.Text = "Research per hour: " + String.Format("{0:N0}", income);
        if (!empty(TextBox5.Text) || !empty(TextBox6.Text))
        {            
            if (empty(TextBox6.Text)) // no target value
            {
                Label6.Text = "In one hour, you will have " +
                    String.Format("{0:N0}", income +
                    (Convert.ToDouble(TextBox5.Text) * Convert.ToInt32(RadioButtonList3.SelectedValue))) +
                    " research";
            }
            else if (empty(TextBox5.Text)) // no current value
            {
                Label6.Text = "It will take " +
                    6
                    + "hours to reach your goal. Good luck!";
            }
            else // both target and current value
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