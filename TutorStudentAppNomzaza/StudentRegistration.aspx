<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="TutorStudentAppNomzaza.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="card p-4 shadow">
        <h2>Student Registration</h2>
        <hr />
        <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
        <div class="form-group">
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtLastName">Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPhone">Phone Number:</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtGradeLevel">Grade Level:</label>
            <asp:TextBox ID="txtGradeLevel" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtSchoolName">School Name:</label>
            <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
            <div class="form-group">
                <label for="chkSubjects">Select Subjects:</label>
                <asp:CheckBoxList ID="chkSubjects" CssClass="form-check" runat="server" RepeatDirection="Vertical" />
            </div>
        <div class="form-group">
            <label for="txtGuardianName">Guardian Name:</label>
            <asp:TextBox ID="txtGuardianName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" Visible="true"></asp:Label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="true"></asp:Label>
        </div>
        <br />
        <br />
        <div>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" CssClass="btn btn-dark" />
        </div>
    </div>
        </div>

    <!-- Bootstrap JS and dependencies (optional, for interactive components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
