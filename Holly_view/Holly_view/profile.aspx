<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="profile.aspx.cs" Inherits="Holly_view.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Profile</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<link rel="shortcut icon" href="img/logo.png"/>
	<script src="https://kit.fontawesome.com/4eb6b35618.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
         <section class="py-5 my-5">
		<div class="container">
			<h1 class="mb-5">Account Settings</h1>
			<div class="shadow rounded-lg d-block d-sm-flex" id="bbg-color" >
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="img/user.jpg" class="shadow" alt=""> 
						</div>
						<%--session          done   --%>   
						<h4><asp:Label ID="Label1" class="text-center" runat="server" Text="Label" ForeColor="White" ></asp:Label></h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							<%--linkbutton or change the path--%>
							Account
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							<%--linkbutton or change the path--%>
							Password
						</a>
						<a class="nav-link" id="watchlist-tab" href="watchlist.aspx">
							<i class="fa fa-heart text-center mr-1"></i> 
							<%--linkbutton or change the path--%>
							Watch List
						</a>
						<a class="nav-link" id="logout-tab" href="Default.aspx">
							<i class="fa-solid fa-arrow-left"></i>
							<%--linkbutton or change the path--%>
							Back to Home
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<h3 class="mb-4">Account Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>First Name</label>
									<%--textbox--%>
									<asp:TextBox ID="txt_FirstName" class="form-control" runat="server"></asp:TextBox>
								  	 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_FirstName" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Last Name</label>
									<%--textbox--%>
									<asp:TextBox ID="txt_LastName" class="form-control" runat="server"></asp:TextBox>
									 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_LastName" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
								  
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
									<%--textbox--%>
								  	<
									<asp:TextBox ID="txt_email" class="form-control" runat="server"></asp:TextBox>
									 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
									  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"   ValidationGroup="update_pro"></asp:RegularExpressionValidator>
								</div>
							</div>
						</div>
						<div>
							<%--2 buttons--%>
							<asp:Button ID="btn_updateInfo" class="btn btn-light" runat="server" Text="Update" OnClick="btn_updateInfo_Click" BorderColor="#221F1F"  BackColor="#C0392B" ValidationGroup="update_pro" />
							<asp:Button ID="btn_cancel" class="btn btn-light" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
							
						</div>
					</div>
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
						<h3 class="mb-4">Password Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Old password</label>
									<%--textbox--%>
									<asp:TextBox ID="txt_oldpass" class="form-control" runat="server"></asp:TextBox>
								  	 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_oldpass" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pass"></asp:RequiredFieldValidator>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>New password</label>
									<%--textbox--%>
									<asp:TextBox ID="txt_newpass" class="form-control" runat="server"></asp:TextBox>
								  	 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_newpass" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pass"></asp:RequiredFieldValidator>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Confirm new password</label>
									<%--textbox--%>
									<asp:TextBox ID="txt_copass" class="form-control" runat="server"></asp:TextBox>
									 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_copass" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pass"></asp:RequiredFieldValidator>
								   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpass" ControlToValidate="txt_copass" ErrorMessage="passwords do not match" ForeColor="Red" ValidationGroup="update_pass"></asp:CompareValidator>
								</div>
							</div>
						</div>
						<div>
							<%--2 buttons--%>
							<asp:Button ID="btn_updatepass" class="btn btn-light" runat="server" Text="Update" ValidationGroup="update_pass"  BackColor="#C0392B" BorderColor="#221F1F" OnClick="btn_updatepass_Click" />
							<asp:Button ID="btn_cancelpass" class="btn btn-light" runat="server" Text="Cancel" OnClick="btn_cancelpass_Click" />
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
