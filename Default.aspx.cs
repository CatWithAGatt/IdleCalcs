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
        if (empty(TextBox1.Text))
        {
            Label1.Text = "Something's missing!";
            return;
        }
        int tph = tphCalc(DropDownList1.SelectedValue);
        double income = tickCalc(TextBox1.Text, tph);
        Label1.Text = labelMaker(tph);
        Label2.Text = "Money per hour: " + String.Format("{0:C}",income);
        if (!empty(TextBox2.Text) || !empty(TextBox3.Text))
        {
            double radioVal1 = Convert.ToDouble(RadioButtonList1.SelectedValue);
            double radioVal2 = Convert.ToDouble(RadioButtonList2.SelectedValue);
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
                    + " hours and " +
                    mins(boxTwo, boxThree, radioVal1, radioVal2, income) +
                    " minutes to reach your goal. Good luck!";

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (empty(TextBox4.Text))
        {
            Label4.Text = "Something's missing!";
            return;
        }
        int tph = tphCalc(DropDownList1.SelectedValue);
        double income = tickCalc(TextBox4.Text, tph);
        Label4.Text = labelMaker(tph);
        Label5.Text = "Research per hour: " + String.Format("{0:N0}", income);
        if (!empty(TextBox5.Text) || !empty(TextBox6.Text))
        {
            double radioVal3 = Convert.ToDouble(RadioButtonList3.SelectedValue);
            double radioVal4 = Convert.ToDouble(RadioButtonList4.SelectedValue);
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
                    + " hours and " + 
                    mins(boxFive, boxSix, radioVal3, radioVal4, income) +
                    " minutes to reach your goal. Good luck!";
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
    protected String hours(double box, double radio, double inc)
    {
        return String.Format("{0:N2}", (box * radio) / inc);
    }
    protected String goals(double box1, double box2, double radio1, double radio2, double inc)
    {
        return String.Format("{0:N0}", ((box2 * radio2) - (box1 * radio1)) / inc);
    }
    protected String mins(double box1, double box2, double radio1, double radio2, double inc)
    {
        return String.Format("{0:N0}", (((box2 * radio2) - (box1 * radio1)) / inc) % 60);
    }
}