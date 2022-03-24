<%-- 
    Document   : checkout
    Created on : Mar 7, 2022, 2:22:04 AM
    Author     : LinhVT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Create Order</title>

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
                    <li><a href="Cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>$${sessionScope.totalMoney}</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__auth">
                    <c:choose>
                        <c:when test="${sessionScope.account != null}">
                            <a href="#"><i class="fa fa-user"></i>${sessionScope.account.displayName}</a>
                            <a href="Logout"><i class="fa fa-sign-out"></i> Log out</a>
                        </c:when>
                        <c:otherwise>
                            <a href="Login"><i class="fa fa-user"></i> Login</a>
                        </c:otherwise>    
                    </c:choose>

                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li><a href="Home">Home</a></li>
                    <li><a href="Bakeware">Bakeware</a>
                        <ul class="header__menu__dropdown">
                            <c:forEach items="${sessionScope.sublistBakeware}" var="b"> 
                                <li><a href="filter-bakeware?subB_id=${b.id}">${b.name}</a></li>
                                </c:forEach>
                        </ul>
                    </li>
                    <li><a href="Ingredient">Ingredients</a>
                        <ul class="header__menu__dropdown">
                            <c:forEach items="${sessionScope.sublistIngredient}" var="i"> 
                                <li><a href="filter-ingredient?subI_id=${i.id}">${i.name}</a></li>
                                </c:forEach>
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
                                    <li><i class="fa fa-envelope"></i> thuylinhmaruko@gmail.com</li>
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
                                    <c:choose>
                                        <c:when test="${sessionScope.account != null}">
                                            <a href="#"><i class="fa fa-user"></i>${sessionScope.account.displayName}</a>
                                            <a href="Logout"><i class="fa fa-sign-out"></i> Log out</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="Login"><i class="fa fa-user"></i> Login</a>
                                        </c:otherwise>    
                                    </c:choose>

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
                            <a href="Home"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="Home">Home</a></li>
                                <li><a href="Bakeware">Bakeware</a>
                                    <ul class="header__menu__dropdown">
                                        <c:forEach items="${sessionScope.sublistBakeware}" var="b"> 
                                            <li><a href="filter-bakeware?subB_id=${b.id}">${b.name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                                <li><a href="Ingredient">Ingredients</a>
                                    <ul class="header__menu__dropdown">
                                        <c:forEach items="${sessionScope.sublistIngredient}" var="i"> 
                                            <li><a href="filter-ingredient?subI_id=${i.id}">${i.name}</a></li>
                                            </c:forEach>
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
                                <li><a href="Cart"><i class="fa fa-shopping-bag"></i> <span>${sessionScope.carts.size()}</span></a></li>
                            </ul>
                            <div class="header__cart__price">item: <span>$${sessionScope.totalMoney}</span></div>
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
        <section class="hero hero-normal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>All departments</span>
                            </div>
                            <ul>
                                <c:forEach items="${sessionScope.sublistBakeware}" var="b"> 
                                    <li><a href="filter-bakeware?subB_id=${b.id}">${b.name}</a></li>
                                    </c:forEach>
                                    <c:forEach items="${sessionScope.sublistIngredient}" var="i"> 
                                    <li><a href="filter-ingredient?subI_id=${i.id}">${i.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
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
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->



        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4>Order Details</h4>
                    <form action="CreateOrder" method="post">
                        <div class="row">
                            <div class="col-lg-8 col-md-6">
                                <div class="checkout__input">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <p>By Account ID</p>
                                            <input type="text" id="account_id" name="account_id">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="checkout__input">
                                            <p>Total Price</p>
                                            <input type="text" id="totalPrice" name="totalPrice">
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="checkout__input">
                                            <p>Note</p>
                                            <input type="text" id="note" name="note">
                                        </div>
                                    </div>
                                </div>
                                

                                <div class="checkout__input">
                                    <p>Created time</p>
                                    <input type="text" id="created_date" name="created_date">
                                </div>
                                <div class="checkout__input">
                                    <p>Shipping_id</p>
                                    <input type="text" id="shipping_id" name="shipping_id">
                                </div>


                                <button type="submit" class="site-btn">CREATE</button> 
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </section>

        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="Home"><img src="img/logo.png" alt=""></a>
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
                                <li><a href="Bakeware">Bakewares</li>
                                <li><a href="Ingredient">Ingredients</a></li>
                                <li><a href="Cart">Shopping cart</a></li>
                            </ul>
                            <ul>
                                <li><a href="recipe.jsp">Recipes</a></li>
                                <li><a href="contact.jsp">Contact us</a></li>
                                <li><a href="Checkout">Checkout</a></li>
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