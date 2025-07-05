<%@ Page Title="Home" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="TutorStudentAppNomzaza.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .card {
            margin: 20px;
        }
        .carousel-item img {
            width: 100%; /* Make images responsive */
            height: auto; /* Maintain aspect ratio */
        }
    </style>

    <div class="container text-center">
        <h1 class="mt-4">Welcome to Qurious Quest Tutors</h1>

        <div class="row">
            <!-- Card for Number of Cars -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">We Provide the Best</h5>
                        <p class="card-text" id="carCount">5</p>
                        <!-- Example count -->
                    </div>
                </div>
            </div>

            <!-- Card for Number of Washes -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Enjoy Mathematics</h5>
                        <p class="card-text" id="washCount">10</p>
                        <!-- Example count -->
                    </div>
                </div>
            </div>

            <!-- Card for Number of Washes to Rewards -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Sessions Attended</h5>
                        <p class="card-text" id="washesToReward">5</p>
                        <!-- Example count -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Carousel Section -->
        <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/1.jpg" class="d-block" alt="Slide 1">
                </div>
                <div class="carousel-item">
                    <img src="Images/2.jpg" class="d-block" alt="Slide 2">
                </div>
                <div class="carousel-item">
                    <img src="Images/3.jpg" class="d-block" alt="Slide 3">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
