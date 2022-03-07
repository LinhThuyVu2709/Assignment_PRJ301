<%-- 
    Document   : contact
    Created on : Mar 7, 2022, 2:18:09 AM
    Author     : LinhVT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Contact</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#"><img src="img/logo.png" alt=""></a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                    <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>$150.00</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__auth">
                    <a href="#"><i class="fa fa-user"></i> Login</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li><a href="homepage.jsp">Home</a></li>
                    <li class="active"><a href="#">Bakeware</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="silicone-bakeware.jsp">Silicone Bakeware</a></li>
                            <li><a href="nonstick-stinbakeware.jsp">Nonstick & Stin Bakeware</a></li>
                            <li><a href="paper-bakeware.jsp">Paper Bakeware</a></li>
                            <li><a href="baking-tools.jsp">Baking Tools</a></li>
                        </ul>
                    </li>
                    <li><a href="ingredients.jsp">Ingredients</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="color-dust.jsp">Color Dusts & Flavours</a></li>
                            <li><a href="baking-ingredients.jsp">Baking Ingredients</a></li>
                            <li><a href="chocolate-ingredients.jsp">Chocolate Ingredients</a></li>
                            <li><a href="fondants.jsp">Fondants & Gumpaste</a></li>
                        </ul>
                    </li>
                    <li><a href="recipe.jsp">Recipes</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="https://www.facebook.com/thuylinh0902.27/"><i class="fa fa-facebook"></i></a>
                <a href="https://twitter.com/?lang=vi"><i class="fa fa-twitter"></i></a>
                <a href="https://www.linkedin.com/in/vu-linh-150491220/"><i class="fa fa-linkedin"></i></a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i> thuylinhmaruko@gmail.com</li>
                    <li>Only the best ingredients for your masterpiece</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i>thuylinhmaruko@gmail.com</li>
                                    <li>Only the best ingredients for your masterpiece</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="https://www.facebook.com/thuylinh0902.27/"><i class="fa fa-facebook"></i></a>
                                    <a href="https://twitter.com/?lang=vi"><i class="fa fa-twitter"></i></a>
                                    <a href="https://www.linkedin.com/in/vu-linh-150491220/"><i
                                            class="fa fa-linkedin"></i></a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="#"><i class="fa fa-user"></i> Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="homepage.jsp"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="homepage.jsp">Home</a></li>
                                <li><a href="bakewares.jsp">Bakeware</a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="silicone-bakeware.jsp">Silicone Bakeware</a></li>
                                        <li><a href="nonstick-stinbakeware.jsp">Nonstick & Stin Bakeware</a></li>
                                        <li><a href="paper-bakeware.jsp">Paper Bakeware</a></li>
                                        <li><a href="baking-tools.jsp">Baking Tools</a></li>
                                    </ul>
                                </li>
                                <li><a href="ingredients.jsp">Ingredients</a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="color-dust.jsp">Color Dusts & Flavours</a></li>
                                        <li><a href="baking-ingredients.jsp">Baking Ingredients</a></li>
                                        <li><a href="chocolate-ingredients.jsp">Chocolate Ingredients</a></li>
                                        <li><a href="fondants.jsp">Fondants & Gumpaste</a></li>
                                    </ul>
                                </li>
                                <li><a href="recipe.jsp">Recipes</a></li>
                                <li class="active"><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <ul>
                                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                                <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                            </ul>
                            <div class="header__cart__price">item: <span>$150.00</span></div>
                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb4.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Contact Us</h2>
                            <div class="breadcrumb__option">
                                <a href="homepage.jsp">Home</a>
                                <span>Contact Us</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Contact Section Begin -->
        <section class="contact spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                        <div class="contact__widget">
                            <span class="icon_phone"></span>
                            <h4>Phone</h4>
                            <p>+84 829899484</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                        <div class="contact__widget">
                            <span class="icon_pin_alt"></span>
                            <h4>Address</h4>
                            <p>123 Thach That, Ha Noi</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                        <div class="contact__widget">
                            <span class="icon_clock_alt"></span>
                            <h4>Open time</h4>
                            <p>10:00 am to 23:00 pm</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                        <div class="contact__widget">
                            <span class="icon_mail_alt"></span>
                            <h4>Email</h4>
                            <p>thuylinhmaruko2709.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact Section End -->

        <!-- Map Begin -->
        <div class="map">
            %"><iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                       src="https://maps.google.com/maps?width=100%25&amp;height=500&amp;hl=en&amp;q=KTX%20Nha%20Ong%20Ba+(Bake%20Of%20Art)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a
                    href="https://www.gps.ie/truck-gps/">vehicle tracking</a></iframe>
            <div class="map-inside">
                <i class="icon_pin"></i>
                <div class="inside-widget">
                    <h4>Ha Noi</h4>
                    <ul>
                        <li>Phone: +84 829899484</li>
                        <li>Add: 123 Thach That, Ha Noi</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Map End -->

        <!-- Contact Form Begin -->
        <div class="contact-form spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="contact__form__title">
                            <h2>Leave Message</h2>
                        </div>
                    </div>
                </div>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <input type="text" placeholder="Your name">
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <input type="text" placeholder="Your Email">
                        </div>
                        <div class="col-lg-12 text-center">
                            <textarea placeholder="Your message"></textarea>
                            <button type="submit" class="site-btn">SEND MESSAGE</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Contact Form End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="homepage.jsp"><img src="img/logo.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Address: 123 Thach That, Ha Noi</li>
                                <li>Phone: +84 829899494</li>
                                <li>Email: thuylinhmaruko@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>About us</h6>
                            <ul>
                                <li><a href="bakewares.jsp">Bakewares</li>
                                <li><a href="ingredients.jsp">Ingredients</a></li>
                                <li><a href="shoping-cart.jsp">Shopping cart</a></li>
                            </ul>
                            <ul>
                                <li><a href="recipe.jsp">Recipes</a></li>
                                <li><a href="contact.jsp">Contact us</a></li>
                                <li><a href="checkout.jsp">Checkout</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Join Our Newsletter Now</h6>
                            <p>Get E-mail updates about our latest shop and special offers.</p>
                            <form action="#">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__widget__social">
                                <a href="https://www.facebook.com/thuylinh0902.27/"><i class="fa fa-facebook"></i></a>
                                <a href="https://www.facebook.com/thuylinh0902.27/"><i class="fa fa-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>



    </body>

</html>
