<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TutorStudentAppNomzaza._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome</h1>
        <p class="lead">
            Welcome to Qurious Quest Tutors, a social enterprise dedicated to empowering underprivileged learners in the Nelson Mandela Bay Municipality. Celebrating 10 years
of excellence since our establishment in 2014, we continue to provide high-quality Mathematics and Science tutoring to students seeking academic success.
        </p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Go to &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-10 align-content-center ">
            <h2>Our Pride</h2>
            <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel" style="width: 1100px; height: 600px;">
                <div class="carousel-inner" style="width: 1100px; height: 600px;">
                    
                    <div class="carousel-item active">
                        <img src="Images/20250201_092920.jpg" style="width: 1100px; height: 600px;" class="d-block" alt="Slide 1">
                        
                    </div>
                    <div class="carousel-item">
                        <img src="Images/53274663_2173527562685914_1100530333889069056_n.jpg" style="width: 1100px; height: 600px;" class="d-block" alt="Slide 2">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/465438731_8834027566635847_766630399232490932_n.jpg" style="width: 1100px; height: 600px;" class="d-block" alt="Slide 3">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Online class.jpg" style="width: 1100px; height: 600px;" class="d-block" alt="Slide 4">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon bold" style="font-weight: 600" aria-hidden="true"></span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                </a>
            </div>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-6">
            <h2>What we offer</h2>
            <ol>
                <li>Affordable & Accessible Tutoring – We provide top-tier tutoring services at low to disadvantaged learners.</li>
                <li>Proven Track Record – Our program has consistently improved students’ Mathematics and Science performance for the past 10 years.</li>
                <li>Experienced and Passionate Tutors – Our tutors are passionate educators dedicated to empowering the next generation.</li>
            </ol>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Go to &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Pricing</h2>
            <div>
                <p>Group Tutoring : R300.00.</p>
            </div>
            <div>
                <p>
                    Private Tutoring:
                R150.00 per hour on ad hoc basis.
                </p>
            </div>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Go to &raquo;</a>
            </p>
        </div>
    </div>
    <br />

</asp:Content>
