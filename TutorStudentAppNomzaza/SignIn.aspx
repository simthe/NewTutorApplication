<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TutorStudentAppNomzaza.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container col-lg-8">
        <div class="card p-4 shadow">
        <h2>User Login</h2>
        <hr />
        <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <br />
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
        </div>
            <br />
            <div class="form-group">
                <h4>
                    <asp:Label ID="lblIncorrect" Visible="false" runat="server" class="label label-danger" Text="Label"></asp:Label></h4>
            </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-dark" OnClick="btnLogin_Click" />
        </div>
        <br />
        <div>
            <a href="~/ForgotPassword" runat="server">Forgot Password?</a><br />
            <span>Don't have an account? <a href="~/StudentRegistration" runat="server">Register</a></span>
        </div>
    </div>
        </div>
    <!-- Bootstrap JS and dependencies (optional, for interactive components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
