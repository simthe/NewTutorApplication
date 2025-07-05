<%@ Page Title="Students" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageStudents.aspx.cs" Inherits="TutorStudentAppNomzaza.ManageStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group col-xs-12 grid-container">
            <div style="border-radius: 0px;" class="panel-heading">
                <br />
                <h3>Manage Students</h3>
            </div>
            <div class="row">
                <div class="container col-sm-12">
                    <div class="table-responsive">

                        <asp:GridView ID="dgvAllStudents" runat="server" OnPreRender="dgvAllStudents_PreRender" CssClass="table table-bordered" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="StudentID" HeaderText="Key" ShowHeader="true" Visible="false" />
                                <asp:BoundField DataField="FullName" HeaderText="Full Name" ShowHeader="true" />
                                <asp:BoundField DataField="Email" HeaderText="Email" ShowHeader="true" />
                                <asp:BoundField DataField="GradeLevel" HeaderText="Grade Level" ShowHeader="true" />
                                <asp:BoundField DataField="SchoolName" HeaderText="School Name" ShowHeader="true" />
                                <asp:BoundField DataField="GuardianContact" HeaderText="Guardian Contact" ShowHeader="true" />
                                <%--<asp:BoundField DataField="Status" HeaderText="Status" ShowHeader="true" />--%>
                                <asp:TemplateField ShowHeader="false">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="imgSignOut" OnClick="imgSignOut_Click" runat="server" CausesValidation="False" CommandArgument='<%# Eval("StudentID") %>' ToolTip="Edit"><span class="glyphicon glyphicon-edit"></span></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle Height="22px" Width="25px" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <br />
                </div>

            </div>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
