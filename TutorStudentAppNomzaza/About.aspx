<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TutorStudentAppNomzaza.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <!-- Hero Section -->
        <div class="text-center mb-5">
            <h2 class="fw-bold">About Us</h2>
            <hr />
        </div>
        <br />
        <br />
        <!-- Section 1: Company Overview -->
        <div class="row align-items-center flex-lg-row-reverse mb-5">
            <div class="col-lg-6">
                <img src="images/53165082_2173527319352605_2534253866845732864_n.jpg" alt="Company Image" style="width: 500px;" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <h3 class="fw-bold">Who We Are</h3>
                <p class="text-muted">Qurious Quest Tutors is a social enterprise that provides Mathematics and Science 
                    tutoring to underprivileged learners in Nelson Mandela Bay Municipality. Since our founding in 2014, 
                    we have played a pivotal role in improving students' academic performance, fostering a passion for 
                    STEM education, and equipping learners with critical problem-solving skills. Our program caters to 
                    Grades 6-12 and includes Saturday, Midweek, and Holiday classes.</p>
            </div>
        </div>
        <br />
        <!-- Section 2: Mission -->
        <div class="row align-items-center mb-5">
            <div class="col-lg-6">
                <img src="Images/85112709_2865813106790686_7554206170622197760_n.jpg" alt="Company Image" style="width: 500px;" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <h3 class="fw-bold">Our Mission</h3>
                <p class="text-muted">We bridge educational gaps by providing equitable, high-quality math and science tutoring 
                    and mentorship, empowering learners of all backgrounds to excel academically and pursue future success.</p>
            </div>
        </div>
        <br />
        <!-- Section 3: Team -->
        <div class="row align-items-center col-lg-12">
            <div class="col-lg-12">
                <h3 class="fw-bold">Meet the Team</h3>
            </div>
        </div>
        <div class="row align-items-stretch text-center">
            <!-- Card 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblSubjectName1" runat="server" Text="Mr Luthando Nomzaza"></asp:Label>
                        </h5>
                        <img src="Images/Capture.PNG" class="img-fluid mb-2" alt="">
                        <p class="card-text">
                            <strong>Founder/Director</strong>
                            <br />
                            <asp:Label ID="lblStartTime1" runat="server" Text=""></asp:Label>
                            <br />
                            <strong>(Mathematics and Science Tutor)</strong>
                            <br />
                            <asp:Label ID="lblEndTime1" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">

                            <asp:Label ID="lblSubjectName2" runat="server" Text="Mr. Vuyolwethu Kwindla"></asp:Label>
                        </h5>
                        <img src="Images/53684118_2175326965839307_116270627333079040_n.jpg" class="img-fluid mb-2" alt="">
                        <p class="card-text">
                            <strong>Tutor</strong>
                            <br />
                            <asp:Label ID="lblStartTime2" runat="server" Text=""></asp:Label>
                            <br />
                            <strong>(Accounting and Mathematics)</strong>
                            <br />
                            <asp:Label ID="lblEndTime2" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblSubjectName3" runat="server" Text="Mr. Bubele Lupondwana"></asp:Label>
                        </h5>
                        <img src="Images/Luphondwana.jpg" class="img-fluid mb-2" alt="">
                        <p class="card-text">
                            <strong>Tutor</strong>
                            <br />
                            <asp:Label ID="lblStartTime3" runat="server" Text=""></asp:Label>
                            <br />
                            <strong>(Life Sciences and Mathematics)</strong>
                            <br />
                            <asp:Label ID="lblEndTime3" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="Label1" runat="server" Text="Ms Sethu Jama"></asp:Label>
                        </h5>
                        <img src="Images/s" class="img-fluid mb-2" alt="">
                        <p class="card-text">
                            <strong>Tutor</strong>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            <br />
                            <strong>(Accounting and E.M.S)</strong>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="Label4" runat="server" Text="Coming Soon"></asp:Label>
                        </h5>
                        <img src="Images/s" class="img-fluid mb-2" alt="">
                        <p class="card-text">
                            <strong>Tutor</strong>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                            <br />
                            <strong>(Life Sciences and Natural Science)</strong>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <!-- Call to Action -->
        <div class="text-center mt-5">
            <h4 class="fw-bold">Join Us on Our Journey</h4>
            <a href="contact.aspx" class="btn btn-primary">Contact Us</a>
        </div>
</div>
</asp:Content>
