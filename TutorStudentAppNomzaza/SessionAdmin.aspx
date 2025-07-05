<%@ Page Title="Sessions" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SessionAdmin.aspx.cs" Inherits="TutorStudentAppNomzaza.SessionAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" Visible="false" ID="pnlSubAdd">
        <div class="container">
            <br />
            <div class="card p-4 shadow">
            <h2>Session Management</h2>
            <br />
            <asp:Label ID="lblTutor" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
            <div class="form-group">
                <label for="cmbTutor">Tutor:</label>
                <asp:DropDownList ID="cmbTutor" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="cmbSubject">Subject:</label>
                <asp:DropDownList ID="cmbSubject" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtStartTime">Start Time:</label>
                <asp:TextBox ID="txtStartTime" runat="server" CssClass="form-control" TextMode="DateTimeLocal"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEndTime">End Time:</label>
                <asp:TextBox ID="txtEndTime" runat="server" CssClass="form-control" TextMode="DateTimeLocal"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtSessionLink">Session Link:</label>
                <asp:TextBox ID="txtSessionLink" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <div>
                <asp:Button ID="txtSave" runat="server" OnClick="txtSave_Click" Text="Save Session" CssClass="btn btn-primary" />
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
                    <h3>Manage Sessions</h3>
                </div>
                <div class="row">
                    <div class="container col-sm-12">
                        <div class="table-responsive">

                            <asp:GridView ID="dgvTutor" runat="server" OnPreRender="dgvTutor_PreRender" CssClass="table table-bordered" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="SessionID" HeaderText="Key" ShowHeader="true" Visible="true" />
                                    <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" ShowHeader="true" />
                                    <asp:BoundField DataField="StartTime" HeaderText="Start Time" ShowHeader="true" />
                                    <asp:BoundField DataField="EndTime" HeaderText="End Time" ShowHeader="true" />
                                    <asp:BoundField DataField="SessionLink" HeaderText="Session Link" ShowHeader="true" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <br />
                    </div>

                </div>
            </div>
            <br />
            <div>
                <asp:Button ID="btnNewSession" runat="server" OnClick="btnNewSession_Click" Text="New Session" CssClass="btn btn-primary" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
