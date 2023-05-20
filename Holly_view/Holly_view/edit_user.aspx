<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="edit_user.aspx.cs" Inherits="Holly_view.edit_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

	<link rel="stylesheet" href="css/bootstrap-reboot.min.css"/>
	<link rel="stylesheet" href="css/bootstrap-grid.min.css"/>
	<link rel="stylesheet" href="css/magnific-popup.css"/>
	<link rel="stylesheet" href="css/select2.min.css"/>
	<link rel="stylesheet" href="css/admin.css"/>

	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta name="author" content="No Name"/>
	<title>Holly View</title>

</head>
<body>
    <form id="form1" runat="server">
       <header class="header">

			<a href="#" class="header__logo">
				<i class='bx bx-movie-play bx-tada main-color'style="color: #c0392b ;"></i><span class="main-color" >H</span>olly <span class="main-color" >V</span>iew
			</a>

			<button class="header__btn" type="button">
				<span></span>
				<span></span>
				<span></span>
			</button>
		</header>

         <div class="sidebar">
		<a href="#" class="sidebar__logo">
			<!-- add next line in sidebar__logo-->
			<i class='bx bx-movie-play bx-tada main-color'style="color: #c0392b ;"></i><span class="main-color" >H</span>olly <span class="main-color" >V</span>iew
		</a>
		
		<div class="sidebar__user">
			<div class="sidebar__user-img">
				<img src="img/user.jpg" alt="">
			</div>

			<div class="sidebar__user-title">
				<span>Admin</span>
				<p><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
			</div>

			<asp:LinkButton class="sidebar__user-btn" ID="logout_btn" runat="server" OnClick="logout_Click">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M4,12a1,1,0,0,0,1,1h7.59l-2.3,2.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l4-4a1,1,0,0,0,.21-.33,1,1,0,0,0,0-.76,1,1,0,0,0-.21-.33l-4-4a1,1,0,1,0-1.42,1.42L12.59,11H5A1,1,0,0,0,4,12ZM17,2H7A3,3,0,0,0,4,5V8A1,1,0,0,0,6,8V5A1,1,0,0,1,7,4H17a1,1,0,0,1,1,1V19a1,1,0,0,1-1,1H7a1,1,0,0,1-1-1V16a1,1,0,0,0-2,0v3a3,3,0,0,0,3,3H17a3,3,0,0,0,3-3V5A3,3,0,0,0,17,2Z"/></svg>
			</asp:LinkButton>
		</div>

		<ul class="sidebar__nav">
			
			<li class="sidebar__nav-item">
				<a href="Catalog.aspx" class="sidebar__nav-link"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M10,13H3a1,1,0,0,0-1,1v7a1,1,0,0,0,1,1h7a1,1,0,0,0,1-1V14A1,1,0,0,0,10,13ZM9,20H4V15H9ZM21,2H14a1,1,0,0,0-1,1v7a1,1,0,0,0,1,1h7a1,1,0,0,0,1-1V3A1,1,0,0,0,21,2ZM20,9H15V4h5Zm1,4H14a1,1,0,0,0-1,1v7a1,1,0,0,0,1,1h7a1,1,0,0,0,1-1V14A1,1,0,0,0,21,13Zm-1,7H15V15h5ZM10,2H3A1,1,0,0,0,2,3v7a1,1,0,0,0,1,1h7a1,1,0,0,0,1-1V3A1,1,0,0,0,10,2ZM9,9H4V4H9Z"/></svg> <span>Catalog</span></a>
			</li>

			<li class="sidebar__nav-item">
				<a class="sidebar__nav-link sidebar__nav-link--active" data-toggle="collapse" href="#collapseMenu" role="button" aria-expanded="true" aria-controls="collapseMenu"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19,5.5H12.72l-.32-1a3,3,0,0,0-2.84-2H5a3,3,0,0,0-3,3v13a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V8.5A3,3,0,0,0,19,5.5Zm1,13a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V5.5a1,1,0,0,1,1-1H9.56a1,1,0,0,1,.95.68l.54,1.64A1,1,0,0,0,12,7.5h7a1,1,0,0,1,1,1Z"/></svg> <span>Pages</span> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17,9.17a1,1,0,0,0-1.41,0L12,12.71,8.46,9.17a1,1,0,0,0-1.41,0,1,1,0,0,0,0,1.42l4.24,4.24a1,1,0,0,0,1.42,0L17,10.59A1,1,0,0,0,17,9.17Z"/></svg></a>

				<%--bottonlink--%>

				<ul class="collapse sidebar__menu show" id="collapseMenu">
					<li><asp:LinkButton ID="LinkButton1"  runat="server" PostBackUrl="~/add_item.aspx">Add item</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton2"  class="active" runat="server" PostBackUrl="~/edit_user.aspx">Add User</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton3"  runat="server" PostBackUrl="~/signin.aspx">Sign In</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton4"  runat="server" PostBackUrl="~/signup.aspx">Sign Up</asp:LinkButton></li>
				</ul>
			</li>

			<li class="sidebar__nav-item">
				<a href="users.aspx" class="sidebar__nav-link"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12.3,12.22A4.92,4.92,0,0,0,14,8.5a5,5,0,0,0-10,0,4.92,4.92,0,0,0,1.7,3.72A8,8,0,0,0,1,19.5a1,1,0,0,0,2,0,6,6,0,0,1,12,0,1,1,0,0,0,2,0A8,8,0,0,0,12.3,12.22ZM9,11.5a3,3,0,1,1,3-3A3,3,0,0,1,9,11.5Zm9.74.32A5,5,0,0,0,15,3.5a1,1,0,0,0,0,2,3,3,0,0,1,3,3,3,3,0,0,1-1.5,2.59,1,1,0,0,0-.5.84,1,1,0,0,0,.45.86l.39.26.13.07a7,7,0,0,1,4,6.38,1,1,0,0,0,2,0A9,9,0,0,0,18.74,11.82Z"/></svg> <span>Users</span></a>
			</li>

			
			<li class="sidebar__nav-item">
				<a href="Default.aspx" class="sidebar__nav-link"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17,11H9.41l3.3-3.29a1,1,0,1,0-1.42-1.42l-5,5a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l5,5a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L9.41,13H17a1,1,0,0,0,0-2Z"/></svg> <span>Back to Holly View</span></a>
			</li>
		</ul>
		
		<div class="sidebar__copyright">© Holly View, 2023. <br>Create by <a href="https://themeforest.net/user/dmitryvolkov/portfolio" target="_blank">No Name</a></div>
	</div>

	<main class="main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="main__title">
						<h2>Add user</h2>
					</div>
				</div>

				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="1-tab">
						<div class="col-12">
							<div class="sign__wrap">
								<div class="row">
									<div class="col-12 col-lg-6">
										<div action="#" class="sign__form sign__form--profile sign__form--first" style="background-color:#151414;">
											<div class="row">
												<div class="col-12">
													<h4 class="sign__title">Profile details</h4>
												</div>

												</div>

												<div class="col-12">
													<div class="sign__group">
														<label class="sign__label" for="firstname">First name</label>
														<asp:TextBox ID="txt_FirstName" class="sign__input" runat="server"></asp:TextBox>
													    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_FirstName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
													    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_FirstName" ErrorMessage="The Special characters (') is not allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9.;,&?!()@#$%^*~\s-]{1,499}$"   ValidationGroup="save"></asp:RegularExpressionValidator>
													</div>
												</div>

												<div class="col-12">
													<div class="sign__group">
														<label class="sign__label" for="lastname">Last name</label>
														<asp:TextBox ID="txt_LastName" class="sign__input" runat="server"></asp:TextBox>
														 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_LastName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
														 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_LastName" ErrorMessage="The Special characters (') is not allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9.;,&?!()@#$%^*~\s-]{1,499}$"   ValidationGroup="save"></asp:RegularExpressionValidator>
													</div>
												</div>
												<div class="col-12">
													<div class="sign__group">
														<label class="sign__label" for="email">Email</label>
														<asp:TextBox ID="txt_email" class="sign__input"  runat="server" TextMode="Email"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"   ValidationGroup="Save"></asp:RegularExpressionValidator>
													</div>
												</div>
												<div class="col-12">
													<div class="sign__group">
														<label class="sign__label" for="password">Password</label>
														<asp:TextBox ID="txt_pass" class="sign__input" runat="server"></asp:TextBox>
														   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
														<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_pass" ErrorMessage="The Special characters (') is not allowed" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9.;,&?!()@#$%^*~\s-]{1,499}$"   ValidationGroup="save"></asp:RegularExpressionValidator>
													</div>
												</div>
												

												<div class="col-12">
													<asp:Button ID="btn_save" class="sign__btn" runat="server" Text="Save" ValidationGroup="Save" OnClick="btn_save_Click" />
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					
						

					
			</div>
		</div>
	</main>

	<div id="modal-delete3" class="zoom-anim-dialog mfp-hide modal">
		<h6 class="modal__title">User delete</h6>

		<p class="modal__text">Are you sure to permanently delete this user?</p>

		<div class="modal__btns">
			<button class="modal__btn modal__btn--apply" type="button">Delete</button>
			<button class="modal__btn modal__btn--dismiss" type="button">Dismiss</button>
		</div>
	</div>

	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/smooth-scrollbar.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/admin.js"></script>
    </form>
</body>
</html>