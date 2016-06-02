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
            int radioVal1 = Convert.ToInt32(RadioButtonList1.SelectedValue);
            int radioVal2 = Convert.ToInt32(RadioButtonList2.SelectedValue);
            if (empty(TextBox3.Text))
            {
                double boxTwo = Convert.ToDouble(TextBox2.Text);
                Label3.Text = "In one hour, you will have " +
                    String.Format("{0:C}", income + 
                    (boxTwo * radioVal1));
            }
            else if (empty(TextBox2.Text)) // no current value
            {
                double boxThree = Convert.ToDouble(TextBox3.Text);
                Label3.Text = "It will take about " +
                    hours(boxThree, radioVal2, income)
                    + " hours to get much money";
            }
            else // both target and current value
            {
                double boxThree = Convert.ToDouble(TextBox3.Text);
                double boxTwo = Convert.ToDouble(TextBox2.Text);
                Label3.Text = "It will take about " +
                    goals(boxTwo, boxThree, radioVal1, radioVal2, income)
                    + " hours to reach your goal. Good luck!";

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
            int radioVal3 = Convert.ToInt32(RadioButtonList3.SelectedValue);
            int radioVal4 = Convert.ToInt32(RadioButtonList4.SelectedValue);
            if (empty(TextBox6.Text)) // no target value
            {
                double boxFive = Convert.ToDouble(TextBox5.Text);
                Label6.Text = "In one hour, you will have " +
                    String.Format("{0:N0}", income +
                    (boxFive * radioVal3)) +
                    " research";
            }
            else if (empty(TextBox5.Text)) // no current value
            {
                double boxSix = Convert.ToDouble(TextBox6.Text);
                Label6.Text = "It will take about " +
                    hours(boxSix, radioVal4, income)
                    + " hours to reach get that much research";
            }
            else // both target and current value
            {
                double boxFive = Convert.ToDouble(TextBox5.Text);
                double boxSix = Convert.ToDouble(TextBox6.Text);
                Label6.Text = "It will take about " +
                    goals(boxFive, boxSix, radioVal3, radioVal4, income)
                    + " hours to reach your goal. Good luck!";
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
    protected String hours(double box, int radio, double inc)
    {
        return String.Format("{0:N2}", (box * radio) / inc);
    }
    protected String goals(double box1, double box2, int radio1, int radio2, double inc)
    {
        return String.Format("{0:N2}", ((box2 * radio2) - (box1 * radio1)) / inc);
    }
}