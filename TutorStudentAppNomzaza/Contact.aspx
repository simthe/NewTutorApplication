<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TutorStudentAppNomzaza.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <!-- Contact Us Header -->
        <div class="text-center mb-4">
            <h2>Contact Us</h2>
            <hr />
        </div>

        <div class="row">
            <!-- Contact Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow">
                    <h4 class="mb-3">Send Us a Message</h4>
                    <br />
                    <div class="form-group">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-5" placeholder="Your Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-5" placeholder="Your Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control mb-5" placeholder="Subject"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control mb-5" TextMode="MultiLine" Rows="4" placeholder="Your Message"></asp:TextBox>
                    </div>
                    <div class="text-left">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary w-100" Text="Send Message" />
                    </div>
                </div>
            </div>

            <!-- Contact Details -->
            <div class="col-md-6">
                <div class="card p-4 shadow">
                    <h4 class="mb-3">Get in Touch</h4>
                    <br />
                    <h5>Primary Contact</h5>
                    <p><strong>Address:</strong> 35 Tyhume Street, Kwa-Nobuhle, Kariega</p>
                    <p><strong>Phone:</strong> +27 73 074 8229</p>
                    <p><strong>Email:</strong> info@quriousquest.co.za</p>
                    <br />
                    <h5>Secondary Contact</h5>
<p><strong>Address:</strong> Crn Drostdy Road &, Algoa Rd, Kariega, 6230</p>
<p><strong>Phone:</strong> +27 73 074 8229</p>
<p><strong>Email:</strong> info@quriousquest.co.za</p>
<br />
                    <!-- Google Map Embed -->
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3435.6973754230593!2d25.394965175482245!3d-33.76794957331598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e7af6719bcd7fa7%3A0x74f9625c23536d3f!2sUitenhage%2C%20South%20Africa!5e0!3m2!1sen!2sza!4v1701234567890"
                            allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
