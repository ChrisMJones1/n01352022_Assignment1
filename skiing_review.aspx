<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skiing_review.aspx.cs" Inherits="n01352022_Assignment1.skiing_review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Northern Horseshoe Discount Skiing Review Form</title>
</head>
<body>
    <header>
        <h1>Northern Horseshoe Discount Skiing Review Form</h1>
        <p><i>Est. 2000</i></p>
    </header>
    <form id="ski_review_form" runat="server">
        <main>
            <div class="contact_info">
                <section>
                    <h2>Contact Information</h2>
                    <label for="reviewer_full_name">Please enter your name:</label>
                    <div>
                        <asp:TextBox runat="server" ID="reviewer_full_name" placeholder="enter your name" ></asp:TextBox>
                        <%-- Check that the reviewer actually enters text into the name field --%>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your name" ControlToValidate="reviewer_full_name" ></asp:RequiredFieldValidator>
                    </div>
                    <label for="reviewer_email">Please enter an email address where you may be reached:</label>
                    <div>
                        <asp:TextBox runat="server" ID="reviewer_email" placeholder="enter your email" ></asp:TextBox>
                        <%-- Validates that something was inputted into the email field --%>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_email" ErrorMessage="Please enter an email address" Display="Dynamic" ></asp:RequiredFieldValidator>
                        <%-- The following regular expression for validating email addresses was created by Steven Levithan and Jan Goyvaert for "Regular Expression cookbook, 2nd edition", chapter 4, section 1, and was accessed on September 24, 2019 from the web address https://www.oreilly.com/library/view/regular-expressions-cookbook/9781449327453/ch04s01.html. --%>
                        <%-- This regular expression validates that there is some amount of alphanumeric characters followed by an @ symbol, followed by more alphanumeric characters. --%>
                        <%-- This regular expression has been modified by Christopher Jones to be case insensitive by appending "(?i)" to the beginning of the regular expression --%>
                        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_email" ValidationExpression="(?i)^[A-Z0-9+_.-]+@[A-Z0-9.-]+$" ErrorMessage="Please enter a valid email address" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:CheckBoxList runat="server" ID="reviewer_subscribe_newsletter" >
                            <asp:ListItem Text="Would you like to subscribe to our newsletter for exclusive news and discounts?" Value="reviewer_subscribe_newsletter" ></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </section>
            </div>
            <div class="customer_experience">
                <section>
                    <h2>Customer experience</h2>
                    <h3>Please select the date of your skiing experience at Northern Horseshoe:</h3>
                    <asp:DropDownList runat="server" ID="review_month" >
                        <asp:ListItem Text="Month" Value="" ></asp:ListItem>
                        <asp:ListItem Text="January" Value="review_month_01" ></asp:ListItem>
                        <asp:ListItem Text="February" Value="review_month_02" ></asp:ListItem>
                        <asp:ListItem Text="March" Value="review_month_03" ></asp:ListItem>
                        <asp:ListItem Text="April" Value="review_month_04" ></asp:ListItem>
                        <asp:ListItem Text="May" Value="review_month_05" ></asp:ListItem>
                        <asp:ListItem Text="June" Value="review_month_06" ></asp:ListItem>
                        <asp:ListItem Text="July" Value="review_month_07" ></asp:ListItem>
                        <asp:ListItem Text="August" Value="review_month_08" ></asp:ListItem>
                        <asp:ListItem Text="September" Value="review_month_09" ></asp:ListItem>
                        <asp:ListItem Text="October" Value="review_month_10" ></asp:ListItem>
                        <asp:ListItem Text="November" Value="review_month_11" ></asp:ListItem>
                        <asp:ListItem Text="December" Value="review_month_12" ></asp:ListItem>
                    </asp:DropDownList>
                    <%-- Validate a month selection input --%>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a month" ControlToValidate="review_month" ></asp:RequiredFieldValidator>
                    <asp:DropDownList runat="server" ID="review_day" >
                        <asp:ListItem Text="Day" Value="" ></asp:ListItem>
                        <asp:ListItem Text="1" Value="review_day_01" ></asp:ListItem>
                        <asp:ListItem Text="2" Value="review_day_02" ></asp:ListItem>
                        <asp:ListItem Text="3" Value="review_day_03" ></asp:ListItem>
                        <asp:ListItem Text="4" Value="review_day_04" ></asp:ListItem>
                        <asp:ListItem Text="5" Value="review_day_05" ></asp:ListItem>
                        <asp:ListItem Text="6" Value="review_day_06" ></asp:ListItem>
                        <asp:ListItem Text="7" Value="review_day_07" ></asp:ListItem>
                        <asp:ListItem Text="8" Value="review_day_08" ></asp:ListItem>
                        <asp:ListItem Text="9" Value="review_day_09" ></asp:ListItem>
                        <asp:ListItem Text="10" Value="review_day_10" ></asp:ListItem>
                        <asp:ListItem Text="11" Value="review_day_11" ></asp:ListItem>
                        <asp:ListItem Text="12" Value="review_day_12" ></asp:ListItem>
                        <asp:ListItem Text="13" Value="review_day_13" ></asp:ListItem>
                        <asp:ListItem Text="14" Value="review_day_14" ></asp:ListItem>
                        <asp:ListItem Text="15" Value="review_day_15" ></asp:ListItem>
                        <asp:ListItem Text="16" Value="review_day_16" ></asp:ListItem>
                        <asp:ListItem Text="17" Value="review_day_17" ></asp:ListItem>
                        <asp:ListItem Text="18" Value="review_day_18" ></asp:ListItem>
                        <asp:ListItem Text="19" Value="review_day_19" ></asp:ListItem>
                        <asp:ListItem Text="20" Value="review_day_20" ></asp:ListItem>
                        <asp:ListItem Text="21" Value="review_day_21" ></asp:ListItem>
                        <asp:ListItem Text="22" Value="review_day_22" ></asp:ListItem>
                        <asp:ListItem Text="23" Value="review_day_23" ></asp:ListItem>
                        <asp:ListItem Text="24" Value="review_day_24" ></asp:ListItem>
                        <asp:ListItem Text="25" Value="review_day_25" ></asp:ListItem>
                        <asp:ListItem Text="26" Value="review_day_26" ></asp:ListItem>
                        <asp:ListItem Text="27" Value="review_day_27" ></asp:ListItem>
                        <asp:ListItem Text="28" Value="review_day_28" ></asp:ListItem>
                        <asp:ListItem Text="29" Value="review_day_29" ></asp:ListItem>
                        <asp:ListItem Text="30" Value="review_day_30" ></asp:ListItem>
                        <asp:ListItem Text="31" Value="review_day_31" ></asp:ListItem>
                    </asp:DropDownList>
                        <%-- Validate a day selection --%>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a day" ControlToValidate="review_day" ></asp:RequiredFieldValidator>
                    <asp:DropDownList runat="server" ID="review_year" >
                        <asp:ListItem Text="Year" Value="" ></asp:ListItem>
                        <asp:ListItem Text="2000" Value="review_year_2000" ></asp:ListItem>
                        <asp:ListItem Text="2001" Value="review_year_2001" ></asp:ListItem>
                        <asp:ListItem Text="2002" Value="review_year_2002" ></asp:ListItem>
                        <asp:ListItem Text="2003" Value="review_year_2003" ></asp:ListItem>
                        <asp:ListItem Text="2004" Value="review_year_2004" ></asp:ListItem>
                        <asp:ListItem Text="2005" Value="review_year_2005" ></asp:ListItem>
                        <asp:ListItem Text="2006" Value="review_year_2006" ></asp:ListItem>
                        <asp:ListItem Text="2007" Value="review_year_2007" ></asp:ListItem>
                        <asp:ListItem Text="2008" Value="review_year_2008" ></asp:ListItem>
                        <asp:ListItem Text="2009" Value="review_year_2009" ></asp:ListItem>
                        <asp:ListItem Text="2010" Value="review_year_2010" ></asp:ListItem>
                        <asp:ListItem Text="2011" Value="review_year_2011" ></asp:ListItem>
                        <asp:ListItem Text="2012" Value="review_year_2012" ></asp:ListItem>
                        <asp:ListItem Text="2013" Value="review_year_2013" ></asp:ListItem>
                        <asp:ListItem Text="2014" Value="review_year_2014" ></asp:ListItem>
                        <asp:ListItem Text="2015" Value="review_year_2015" ></asp:ListItem>
                        <asp:ListItem Text="2016" Value="review_year_2016" ></asp:ListItem>
                        <asp:ListItem Text="2017" Value="review_year_2017" ></asp:ListItem>
                        <asp:ListItem Text="2018" Value="review_year_2018" ></asp:ListItem>
                        <asp:ListItem Text="2019" Value="review_year_2019" ></asp:ListItem>
                    </asp:DropDownList>
                    <%-- Validate a year selection --%>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a year" ControlToValidate="review_year" ></asp:RequiredFieldValidator>
                </section>
                <section>
                    <h3>Rate your satisfaction out of 5:</h3>
                    <div>
                        <asp:RadioButtonList runat="server" ID="review_satisfaction_rating" >
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        </asp:RadioButtonList>
                        <%-- Validate that a rating is selected --%>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a rating" ControlToValidate="review_satisfaction_rating" ></asp:RequiredFieldValidator>
                    </div>
                </section>
                <section>
                    <h3>Please select which aspects of your experience you felt could be improved (select all that apply):</h3>
                    <asp:CheckBoxList runat="server" ID="review_improve" >
                        <asp:ListItem Text="Transportation to Ski Chalet" Value="review_improve_transportation" ></asp:ListItem>
                        <asp:ListItem Text="Check In" Value="review_improve_checkin" ></asp:ListItem>
                        <asp:ListItem Text="Ski Lifts" Value="review_improve_ski_lifts" ></asp:ListItem>
                        <asp:ListItem Text="Ski Slopes" Value="review_improve_ski_slopes" ></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <h3>Would you recommend Northern Horseshoe Discount Skiing to a friend?</h3>
                    <asp:RadioButtonList runat="server" ID="reviewer_recommend" >
                        <asp:ListItem Text="Yes!" Value="true" ></asp:ListItem>
                        <asp:ListItem Text="No" Value="false" ></asp:ListItem>
                    </asp:RadioButtonList>
                    <%-- Make the user select a recommendation option --%>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a recommendation option" ControlToValidate="reviewer_recommend" ></asp:RequiredFieldValidator>
                </section>
                <section>
                    <label for="reviewer_return_desire_rating">Rate your desire to return to Northern Horseshoe on a scale from 0-10:</label>
                    <div>
                        <asp:TextBox runat="server" ID="reviewer_return_desire_rating" placeholder="0-10" ></asp:TextBox>
                        <%-- Ensure that the textbox isn't left blank --%>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_return_desire_rating" ErrorMessage="Please enter a return desire rating number (0-10)" Display="Dynamic" ></asp:RequiredFieldValidator>
                        <%-- Validate that the reviewer inputs a number from 0-10 --%>
                        <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_return_desire_rating" ErrorMessage="Please enter a rating from 0-10" MinimumValue="0" MaximumValue="10" Type="Integer" ></asp:RangeValidator>
                    </div>
                </section>
                <section>
                    <label for="reviewer_additional_comments">Please enter any additional comments here:</label>
                    <div>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="reviewer_additional_comments" placeholder="Please enter additional comments here (max length 1000 characters)" MaxLength="1000" ></asp:TextBox>
                    </div>
                </section>
            </div>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
            <section id="review_overall_rating_box" runat="server">

            </section>
            <section>
                <div>
                    <asp:Button runat="server" Text="submit" />
                </div>
            </section>
        </main>
    </form>
</body>
</html>
