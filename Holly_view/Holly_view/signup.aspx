<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="signup.aspx.cs" Inherits="Holly_view.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/signup.css"/>
    <link rel="shortcut icon" href="img/logo.png"/>
     <style type="text/css">
         .auto-style1 {
             position: relative;
             left: -3px;
             top: 1px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Default.aspx" class="logo" >
                    <!-- add next line in class logo-->
            <i class='bx bx-movie-play bx-tada main-color'style="color: #c0392b ;"></i><span class="main-color" >H</span>olly <span class="main-color" >V</span>iew
        </a>
    </div>
    <div class="container">
        <div class="content">
            <div class="form">
                <h1>Sign Up</h1>
                <div class="content1">
                    <span>
                        <asp:TextBox ID="txt_FirstName" runat="server"  placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_FirstName" ErrorMessage="*" ForeColor="Red" ValidationGroup="regestration"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_LastName" runat="server"   placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_LastName" ErrorMessage="*" ForeColor="Red" ValidationGroup="regestration"></asp:RequiredFieldValidator>
                    </span>
                    <asp:TextBox ID="txt_email" runat="server" placeholder="Email or phone number" TextMode="Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="regestration"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"   ValidationGroup="regestration"></asp:RegularExpressionValidator>
                   

                    <div class="pass-wrap">
                       
                    <asp:TextBox ID="txt_pass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                     <button type="button" id="show-password">
                    <img src="img/eye_open.svg" alt="show password" />
                    </button>

                    </div>   

                    <div class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red" ValidationGroup="regestration"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_copassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                       <button type="button" id="show-copassword">
                    <img src="img/eye_open.svg" alt="show copassword" />
                    </button>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_copassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="regestration"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_copassword" ErrorMessage="passwords do not match" ForeColor="Red" ValidationGroup="regestration"></asp:CompareValidator>
                    </div>

                    <div class="content2">
                       
                        <asp:CheckBox ID="CheckBox1" runat="server"   Text="I agree to the"/>
                        <label><a href="#">Terms of Service & Privacy Policy</a></label>
                    </div>
                    
                    <asp:Button ID="Btn_submit" runat="server" Text="Create an account" OnClick="Btn_submit_Click" ValidationGroup="regestration" />
                    <div class="bottom">
                       <p>Already have an account? <a href="signin.aspx">Sign In</a></p><br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <script src="js/signup.js"></script>
    </form>
</body>
</html>
