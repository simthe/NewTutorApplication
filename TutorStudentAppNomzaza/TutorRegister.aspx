<%@ Page Title="Tutors" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TutorRegister.aspx.cs" Inherits="TutorStudentAppNomzaza.TutorRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" Visible="false" ID="pnlSubAdd">
    <div class="container">
        <br />
        <div class="card p-4 shadow">
        <h2>Tutor Registration</h2>
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
            <label for="txtQualification">Qualification:</label>
            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" />
        </div>
    </div>
        </div>

    <!-- Bootstrap JS and dependencies (optional, for interactive components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </asp:Panel>
    <asp:Panel runat="server" Visible="true" ID="pnlSubDis">
        
        <div class="container">
            <div class="form-group col-xs-12 grid-container">
                <div style="border-radius: 0px;" class="panel-heading">
                    <br />
                    <h3>Manage Tutors</h3>
                </div>
                <div class="row">
                    <div class="container col-sm-12">
                        <div class="table-responsive">

                            <asp:GridView ID="dgvTutor" runat="server" OnPreRender="dgvTutor_PreRender" CssClass="table table-bordered" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="TutorID" HeaderText="Key" ShowHeader="true" Visible="true" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" ShowHeader="true" />
                                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ShowHeader="true" />
                                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" ShowHeader="true" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <br />
                    </div>

                </div>
            </div>

            <div>
                <br />
    <asp:Button ID="btnNewTutor" runat="server" OnClick="btnNewTutor_Click" Text="New Tutor" CssClass="btn btn-primary" />
</div>
        </div>

        <script src="js/jquery-1.12.0.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">
        var $j = jQuery(function ($) { /*some code that uses $ */
            $('table').DataTable();
        });
        </script>
    </asp:Panel>
</asp:Content>
