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
                    <label for="aspx_review_full_name">Please enter your name:</label>
                    <div>
                        <asp:TextBox runat="server" ID="aspx_review_full_name" placeholder="enter your name" ></asp:TextBox>
                    </div>
                    <label for="aspx_review_email">Please enter an email address where you may be reached:</label>
                    <div>
                        <asp:TextBox runat="server" ID="aspx_review_email" placeholder="enter your email" ></asp:TextBox>
                    </div>
                    <div>
                        <asp:CheckBoxList runat="server" ID="aspx_review_subscribe_newsletter" >
                            <asp:ListItem Text="Would you like to subscribe to our newsletter for exclusive news and discounts?" Value="aspx_review_subscribe_newsletter" ></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </section>
            </div>
            <div class="customer_experience">
                <section>
                    <h2>Customer experience</h2>
                    <h3>Please select the date of your skiing experience at Northern Horseshoe:</h3>
                    <asp:DropDownList runat="server" ID="aspx_review_month" >
                        <asp:ListItem Text="January" Value="aspx_review_month_01" ></asp:ListItem>
                        <asp:ListItem Text="February" Value="aspx_review_month_02" ></asp:ListItem>
                        <asp:ListItem Text="March" Value="aspx_review_month_03" ></asp:ListItem>
                        <asp:ListItem Text="April" Value="aspx_review_month_04" ></asp:ListItem>
                        <asp:ListItem Text="May" Value="aspx_review_month_05" ></asp:ListItem>
                        <asp:ListItem Text="June" Value="aspx_review_month_06" ></asp:ListItem>
                        <asp:ListItem Text="July" Value="aspx_review_month_07" ></asp:ListItem>
                        <asp:ListItem Text="August" Value="aspx_review_month_08" ></asp:ListItem>
                        <asp:ListItem Text="September" Value="aspx_review_month_09" ></asp:ListItem>
                        <asp:ListItem Text="October" Value="aspx_review_month_10" ></asp:ListItem>
                        <asp:ListItem Text="November" Value="aspx_review_month_11" ></asp:ListItem>
                        <asp:ListItem Text="December" Value="aspx_review_month_12" ></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList runat="server" ID="aspx_review_day" >
                        <asp:ListItem Text="1" Value="aspx_review_day_01" ></asp:ListItem>
                        <asp:ListItem Text="2" Value="aspx_review_day_02" ></asp:ListItem>
                        <asp:ListItem Text="3" Value="aspx_review_day_03" ></asp:ListItem>
                        <asp:ListItem Text="4" Value="aspx_review_day_04" ></asp:ListItem>
                        <asp:ListItem Text="5" Value="aspx_review_day_05" ></asp:ListItem>
                        <asp:ListItem Text="6" Value="aspx_review_day_06" ></asp:ListItem>
                        <asp:ListItem Text="7" Value="aspx_review_day_07" ></asp:ListItem>
                        <asp:ListItem Text="8" Value="aspx_review_day_08" ></asp:ListItem>
                        <asp:ListItem Text="9" Value="aspx_review_day_09" ></asp:ListItem>
                        <asp:ListItem Text="10" Value="aspx_review_day_10" ></asp:ListItem>
                        <asp:ListItem Text="11" Value="aspx_review_day_11" ></asp:ListItem>
                        <asp:ListItem Text="12" Value="aspx_review_day_12" ></asp:ListItem>
                        <asp:ListItem Text="13" Value="aspx_review_day_13" ></asp:ListItem>
                        <asp:ListItem Text="14" Value="aspx_review_day_14" ></asp:ListItem>
                        <asp:ListItem Text="15" Value="aspx_review_day_15" ></asp:ListItem>
                        <asp:ListItem Text="16" Value="aspx_review_day_16" ></asp:ListItem>
                        <asp:ListItem Text="17" Value="aspx_review_day_17" ></asp:ListItem>
                        <asp:ListItem Text="18" Value="aspx_review_day_18" ></asp:ListItem>
                        <asp:ListItem Text="19" Value="aspx_review_day_19" ></asp:ListItem>
                        <asp:ListItem Text="20" Value="aspx_review_day_20" ></asp:ListItem>
                        <asp:ListItem Text="21" Value="aspx_review_day_21" ></asp:ListItem>
                        <asp:ListItem Text="22" Value="aspx_review_day_22" ></asp:ListItem>
                        <asp:ListItem Text="23" Value="aspx_review_day_23" ></asp:ListItem>
                        <asp:ListItem Text="24" Value="aspx_review_day_24" ></asp:ListItem>
                        <asp:ListItem Text="25" Value="aspx_review_day_25" ></asp:ListItem>
                        <asp:ListItem Text="26" Value="aspx_review_day_26" ></asp:ListItem>
                        <asp:ListItem Text="27" Value="aspx_review_day_27" ></asp:ListItem>
                        <asp:ListItem Text="28" Value="aspx_review_day_28" ></asp:ListItem>
                        <asp:ListItem Text="29" Value="aspx_review_day_29" ></asp:ListItem>
                        <asp:ListItem Text="30" Value="aspx_review_day_30" ></asp:ListItem>
                        <asp:ListItem Text="31" Value="aspx_review_day_31" ></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList runat="server" ID="aspx_review_year" >
                        <asp:ListItem Text="2000" Value="aspx_review_year_2000" ></asp:ListItem>
                        <asp:ListItem Text="2001" Value="aspx_review_year_2001" ></asp:ListItem>
                        <asp:ListItem Text="2002" Value="aspx_review_year_2002" ></asp:ListItem>
                        <asp:ListItem Text="2003" Value="aspx_review_year_2003" ></asp:ListItem>
                        <asp:ListItem Text="2004" Value="aspx_review_year_2004" ></asp:ListItem>
                        <asp:ListItem Text="2005" Value="aspx_review_year_2005" ></asp:ListItem>
                        <asp:ListItem Text="2006" Value="aspx_review_year_2006" ></asp:ListItem>
                        <asp:ListItem Text="2007" Value="aspx_review_year_2007" ></asp:ListItem>
                        <asp:ListItem Text="2008" Value="aspx_review_year_2008" ></asp:ListItem>
                        <asp:ListItem Text="2009" Value="aspx_review_year_2009" ></asp:ListItem>
                        <asp:ListItem Text="2010" Value="aspx_review_year_2010" ></asp:ListItem>
                        <asp:ListItem Text="2011" Value="aspx_review_year_2011" ></asp:ListItem>
                        <asp:ListItem Text="2012" Value="aspx_review_year_2012" ></asp:ListItem>
                        <asp:ListItem Text="2013" Value="aspx_review_year_2013" ></asp:ListItem>
                        <asp:ListItem Text="2014" Value="aspx_review_year_2014" ></asp:ListItem>
                        <asp:ListItem Text="2015" Value="aspx_review_year_2015" ></asp:ListItem>
                        <asp:ListItem Text="2016" Value="aspx_review_year_2016" ></asp:ListItem>
                        <asp:ListItem Text="2017" Value="aspx_review_year_2017" ></asp:ListItem>
                        <asp:ListItem Text="2018" Value="aspx_review_year_2018" ></asp:ListItem>
                        <asp:ListItem Text="2019" Value="aspx_review_year_2019" ></asp:ListItem>
                    </asp:DropDownList>
                </section>
                <section>
                    <h3>Rate your satisfaction out of 5:</h3>
                    <div>
                        <asp:RadioButtonList runat="server" ID="aspx_review_rating" >
                            <asp:ListItem Text="1" Value="aspx_review_rating_1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="aspx_review_rating_2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="aspx_review_rating_3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="aspx_review_rating_4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="aspx_review_rating_5"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </section>
                <section>
                    <h3>Please select which aspects of your experience you felt could be improved (select all that apply):</h3>
                    <asp:CheckBoxList runat="server" ID="aspx_review_improve" >
                        <asp:ListItem Text="Transportation to Ski Chalet" Value="aspx_review_improve_transportation" ></asp:ListItem>
                        <asp:ListItem Text="Check In" Value="aspx_review_improve_checkin" ></asp:ListItem>
                        <asp:ListItem Text="Ski Lifts" Value="aspx_review_improve_ski_lifts" ></asp:ListItem>
                        <asp:ListItem Text="Ski Slopes" Value="aspx_review_improve_ski_slopes" ></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <h3>Would you recommend Northern Horseshoe Discount Skiing to a friend?</h3>
                    <asp:RadioButtonList runat="server" ID="aspx_review_recommend" >
                        <asp:ListItem Text="Yes!" Value="aspx_review_recommend_yes" ></asp:ListItem>
                        <asp:ListItem Text="No" Value="aspx_review_recommend_no" ></asp:ListItem>
                    </asp:RadioButtonList>
                </section>
                <section>
                    <label for="aspx_review_additional_comments">Please enter any additional comments here:</label>
                    <div>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="aspx_review_additional_comments" placeholder="Please enter additional comments here (max length 1000 characters)" MaxLength="1000" ></asp:TextBox>
                    </div>
                </section>
            </div>
            <section>
                <div>
                    <asp:Button runat="server" Text="submit" />
                </div>
            </section>
        </main>
    </form>
</body>
</html>
