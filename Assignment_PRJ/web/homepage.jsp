<%-- 
    Document   : homepage
    Created on : Mar 7, 2022, 2:10:39 AM
    Author     : LinhVT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>HomePage</title>

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
                <a href="#"><img src="img/logo.png" width="100px" height="100px" alt=""></a>
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
                    <li class="active"><a href="homepage.jsp">Home</a></li>
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
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i> thuylinhmaruko@gmail.com</li>
                                    <li>Only the best ingredients for your masterpiece</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
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
                                <li class="active"><a href="homepage.jsp">Home</a></li>

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
                                <li><a href="contact.jsp">Contact</a></li>
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

        <!-- Hero Section Begin -->
        <section class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>All departments</span>
                            </div>
                            <ul>
                                <li><a href="silicone-bakeware.jsp">Silicone Bakeware</a></li>
                                <li><a href="nonstick-stinbakeware.jsp">Nonstick & Stin Bakeware</a></li>
                                <li><a href="paper-bakeware.jsp">Paper Bakewares</a></li>
                                <li><a href="baking-tools.jsp">Baking Tools</a></li>
                                <li><a href="color-dust.jsp">Color Dusts & Flavours</a></li>
                                <li><a href="baking-ingredients.jsp">Baking Ingredients</a></li>
                                <li><a href="chocolate-ingredients.jsp">Chocolate Ingredients</a></li>
                                <li><a href="fondants.jsp">Fondants & Gumpaste</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="#">
                                    <div class="hero__search__categories">
                                        All Categories
                                        <span class="arrow_carrot-down"></span>
                                    </div>
                                    <input type="text" placeholder="What do you need?">
                                    <button type="submit" class="site-btn">SEARCH</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>+84 829899484</h5>
                                    <span>support 24/7 time</span>
                                </div>
                            </div>
                        </div>
                        <div class="hero__item set-bg" data-setbg="img/hero/banner1.jpg">
                            <div class="hero__text">
                                <span>BIRTHDAY CAKE</span>
                                <h2>Your family <br />100% gonna love it</h2>
                                <p>Free Pickup and Delivery Available</p>
                                <a href="ingredients.jsp" class="primary-btn">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Categories Section Begin -->
        <section class="categories">
            <div class="container">
                <div class="row">
                    <div class="categories__slider owl-carousel">
                        <div class="col-lg-3">
                            <div class="categories__item set-bg"
                                 data-setbg="img/categories/bakewares/silicone-bakeware.jpg">
                                <h5><a href="silicone-bakeware.jsp">Silicone bakeware</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg"
                                 data-setbg="img/categories/bakewares/nonstick-stin-bakeware.jpg">
                                <h5><a href="nonstick-stinbakeware.jsp">Nonestick & Stin Bakeware</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/bakewares/paper-bakeware.jpg">
                                <h5><a href="paper-bakeware.jsp">Paper Bakeware</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg"
                                 data-setbg="img/categories/ingredients/baking-ingredients.jpg">
                                <h5><a href="baking-ingredients.jsp">Baking Ingredients</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/ingredients/fondants.jpg">
                                <h5><a href="fondants.jsp">Fondants & Gumpaste</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Categories Section End -->

        <!-- Featured Section Begin -->
        <section class="featured spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Featured Product</h2>
                        </div>
                        <div class="featured__controls">
                            <ul>
                                <li class="active" data-filter="*">All</li>
                                <li data-filter=".oranges">Oranges</li>
                                <li data-filter=".fresh-meat">Fresh Meat</li>
                                <li data-filter=".vegetables">Vegetables</li>
                                <li data-filter=".fastfood">Fastfood</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row featured__filter">
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-5.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Featured Section End -->

        <!-- Blog Section Begin -->
        <section class="from-blog spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title from-blog__title">
                            <h2>From The Blog</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-1.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="#">Cooking tips make cooking simple</a></h5>
                                <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                                <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-3.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="#">Visit the clean farm in the US</a></h5>
                                <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->

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
