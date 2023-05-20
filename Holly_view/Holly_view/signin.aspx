<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="signin.aspx.cs" Inherits="Holly_view.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Holly View</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/signin.css"/>
    <link rel="shortcut icon" href="img/logo.png"/>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Default.aspx" class="logo" >
                            <!-- add next line in class logo-->
        <i class='bx bx-movie-play bx-tada main-color'style="color: #c0392b ;"></i><span class="main-color" >H</span>olly <span class="main-color" >V</span>iew
        </a>
         
    <div class="container">
        <div class="content">
            <div class="form">
                <h1>Sign In</h1>
                <div class="content1">
                    <asp:TextBox ID="txt_email" runat="server" placeholder="Email or phone number" TextMode="Email"></asp:TextBox>
                   

                    <div class="pass-wrap">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="sign_in"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_pass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <button type="button" id="show-password">
                    <img src="img/eye_open.svg" alt="show copassword" />
                    </button>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red" ValidationGroup="sign_in"></asp:RequiredFieldValidator>

                    <asp:Button ID="btn_sign" runat="server" Text="Sign In" OnClick="btn_sign_Click" ValidationGroup="sign_in" />
                   
                </div>
            </div>
            <div class="bottom">
                <p>New to Holly View? <a href="signup.aspx">Sign Up Now</a></p><br/>
            </div>
        </div>
    </div>

    <script src="js/signin.js"></script> 

    </form>
</body>
</html>
