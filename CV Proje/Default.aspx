<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CV_Proje.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Mustafa Çörekci CV</title>
    
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top"><span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/profile.jpg" alt="" />
                    </ItemTemplate>
                </asp:Repeater>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimlerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Eğitim Hayatım</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Yeteneklerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Hobilerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Sertifikalarım</a></li>
            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- HAKKIMDA-->
        <section class="resume-section" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("soyad") %>'></asp:Label>
                            </span></h1>
                        <div class="subheading mb-5">
                            Adres   :
                           
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("adres") %>'></asp:Label>
                            <br />
                            Telefon :
                           
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("telefon") %>'></asp:Label>
                            <br />
                            Mail    : <%--<a href='<%# Eval("mail") %>'>--%>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("mail") %>'></asp:Label>
                            <br />
                            </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("hakkimda") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a class="social-icon" href="#"><i class="fab fa-linkedin-in"></i></a><a class="social-icon" href="#"><i class="fab fa-github"></i></a><a class="social-icon" href="#"><i class="fab fa-instagram"></i></a><a class="social-icon" href="#"><i class="fab fa-facebook-f"></i></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- DENEYİM-->
        <section class="resume-section" id="experience">
            <div class="my-auto">
                <h2 class="mb-5">DENEYİMLERİM</h2>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="my-auto">
                            <div class="resume-section-content">
                                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                                    <div class="flex-grow-1">
                                        <h3 class="mb-0">
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("baslik") %>'></asp:Label>
                                        </h3>
                                        <div class="subheading mb-3">
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("altBaslik") %>'></asp:Label>
                                        </div>
                                        <p>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="flex-shrink-0">
                                        <span class="text-primary">
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <hr class="m-0" />
        <!-- EĞİTM-->
        <section class="resume-section" id="education">
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h2 class="mb-5">EĞİTİM HAYATIM</h2>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("baslik") %>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("altBaslik") %>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("notOrtalama") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("tarih") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </section>
        <hr class="m-0" />
        <!-- YETENEKLERİM-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">YETENEKLERİM</h2>
                <div class="subheading mb-3">Programlama Dilleri</div>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                    <li class="list-inline-item"><i class="fab fa-react"></i></li>
                    <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                    <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                    <li class="list-inline-item"><i class="fab fa-java"></i></li>
                    <li class="list-inline-item"><i class="fab fa-chrome "></i></li>
                </ul>
                <div class="subheading mb-3">Workflow</div>
                <ul class="fa-ul mb-0">
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <li>
                                <span class="fa-li"><i class="fas fa-check"></i></span>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("yetenek") %>'></asp:Label>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <hr class="m-0" />
        <!-- HOBİ-->
        <section class="resume-section" id="interests">
            <div class="resume-section-content">
                <h2 class="mb-5">HOBİLERİM</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <p>
                            -->
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("hobi") %>'></asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <hr class="m-0" />
        <!-- SERTİFİKA-->
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">SERTİFİKALARIM</h2>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("sertifika") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <!-- Third party plugin JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
