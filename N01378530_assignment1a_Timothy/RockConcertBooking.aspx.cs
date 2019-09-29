using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01378530_assignment1a_Timothy
{
    public partial class RockConcertBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the page is post back
            if (Page.IsPostBack)
            {
                // re-validate the page
                Page.Validate();

                // if the page is validated OK
                if (Page.IsValid)
                {
                    // == variables ==
                    string ClientFirstname = client_firstname.Text;
                    int ClientAge = Convert.ToInt32(client_age.Text);
                    string ClientFavoriteRockband = client_favorite_rockband.SelectedValue;
                    // string ClientRockconcertInterest = client_rockconcert_interest.SelectedValue;
                    string SeatType = seat_type.SelectedValue;
                    string ClientEmail = client_email.Text;

                    // the place to put determined cost
                    information_summary.InnerHtml = "";

                    // determined rock concert cost
                    double RockConcertCost = 0;

                    switch (SeatType)
                    {
                        case "front":
                            RockConcertCost += 200;
                            break;
                        case "middle":
                            RockConcertCost += 150;
                            break;
                        case "back":
                            RockConcertCost += 100;
                            break;
                    }

                    // HST (didn't use a new variable)
                    RockConcertCost *= 1.3;

                    information_summary.InnerHtml += "Your first name is: " + ClientFirstname + "<br>"; 
                    information_summary.InnerHtml += "Your age is: " + ClientAge.ToString();
                    // a little joke here...
                    if (ClientAge > 200)
                    {
                        information_summary.InnerHtml += " (can your heart stand for a rock concert?)<br>";
                    }
                    else
                    {
                        information_summary.InnerHtml += "<br>";
                    }
                    information_summary.InnerHtml += "Your favorite rockband is: " + ClientFavoriteRockband + "<br>"; 
                    information_summary.InnerHtml += "Your seat type is: " + SeatType + "<br>"; 
                    information_summary.InnerHtml += "Your email address is: " + ClientEmail + "<br>";

                    // use ToString("c") to display the value as a valid currency
                    information_summary.InnerHtml += "Your total price is: " + RockConcertCost.ToString("c");

                }
            }
        }
    }
}