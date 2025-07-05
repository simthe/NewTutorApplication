<%@ Page Title="News" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="TutorStudentAppNomzaza.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <!-- Hero Section -->
        <div class="text-center mb-5">
            <h2 class="fw-bold">Testimonials from Past Students</h2>
            <hr />
        </div>
        <br />
        <br />
        <!-- Section 1: Company Overview -->
        <div class="row align-items-center flex-lg-row-reverse mb-5">
            <div class="col-lg-6">
                <img src="images/1.jpg" alt="Company Image" style="width: 200px;" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <p class="text-muted">
                    "Thanks to Qurious Quest Tutors, I passed Mathematics and Physical Science with 
                    distinction and went on to study Mechatronic Engineering at Stellenbosch University. Today, I am a 
                    qualified and practicing Mechatronic Engineer!
                    Mr. Nomzaza’s teachings in high school shaped me and gave me the confidence to succeed. His words, *'If you fail to 
                    prepare, you prepare to fail,'* stayed with me through university and beyond." — Athenkosi Hlonyane
                </p>
            </div>
        </div>
        <br />
        <!-- Section 2: Mission -->
        <div class="row align-items-center mb-5">
            <div class="col-lg-6">
                <img src="images/1.jpg" alt="Company Image" style="width: 200px;" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <p class="text-muted">
                    "This program changed my life! The tutors are patient, and the learning environment 
                    is engaging and fun." – Xolani Shabalala.
                </p>
            </div>
        </div>
        <br />
        <!-- Section 3: Team -->
        <div class="row align-items-center flex-lg-row-reverse mb-5">
            <div class="col-lg-6">
                <img src="images/1.jpg" alt="Company Image" style="width: 200px;" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <p class="text-muted">"From failing Science to achieving an 80% final mark – Qurious Quest made it possible!" – Thandiwe M.</p>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
