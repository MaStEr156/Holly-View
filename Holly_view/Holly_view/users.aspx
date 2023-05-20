<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Holly_view.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

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
	<title>User</title>
	
    <link rel="shortcut icon" href="img/logo.png"/>

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
		</div>
	</header>

	<div class="sidebar">
		<a href="#" class="sidebar__logo">
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
				<a class="sidebar__nav-link" data-toggle="collapse" href="#collapseMenu" role="button" aria-expanded="false" aria-controls="collapseMenu"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19,5.5H12.72l-.32-1a3,3,0,0,0-2.84-2H5a3,3,0,0,0-3,3v13a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V8.5A3,3,0,0,0,19,5.5Zm1,13a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V5.5a1,1,0,0,1,1-1H9.56a1,1,0,0,1,.95.68l.54,1.64A1,1,0,0,0,12,7.5h7a1,1,0,0,1,1,1Z"/></svg> <span>Pages</span> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17,9.17a1,1,0,0,0-1.41,0L12,12.71,8.46,9.17a1,1,0,0,0-1.41,0,1,1,0,0,0,0,1.42l4.24,4.24a1,1,0,0,0,1.42,0L17,10.59A1,1,0,0,0,17,9.17Z"/></svg></a>

				<ul class="collapse sidebar__menu" id="collapseMenu">
					<li><asp:LinkButton ID="LinkButton1"  runat="server" PostBackUrl="~/add_item.aspx">Add item</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton2"  runat="server" PostBackUrl="~/edit_user.aspx">Add User</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton3"  runat="server" PostBackUrl="~/signin.aspx">Sign In</asp:LinkButton></li>
					<li><asp:LinkButton ID="LinkButton4"  runat="server" PostBackUrl="~/signup.aspx">Sign Up</asp:LinkButton></li>
					
				</ul>
			</li>

			<li class="sidebar__nav-item">
				<a href="users.aspx" class="sidebar__nav-link sidebar__nav-link--active"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12.3,12.22A4.92,4.92,0,0,0,14,8.5a5,5,0,0,0-10,0,4.92,4.92,0,0,0,1.7,3.72A8,8,0,0,0,1,19.5a1,1,0,0,0,2,0,6,6,0,0,1,12,0,1,1,0,0,0,2,0A8,8,0,0,0,12.3,12.22ZM9,11.5a3,3,0,1,1,3-3A3,3,0,0,1,9,11.5Zm9.74.32A5,5,0,0,0,15,3.5a1,1,0,0,0,0,2,3,3,0,0,1,3,3,3,3,0,0,1-1.5,2.59,1,1,0,0,0-.5.84,1,1,0,0,0,.45.86l.39.26.13.07a7,7,0,0,1,4,6.38,1,1,0,0,0,2,0A9,9,0,0,0,18.74,11.82Z"/></svg> <span>Users</span></a>
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
						<h2>Users</h2>
						<div class="main__title-wrap">
							<div class="main__title-form">
								<asp:TextBox ID="TextBox1" runat="server" placeholder="Find user"></asp:TextBox>
								<asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click"><svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="8.25998" cy="8.25995" r="7.48191" stroke="#2F80ED" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></circle><path d="M13.4637 13.8523L16.3971 16.778" stroke="#2F80ED" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></asp:LinkButton>
							</div>
						</div>
					</div>
				</div>

				<div class="col-12">
					<div class="main__table-wrap">
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" SelectCommand="select userID,email,first_name,last_name from [dbo].[users]" DeleteCommand="DELETE FROM [users] WHERE [userID] = @userID" InsertCommand="INSERT INTO [users] ([email], [first_name]) VALUES (@email, @first_name)" ProviderName="<%$ ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" UpdateCommand="UPDATE [users] SET [email] = @email, [first_name] = @first_name WHERE [userID] = @userID">
                            <DeleteParameters>
                                <asp:Parameter Name="userID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="first_name" Type="string" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="first_name" Type="string" />
                                <asp:Parameter Name="userID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
						<br />

						
						<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="userID">

							<LayoutTemplate>
								
								<table class="main__table" >
							
							<thead>
								<tr>
									<th>ID</th>
									<th>EMAIL</th>
									<th>USERNAME</th>
									<th>ACTIONS</th>
								</tr>
							</thead>
					
							
							
								<tr id="itemplaceholder" runat="server">

								</tr>
									
										
						</table>

							</LayoutTemplate>
							<AlternatingItemTemplate>
                                <tr >
                                    
                                    <td>
                                       <asp:Label ID="Label1" class="main__table-text" runat="server" Text='<%#Eval("userID") %>'></asp:Label>
                                    </td>
                                    <td>
                                      <asp:Label ID="Label2" class="main__table-text" runat="server" Text='<%#Eval("email") %>'></asp:Label>

                                    </td>
                                    <td>
                                       <asp:Label ID="Label3" class="main__table-text" runat="server" Text='<%#Eval("first_name") + " " + Eval("last_name") %>'></asp:Label>
                                    </td>
									<td>
                                        <div class="main__table-text">
											
											<asp:LinkButton ID="DeleteButton"   runat="server" CommandName="Delete" class="main__table-btn main__table-btn--delete"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M10,18a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,10,18ZM20,6H16V5a3,3,0,0,0-3-3H11A3,3,0,0,0,8,5V6H4A1,1,0,0,0,4,8H5V19a3,3,0,0,0,3,3h8a3,3,0,0,0,3-3V8h1a1,1,0,0,0,0-2ZM10,5a1,1,0,0,1,1-1h2a1,1,0,0,1,1,1V6H10Zm7,14a1,1,0,0,1-1,1H8a1,1,0,0,1-1-1V8H17Zm-3-1a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,14,18Z"/></svg></asp:LinkButton>
												
										</div>
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
							 <EditItemTemplate>
                                <tr >
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" class="main__table-text" runat="server" Text='<%#Eval("userID") %>'></asp:Label>
                                    </td>
                                    <td>
                                       <asp:Label ID="Label2" class="main__table-text" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                    </td>
                                    <td>
                                       <asp:Label ID="Label3" class="main__table-text" runat="server" Text='<%#Eval("first_name") + " " + Eval("last_name") %>'></asp:Label>
                                    </td>
                                </tr>
                            </EditItemTemplate>
							<EmptyDataTemplate>
                                <table runat="server" style="color: lightgrey">
                                    <tr>
                                        <td>The user does not exist</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ratingTextBox" runat="server" Text='<%# Bind("rating") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
							<ItemTemplate>
								<tr>
									
									<td >
										<asp:Label ID="Label1" class="main__table-text" runat="server" Text='<%#Eval("userID") %>'></asp:Label>
									</td>
									<td >

										<asp:Label ID="Label2" class="main__table-text" runat="server" Text='<%#Eval("email") %>'></asp:Label>
										
									</td>
									<td>
										<asp:Label ID="Label3" class="main__table-text" runat="server" Text='<%#Eval("first_name") + " " + Eval("last_name") %>'></asp:Label>
									</td>
									<td >
										<div class="main__table-text">
											
											<asp:LinkButton ID="DeleteButton"   runat="server" CommandName="Delete" class="main__table-btn main__table-btn--delete"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M10,18a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,10,18ZM20,6H16V5a3,3,0,0,0-3-3H11A3,3,0,0,0,8,5V6H4A1,1,0,0,0,4,8H5V19a3,3,0,0,0,3,3h8a3,3,0,0,0,3-3V8h1a1,1,0,0,0,0-2ZM10,5a1,1,0,0,1,1-1h2a1,1,0,0,1,1,1V6H10Zm7,14a1,1,0,0,1-1,1H8a1,1,0,0,1-1-1V8H17Zm-3-1a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,14,18Z"/></svg></asp:LinkButton>
												
										</div>
										
											
									</td>
								</tr>

							</ItemTemplate>
							<SelectedItemTemplate>
                                <tr>
									
									<td >
										<asp:Label ID="Label1" class="main__table-text" runat="server" Text='<%#Eval("userID") %>'></asp:Label>
									</td>
									<td >

										<asp:Label ID="Label2" class="main__table-text" runat="server" Text='<%#Eval("email") %>'></asp:Label>
										
									</td>
									<td>
										<asp:Label ID="Label3" class="main__table-text" runat="server" Text='<%#Eval("first_name") + " " + Eval("last_name") %>'></asp:Label>
									</td>
									<td >

										<div class="main__table-text">
											
											<asp:LinkButton ID="DeleteButton"   runat="server" CommandName="Delete" class="main__table-btn main__table-btn--delete"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M10,18a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,10,18ZM20,6H16V5a3,3,0,0,0-3-3H11A3,3,0,0,0,8,5V6H4A1,1,0,0,0,4,8H5V19a3,3,0,0,0,3,3h8a3,3,0,0,0,3-3V8h1a1,1,0,0,0,0-2ZM10,5a1,1,0,0,1,1-1h2a1,1,0,0,1,1,1V6H10Zm7,14a1,1,0,0,1-1,1H8a1,1,0,0,1-1-1V8H17Zm-3-1a1,1,0,0,0,1-1V11a1,1,0,0,0-2,0v6A1,1,0,0,0,14,18Z"/></svg></asp:LinkButton>
											<asp:LinkButton ID="AddButton" runat="server" class="main__table-btn main__table-btn--delete" PostBackUrl="~/edit_user.aspx"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M22,7.24a1,1,0,0,0-.29-.71L17.47,2.29A1,1,0,0,0,16.76,2a1,1,0,0,0-.71.29L13.22,5.12h0L2.29,16.05a1,1,0,0,0-.29.71V21a1,1,0,0,0,1,1H7.24A1,1,0,0,0,8,21.71L18.87,10.78h0L21.71,8a1.19,1.19,0,0,0,.22-.33,1,1,0,0,0,0-.24.7.7,0,0,0,0-.14ZM6.83,20H4V17.17l9.93-9.93,2.83,2.83ZM18.17,8.66,15.34,5.83l1.42-1.41,2.82,2.82Z"/></svg></asp:LinkButton>
												
										</div>
									</td>
								</tr>
                            </SelectedItemTemplate>
						</asp:ListView>

						
								
			</div>
		</div>
	</main>
	
	

	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/smooth-scrollbar.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/admin.js"></script>
    </form>
</body>
</html>