<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TutorStudentAppNomzaza.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container col-lg-8">
        <div class="card p-4 shadow">
            <h2>Forgot Password</h2>
            <hr />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

            <br />
            <div class="form-group">
                <label for="txtPassword">Enter Registered Email:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <br />
            <div class="form-group">
                <h4>
                    <asp:Label ID="lblIncorrect" Visible="false" runat="server" class="label label-danger" Text="Label"></asp:Label></h4>
            </div>
            <div>
                <asp:Button ID="btnEmail" runat="server" OnClick="btnEmail_Click" Text="Email Password" CssClass="btn btn-dark" />
            </div>
            <br />
        </div>
    </div>
    <!-- Bootstrap JS and dependencies (optional, for interactive components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
