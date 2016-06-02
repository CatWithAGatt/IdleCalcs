<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Idle Calcs | Factory Calculator</title>
    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></scr>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <style type="text/css">        body {
            background-color: #202020; 
            font-family: Arial,sans-serif;            
        }
        h1, h2, p {
            color: #E0E0E0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <div style="text-align:center; padding-top:20px;">
        <h1>Idle Calcs</h1>
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
        <br />
        <div class="row" style="margin:auto; width:80%;">
            <div class="col-sm-6" style="align-content:center;">
                <h2>Money</h2>
                <p>Money Income per tick </p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <p>Current Money (optional)</p>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <br />            
                <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server" RepeatColumns="3" ForeColor="#E0E0E0" >
                    <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                    <asp:ListItem Value="1000000">Million</asp:ListItem>
                    <asp:ListItem Value="1000000000">Billion</asp:ListItem>
                    <asp:ListItem Value="1000000000000">Trillion</asp:ListItem>
                    <asp:ListItem Value="1000000000000000">Quadrillion</asp:ListItem>
                </asp:RadioButtonList>
                <p>Target Money (optional)</p>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <br />
                <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server" RepeatColumns="3" ForeColor="#E0E0E0" >
                    <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                    <asp:ListItem Value="1000000">Million</asp:ListItem>
                    <asp:ListItem Value="1000000000">Billion</asp:ListItem>
                    <asp:ListItem Value="1000000000000">Trillion</asp:ListItem>
                    <asp:ListItem Value="1000000000000000">Quadrillion</asp:ListItem>
                </asp:RadioButtonList>
                <br /><br />
                <asp:Button ID="Button1" runat="server" Text="Calculate Money" OnClick="Button1_Click" ForeColor="Black" Font-Bold="True" /><br /><br />
                <asp:Label ID="Label1" runat="server" ForeColor="#E0E0E0"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" ForeColor="#E0E0E0"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" ForeColor="#E0E0E0"></asp:Label>
            </div>
            <div class="col-sm-6" style="align-content:center;" aria-autocomplete="both">
                <h2>Research</h2>
                <p>Research Income per tick </p>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <p>Current Research (optional)</p>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server" RepeatColumns="3" ForeColor="#E0E0E0">
                    <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                    <asp:ListItem Value="1000000">Million</asp:ListItem>
                    <asp:ListItem Value="1000000000">Billion</asp:ListItem>
                    <asp:ListItem Value="1000000000000">Trillion</asp:ListItem>
                    <asp:ListItem Value="1000000000000000">Quadrillion</asp:ListItem>
                </asp:RadioButtonList>
                <p>Target Research (optional)</p>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter a numerical value" Type="Double" Operator="DataTypeCheck" ForeColor="#FF5050"></asp:CompareValidator>
                <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server" RepeatColumns="3" ForeColor="#E0E0E0">
                    <asp:ListItem Selected="True" Value="1000">Thousand</asp:ListItem>
                    <asp:ListItem Value="1000000">Million</asp:ListItem>
                    <asp:ListItem Value="1000000000">Billion</asp:ListItem>
                    <asp:ListItem Value="1000000000000">Trillion</asp:ListItem>
                    <asp:ListItem Value="1000000000000000">Quadrillion</asp:ListItem>
                </asp:RadioButtonList>
                <br /><br />            
                <asp:Button ID="Button2" runat="server" Text="Calculate Research" OnClick="Button2_Click" ForeColor="Black" Font-Bold="True" /><br /><br />
                <asp:Label ID="Label4" runat="server" ForeColor="#E0E0E0"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" ForeColor="#E0E0E0"></asp:Label><br />
                <asp:Label ID="Label6" runat="server" ForeColor="#E0E0E0"></asp:Label>
            </div>        
    </div>
    </form>
</body>
</html>