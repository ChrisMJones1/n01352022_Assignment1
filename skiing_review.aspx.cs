using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01352022_Assignment1
{
    public partial class skiing_review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ensures that following processes aren't run on the initial load of the url
            if (Page.IsPostBack)
            {
                //revalidates code on server side
                Page.Validate();
                //if validation is successful, we can proceed
                if (Page.IsValid)
                {
                    //Set aside an interger to store the overall score of their review
                    int Review_Overall_Score = 0;
                    //collects the reviewer's name as a string
                    string Reviewer_Full_Name = reviewer_full_name.Text.ToString();
                    //collects the reviewer's email as a string
                    string Reviewer_Email = reviewer_email.Text.ToString();
                    //store the date values as strings
                    string Review_Month_String = review_month.Text.ToString();
                    string Review_Day_String = review_day.Text.ToString();
                    string Review_Year_String = review_year.Text.ToString();
                    //collect the date numbers from the string for display
                    string Review_Month = Review_Month_String.Substring(Review_Month_String.Length - 2);
                    string Review_Day = Review_Day_String.Substring(Review_Day_String.Length - 2);
                    string Review_Year = Review_Year_String.Substring(Review_Year_String.Length - 4);
                    //create a full date string
                    string Review_Full_Date = Review_Month + '/' + Review_Day + '/' + Review_Year;
                    //store the review satisfaction rating as an int
                    int Review_Satisfaction_Rating = Convert.ToInt32(review_satisfaction_rating.Text);
                    //collect the reviewer's choice of whether they would recommend the skii resort to a friend, and store it as a boolean value
                    //to make the assignment of an overall score easier
                    bool Reviewer_Recommend = Boolean.Parse(reviewer_recommend.Text);
                    //collect the reviewer's desire to return and store it as an interger 
                    int Reviewer_Return_Desire_Rating = Convert.ToInt32(reviewer_return_desire_rating.Text);
                    //Start integrating the collected review data into an overall score rating
                    //The overall score directly adds the satisfaction rating score, as it directly correlates with the reviewer's enjoyment of the trip (range 1-5)
                    //The Reviewer's desire to return rating can add or deduct 5 points (range -5 to 5), as users who had a high satisfaction rating with the trip but a low desire to return will need more of a sell to return,
                    //and reviewer's who had a low satisfaction score but a very high desire to return will need less incentive to have a return trip by their own admission in this score rating.
                    //The reviewer's recommendation to a friend will add 1 points if they are willing to refer a friend, and does not add a point if they do not want to. The reasoning behind why not wanting to refer a friend does not subtract any points is that
                    //many users may not be willing to refer a friend because of their views on sharing other people's personal information, which is not reflective on how much they enjoyed their trip.
                    Review_Overall_Score += Review_Satisfaction_Rating + (Reviewer_Return_Desire_Rating - 5) + (Reviewer_Recommend != false ? 1 : 0);
                    //ensure that the Review_Overall_Score conforms to a 1-5 star score
                    //convert the Review_Overall_Score to a 0 if it is lower than 0
                    if (Review_Overall_Score < 0)
                    {
                        Review_Overall_Score = 0;
                    }
                    //Convert the Review_Overall_Score to 5 if it is greater than 5
                    if (Review_Overall_Score > 5)
                    {
                        Review_Overall_Score = 5;
                    }
                    //print the summary of the reviewer's name and date in the thank you message
                    review_overall_rating_box.InnerHtml = "Thank you " + Reviewer_Full_Name + " for your review of your visit to Northern Horseshoe on " + Review_Full_Date + "<br>";
                    //print the reviewer's contact email
                    review_overall_rating_box.InnerHtml += "Your contact address is listed as " + Reviewer_Email + "<br>";
                    //display the review's overall score as a 0-5 star rating
                    review_overall_rating_box.InnerHtml += "We've assessed your overall rating of your experience at Northern Horseshoe as " + Review_Overall_Score + "/5 stars. <br>";
                    //if the score is 0-2/5, display an apology message and offer a 50% discount to try to retain customer losses from the negative experience / lack of desire to return
                    if (Review_Overall_Score <= 2)
                    {
                        review_overall_rating_box.InnerHtml += "We're very sorry you didn't enjoy your experience with us. Please give us another chance to change your mind with a 50% discount on your next trip.";
                    }
                    // if the score is between 3-4, display a message that approves of their score, but offer a 25% discount to encourage the reviewer to overlook their misgivings / increase their desire to return
                    if (Review_Overall_Score >= 3 & Review_Overall_Score <= 4)
                    {
                        review_overall_rating_box.InnerHtml += "We're glad that you enjoyed your trip, but we feel we could still do better. Please enjoy a 25% discount on your next visit as thanks for your input.";
                    }
                    // if the score is 5, thank them for their time and effort filling out the review, and offer a 10% discount on their next trip as thanks for their time filling out the review form and to increase return business.
                    if (Review_Overall_Score == 5)
                    {
                        review_overall_rating_box.InnerHtml += "We're very glad that you greatly enjoyed your trip to Northern Horseshoe. As thanks for your time completing this review, please enjoy a 10% discount on your next visit.";
                    }
                }
            }

        }
    }
}