<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RockConcertBooking.aspx.cs" Inherits="N01378530_assignment1a_Timothy.RockConcertBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book a Rock Concert (ASPX page)</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form method="GET" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php" id="form1" runat="server">
        <section>
            <h1>Please input your name</h1>
            <label>your first name:</label>
            <asp:TextBox runat="server" ID="client_firstname"></asp:TextBox>
        </section>
        
        <section>
            <h2>Please choose your favorite rock band first (just for statistics) </h2>
            <label>What is your favorite rock band?</label>
            <div>
                <asp:DropDownList runat="server" ID="client_favorite_rockband">
                    <asp:ListItem Value="greenday" Text="Green Day"></asp:ListItem>
                    <asp:ListItem Value="acdc" Text="AC/DC"></asp:ListItem>
                    <asp:ListItem Value="queen" Text="Queen"></asp:ListItem>
                    <asp:ListItem Value="bonjovi" Text="Bon Jovi"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </section>

        <section>
            <h2>Which rock concert would you like to book?</h2>
            <asp:CheckBoxList runat="server" ID="client_rockconcert">
                <asp:ListItem Value="5secondsofsummer" Text="5 Seconds of Summer - Sept. 24th, 2019"></asp:ListItem>
                <asp:ListItem Value="rocknroll2019" Text="Rock n Roll 2019 - Sept. 25th, 2019"></asp:ListItem>
                <asp:ListItem Value="theevilpowers" Text="The Evil Powers - Sept. 25th, 2019"></asp:ListItem>
            </asp:CheckBoxList>
        </section>

        <section>
            <h2>Where do you want to sit?</h2>
            <label>Choose your seat:</label>
            <asp:RadioButtonList runat="server" ID="seat_option">
                <asp:ListItem Value="front" Text="Front"></asp:ListItem>
                <asp:ListItem Value="middle" Text="Middle"></asp:ListItem>
                <asp:ListItem Value="back" Text="Back"></asp:ListItem>
            </asp:RadioButtonList>
        </section>

        <section>
            <asp:Button runat="server" Text="submit" />
        </section>
    </form>
</body>
</html>
