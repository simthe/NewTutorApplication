<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewsUser.aspx.cs" Inherits="TutorStudentAppNomzaza.NewsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center">
        <h1 class="mt-4">Welcome to Qurious Quest Tutors</h1>
        <hr />
        <asp:DataList ID="dlNews" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="container">
            <ItemTemplate>
                <div class="card m-2" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblSubjectName" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </h5>
                        <p class="card-text">
                            </p>
                        <a href='<%# Eval("Link") %>' class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>

        </div>
</asp:Content>
