<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Idle Calcs | Factory Calculator</title>
    <style type="text/css">
        body {
            font-family: Arial,sans-serif;
            color: #E0E0E0;
            background-color: #202020;
            margin: auto;
            width: 80%;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        h2 {
            text-decoration: underline;
        }
        #right {
            float:right;
            display:inline;
            text-align:right;
            margin-left: 40px;
        }
        #left {
            float:left;
        }
        .radioButtonList {
            float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Idle Calcs</h1>
        <div style="text-align:center;">
        <p>Ticks per second</p>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br /><br />
        <div id="right">
            <h2>Money</h2>
            <p>Money Income per tick </p>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <p>Current Money (optional)</p>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />            
            <asp:RadioButtonList ID="RadioButtonList1" CssClass="radioButtonList" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                <asp:ListItem Value="1000000">Million</asp:ListItem>
                <asp:ListItem Value="1000000000">Billion</asp:ListItem>
            </asp:RadioButtonList><br />
            <p>Target Money (optional)</p>
            <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:RadioButtonList ID="RadioButtonList2" CssClass="radioButtonList" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                <asp:ListItem Value="1000000">Million</asp:ListItem>
                <asp:ListItem Value="1000000000">Billion</asp:ListItem>
            </asp:RadioButtonList><br /><br />
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Calculate Money" OnClick="Button1_Click" /><br /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
        <div id="left" aria-autocomplete="both">
            <h2>Research</h2>
            <p>Research Income per tick </p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <p>Current Research (optional)</p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                <asp:ListItem Value="1000000">Million</asp:ListItem>
                <asp:ListItem Value="1000000000">Billion</asp:ListItem>
            </asp:RadioButtonList>
            <p>Target Research (optional)</p>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                <asp:ListItem Value="1000000">Million</asp:ListItem>
                <asp:ListItem Value="1000000000">Billion</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />            
            <asp:Button ID="Button2" runat="server" Text="Calculate Research" OnClick="Button2_Click" /><br /><br />
            <asp:Label ID="Label4" runat="server"></asp:Label><br />
            <asp:Label ID="Label5" runat="server"></asp:Label><br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </div>        
    </div>
    </form>
</body>
</html>