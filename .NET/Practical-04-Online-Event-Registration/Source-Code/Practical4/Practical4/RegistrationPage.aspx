<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="EventRegistration.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Registration</title>

    <style>
        body {
            font-family: Arial;
            background: #eef2f7;
            margin: 0;
            padding: 35px;
        }

        .box {
            width: 620px;
            margin: auto;
            background: white;
            padding: 28px 35px;
            border-radius: 12px;
            box-shadow: 0 4px 18px #bbb;
        }

        h1 {
            text-align: center;
            color: #263b5a;
            margin-top: 0;
        }

        .r {
            margin: 13px 0;
        }

        .r > label {
            display: inline-block;
            width: 125px;
            font-weight: bold;
            color: #444;
            vertical-align: top;
        }

        input[type=text],
        input[type=email],
        input[type=password],
        select,
        textarea {
            width: 330px;
            padding: 8px;
            border: 1px solid #bbb;
            border-radius: 5px;
        }

        textarea {
            height: 70px;
            vertical-align: top;
        }

        .btn {
            margin-left: 125px;
            margin-top: 15px;
            padding: 9px 25px;
            background: #263b5a;
            color: white;
            border: 0;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #1b2d45;
        }

        .error {
            color: red;
            font-size: 13px;
            margin-left: 130px;
            display: block;
        }

        .summary {
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="box">

            <h1>Event Registration</h1>

            <!-- Validation Summary -->
            <asp:ValidationSummary
                ID="ValidationSummary1"
                runat="server"
                CssClass="summary"
                HeaderText="Please correct the following errors:" />

            <!-- Full Name -->
            <div class="r">
                <label>Full Name</label>

                <asp:TextBox
                    ID="name"
                    runat="server">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="v1"
                    runat="server"
                    ControlToValidate="name"
                    ErrorMessage="Full Name is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="vName"
                    runat="server"
                    ControlToValidate="name"
                    ValidationExpression="^[A-Za-z ]{3,50}$"
                    ErrorMessage="Name must contain only letters and spaces (3-50 characters)."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Email -->
            <div class="r">
                <label>Email</label>

                <asp:TextBox
                    ID="email"
                    runat="server"
                    TextMode="Email">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="v2"
                    runat="server"
                    ControlToValidate="email"
                    ErrorMessage="Email is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="vEmail"
                    runat="server"
                    ControlToValidate="email"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Enter a valid email address."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Password -->
            <div class="r">
                <label>Password</label>

                <asp:TextBox
                    ID="password"
                    runat="server"
                    TextMode="Password">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="vPassword"
                    runat="server"
                    ControlToValidate="password"
                    ErrorMessage="Password is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="vPasswordFormat"
                    runat="server"
                    ControlToValidate="password"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{6,20}$"
                    ErrorMessage="Password must be 6-20 characters and contain at least one letter and one number."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Confirm Password -->
            <div class="r">
                <label>Confirm Password</label>

                <asp:TextBox
                    ID="confirmPassword"
                    runat="server"
                    TextMode="Password">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="vConfirmPassword"
                    runat="server"
                    ControlToValidate="confirmPassword"
                    ErrorMessage="Confirm Password is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:CompareValidator
                    ID="vPasswordMatch"
                    runat="server"
                    ControlToValidate="confirmPassword"
                    ControlToCompare="password"
                    Operator="Equal"
                    Type="String"
                    ErrorMessage="Passwords do not match."
                    CssClass="error"
                    Display="Dynamic">
                </asp:CompareValidator>
            </div>

            <!-- Contact Number -->
            <div class="r">
                <label>Contact No.</label>

                <asp:TextBox
                    ID="contact"
                    runat="server"
                    MaxLength="10">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="v3"
                    runat="server"
                    ControlToValidate="contact"
                    ErrorMessage="Contact number is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="vContact"
                    runat="server"
                    ControlToValidate="contact"
                    ValidationExpression="^[0-9]{10}$"
                    ErrorMessage="Contact number must contain exactly 10 digits."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- College -->
            <div class="r">
                <label>College</label>

                <asp:TextBox
                    ID="college"
                    runat="server">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="v4"
                    runat="server"
                    ControlToValidate="college"
                    ErrorMessage="College name is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Department -->
            <div class="r">
                <label>Department</label>

                <asp:RadioButtonList
                    ID="dept"
                    runat="server">

                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Chemical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>

                </asp:RadioButtonList>

                <asp:RequiredFieldValidator
                    ID="v5"
                    runat="server"
                    ControlToValidate="dept"
                    ErrorMessage="Please select a department."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Event -->
            <div class="r">
                <label>Event</label>

                <asp:DropDownList
                    ID="event"
                    runat="server">

                    <asp:ListItem Value="">Select Event</asp:ListItem>
                    <asp:ListItem Value="Hackathon">Hackathon</asp:ListItem>
                    <asp:ListItem Value="Quiz Competition">Quiz Competition</asp:ListItem>
                    <asp:ListItem Value="Sports Meet">Sports Meet</asp:ListItem>

                </asp:DropDownList>

                <asp:RequiredFieldValidator
                    ID="v6"
                    runat="server"
                    ControlToValidate="event"
                    InitialValue=""
                    ErrorMessage="Please select an event."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Gender -->
            <div class="r">
                <label>Gender</label>

                <asp:RadioButton
                    ID="male"
                    runat="server"
                    GroupName="gender"
                    Text="Male" />

                <asp:RadioButton
                    ID="female"
                    runat="server"
                    GroupName="gender"
                    Text="Female" />

                <asp:CustomValidator
                    ID="vGender"
                    runat="server"
                    ErrorMessage="Please select gender."
                    CssClass="error"
                    Display="Dynamic"
                    OnServerValidate="vGender_ServerValidate">
                </asp:CustomValidator>
            </div>

            <!-- Skills -->
            <div class="r">
                <label>Skills</label>

                <asp:CheckBox
                    ID="cs"
                    runat="server"
                    Text="C#" />

                <asp:CheckBox
                    ID="py"
                    runat="server"
                    Text="Python" />

                <asp:CheckBox
                    ID="ai"
                    runat="server"
                    Text="AI" />

                <asp:CustomValidator
                    ID="vSkills"
                    runat="server"
                    ErrorMessage="Please select at least one skill."
                    CssClass="error"
                    Display="Dynamic"
                    OnServerValidate="vSkills_ServerValidate">
                </asp:CustomValidator>
            </div>

            <!-- Address -->
            <div class="r">
                <label>Address</label>

                <asp:TextBox
                    ID="address"
                    runat="server"
                    TextMode="MultiLine">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="v7"
                    runat="server"
                    ControlToValidate="address"
                    ErrorMessage="Address is required."
                    CssClass="error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Terms and Conditions -->
            <div class="r">

                <asp:CheckBox
                    ID="terms"
                    runat="server"
                    Text=" I accept Terms & Conditions" />

                <asp:CustomValidator
                    ID="vTerms"
                    runat="server"
                    ErrorMessage="You must accept Terms & Conditions."
                    CssClass="error"
                    Display="Dynamic"
                    OnServerValidate="vTerms_ServerValidate">
                </asp:CustomValidator>

            </div>

            <!-- Register Button -->
            <asp:Button
                ID="submit"
                runat="server"
                Text="Register Now"
                CssClass="btn"
                OnClick="submit_Click" />

        </div>

    </form>
</body>
</html>