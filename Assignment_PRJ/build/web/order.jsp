<%-- 
    Document   : dashboard
    Created on : Mar 13, 2022, 5:22:12 PM
    Author     : LinhVT
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <title>Order</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="/Assignment_PRJ/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="/Assignment_PRJ/css/style.css" type="text/css">
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
                                <li><a href="order">Order Control</a>
                                </li>
                                <li><a href="dashboard">Product Control</a>
                                </li>
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

        
        <!-- Hero Section End -->

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="/Assignment_PRJ/img/breadcrumb1.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Orders</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- List Of Product Section Begin -->
        <section class="shoping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <a class="btn btn-outline-success" href="CreateOrder" role="button">CREATE NEW ORDER</a>
                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Notes</th>
                                        <th>Total Price</th>
                                        <th>Created Time</th>
                                        <th>By User</th>
                                        <th>Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listAllOrder}" var="i">
                                        <tr>
                                            <td class="shoping__cart__price">${i.id}</td>
                                            <td class="shoping__cart__price">
                                                ${i.note}
                                            </td>
                                            <td class="shoping__cart__price">
                                                <p>
                                                    $<fmt:formatNumber type="number" maxFractionDigits="3" value="${i.totalPrice}" />
                                                </p>
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                ${i.created_date}
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                ${i.account.displayName}
                                            </td>
                                            <td class="shoping__cart__item__close">
                                                <a href="DeleteOrder?orderId=${i.id}" onclick="if (!(confirm('Do you really want to delete this?')))
                                                            return false"><span class="icon_trash"></span></a>
                                                <a href="UpdateOrder?orderId=${i.id}"><span class="icon_tools"></span></a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="Home"><img src="/Assignment_PRJ/img/logo.png" alt=""></a>
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