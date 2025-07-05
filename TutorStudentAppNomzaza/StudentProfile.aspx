<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="TutorStudentAppNomzaza.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container mt-3">
        <br />
        <h2>Manage Your Details</h2>
        <br>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#home">Personal Information</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">Your Sessions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2">Change Password</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div id="home" class="container tab-pane">
                <div class="row mb-3">
                    <div class="col-sm-3">Full Name</div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label runat="server" ID="lblStudName" Text="John Doe" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3">Email</div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label runat="server" ID="lblStudEmail" Text="john@example.com" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3">Grade Level</div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label runat="server" ID="lblGradeLevel" Text="+1234567890" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3">School Name</div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label runat="server" ID="lblSchool" Text="+1234567890" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3">Guardian Name</div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label runat="server" ID="lblGuardian" Text="+1234567890" />
                    </div>
                </div>
            </div>
            <div id="menu1" class="container tab-pane fade">
                <p>Sessions</p>
                <asp:DataList ID="dlSessions" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="container">
                    <ItemTemplate>
                        <div class="card m-2" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">
                                    <asp:Label ID="lblSubjectName" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                                </h5>
                                <p class="card-text">
                                    <strong>Start Time:</strong>
                                    <asp:Label ID="lblStartTime" runat="server" Text='<%# Eval("StartTime", "{0:yyyy-MM-dd HH:mm}") %>'></asp:Label>
                                    <br />
                                    <strong>End Time:</strong>
                                    <asp:Label ID="lblEndTime" runat="server" Text='<%# Eval("EndTime", "{0:yyyy-MM-dd HH:mm}") %>'></asp:Label>
                                </p>
                                <a href='<%# Eval("SessionLink") %>' class="btn btn-primary">Join Session</a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div id="menu2" class="container tab-pane fade">
                <br>
                <asp:Label ID="lblCorrectPassword" Visible="false" runat="server" ForeColor="Green" />

                <div class="mb-3">
                    <label for="txtName" class="form-label">Enter Old Password</label>
                    <asp:TextBox ID="txtOldPassword" TextMode="Password" runat="server" PlaceHolder="Enter Old Password" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="lblPass" class="form-label">New Password</label>
                    <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server" PlaceHolder="Enter New Password" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="lblConfirm" class="form-label">Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" PlaceHolder="Confirm New Password" CssClass="form-control" />
                </div>
                <asp:Button ID="btnSavePassword" CausesValidation="false" runat="server" OnClick="btnSavePassword_Click" CssClass="btn btn-success" Text="Save Changes" />

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
