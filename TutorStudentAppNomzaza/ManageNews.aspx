<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageNews.aspx.cs" Inherits="TutorStudentAppNomzaza.ManageNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" Visible="false" ID="pnlSubAdd">
        <div class="container">
            <br />
            <div class="card p-4 shadow">
                <h2>Add News</h2>
                <br />

                <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

                <div class="form-group">
                    <label for="txtDescription">Description:</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="5" required="required"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="fuPhoto">Photo:</label>
                    <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtLink">Link to Full News:</label>
                    <asp:TextBox ID="txtLink" runat="server" CssClass="form-control" TextMode="Url"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="ddlStatus">Status:</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Status" Value="" />
                        <asp:ListItem Text="Active" Value="Active" />
                        <asp:ListItem Text="Draft" Value="Draft" />
                        <asp:ListItem Text="Archived" Value="Archived" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" />
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" />
                </div>
                <br />
                <div>
                    <asp:Button ID="btnAddNews" OnClick="btnAddNews_Click1" runat="server" Text="Add News" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies (optional, for interactive components) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </asp:Panel>
    <asp:Panel runat="server" Visible="true" ID="pnlNewsAdmin">
        <div class="container">
            <div class="form-group col-xs-12 grid-container">
                <div style="border-radius: 0px;" class="panel-heading">
                    <br />
                    <h3>Manage News</h3>
                </div>
                <div class="row">
                    <div class="container col-sm-12">
                        <div class="table-responsive">

                            <asp:GridView ID="dgvNews" runat="server"
                                CssClass="table table-bordered"
                                AutoGenerateColumns="false" OnPreRender="dgvNews_PreRender">
                                <Columns>
                                    <asp:BoundField DataField="NewsID" HeaderText="ID" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    <asp:BoundField DataField="Link" HeaderText="Link" />
                                    <asp:BoundField DataField="PhotoUrl" HeaderText="Photo" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" Text="Edit"
                                                OnClick="btnEdit_Click"
                                                CommandArgument='<%# Eval("NewsID") %>'
                                                CssClass="btn btn-dark" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                        </div>
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <div>
                <asp:Button ID="btnNewNews" runat="server" OnClick="btnNewNews_Click"
                    Text="Add News" CssClass="btn btn-primary" />
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
