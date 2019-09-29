<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RockConcertBooking.aspx.cs" Inherits="N01378530_assignment1a_Timothy.RockConcertBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book a Rock Concert (ASPX page)</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <%/*
       *<form method="GET" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php" id="form1" runat="server">
        */%>
    <form id="form1" runat="server">
        <section>
            <h1>Please input your name</h1>
            <label>your first name:</label>
            <asp:TextBox runat="server" ID="client_firstname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="client_firstname" EnableClientScript="true" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
        </section>

        <section>
            <h2>Please tell us your age</h2>
            <label>your age:</label>
            <asp:TextBox runat="server" ID="client_age"></asp:TextBox>
            <asp:CompareValidator runat="server" ControlToValidate="client_age" ValueToCompare="18" Operator="GreaterThan" Type="Integer" EnableClientScript="true" ErrorMessage="Please input a valid age. (You should be at least 18)"></asp:CompareValidator>
        </section>
        
        <section>
            <h2>Please choose your favorite rock band first (just for statistics) </h2>
            <label>What is your favorite rock band?</label>
            <div>
                <asp:DropDownList runat="server" ID="client_favorite_rockband">
                    <asp:ListItem Value="" Text="-- Select --"></asp:ListItem>
                    <asp:ListItem Value="Green Day" Text="Green Day"></asp:ListItem>
                    <asp:ListItem Value="AC/DC" Text="AC/DC"></asp:ListItem>
                    <asp:ListItem Value="Queen" Text="Queen"></asp:ListItem>
                    <asp:ListItem Value="Bon Jovi" Text="Bon Jovi"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="client_favorite_rockband" EnableClientScript="true" ErrorMessage="Please choose your favorite rock band"></asp:RequiredFieldValidator>
            </div>
        </section>

        <section>
            <h2>Which rock concert would you like to book?</h2>
            <label>Tips: It's ok if you don't choose any now, you could always come back later.</label>
            <asp:CheckBoxList runat="server" ID="client_rockconcert_interest">
                <asp:ListItem Value="5secondsofsummer" Text="5 Seconds of Summer, Eaton Centre, Toronto, ON - Sept. 24th, 2019"></asp:ListItem>
                <asp:ListItem Value="rocknroll2019" Text="Rock n Roll 2019, 289 Rutherford Rd S, Brampton, ON - Sept. 25th, 2019"></asp:ListItem>
                <asp:ListItem Value="theevilpowers" Text="The Evil Powers, 423 College St, Toronto, ON - Sept. 25th, 2019"></asp:ListItem>
            </asp:CheckBoxList>
        </section>

        <section>
            <h2>Where do you want to sit?</h2>
            <label>Choose your seat:</label>
            <asp:RadioButtonList runat="server" ID="seat_type">
                <asp:ListItem Value="front" Text="Front"></asp:ListItem>
                <asp:ListItem Value="middle" Text="Middle"></asp:ListItem>
                <asp:ListItem Value="back" Text="Back"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="seat_type" EnableCLientScript="true" ErrorMessage="Please choose your seat"></asp:RequiredFieldValidator>
        </section>

        <section>
            <h2>What's your Email?</h2>
            <label>Please input your Email i.e. Ben@example.com</label>
            <asp:TextBox runat="server" ID="client_email"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="client_email" EnableClientScript="true" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator>
            
            <!-- the regular expression pattern is referenced from
               * AUTHOR: Josh Mein
               * DATE ACCESSED: 2009-11-10 19:25
               * SITE: https://stackoverflow.com/questions/1710505/asp-net-email-validator-regex
               * REASON WHY I USE IT: After some simple tests, I found that it is a pattern that can be used correctly. -->
            <asp:RegularExpressionValidator runat="server" ControlToValidate="client_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="true" ErrorMessage="Please enter valid email"></asp:RegularExpressionValidator>
            
        </section>
        
        <section>
            <h2>Summary Section</h2>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
            <div runat="server" id="information_summary"></div>
        </section>

        <section>
            <asp:Button runat="server" Text="submit" />
        </section>
    </form>
</body>
</html>
