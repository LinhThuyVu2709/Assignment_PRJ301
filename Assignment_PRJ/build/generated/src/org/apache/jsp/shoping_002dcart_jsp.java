package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shoping_002dcart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"Ogani Template\">\n");
      out.write("        <meta name=\"keywords\" content=\"Ogani, unica, creative, html\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Shopping cart</title>\n");
      out.write("\n");
      out.write("        <!-- Google Font -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Css Styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/elegant-icons.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery-ui.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/slicknav.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Humberger Begin -->\n");
      out.write("        <div class=\"humberger__menu__overlay\"></div>\n");
      out.write("        <div class=\"humberger__menu__wrapper\">\n");
      out.write("            <div class=\"humberger__menu__logo\">\n");
      out.write("                <a href=\"#\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__cart\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i> <span>1</span></a></li>\n");
      out.write("                    <li><a href=\"shoping-cart.jsp\"><i class=\"fa fa-shopping-bag\"></i> <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.carts.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"header__cart__price\">item: <span>$150.00</span></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__widget\">\n");
      out.write("                <div class=\"header__top__right__auth\">\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-user\"></i> Login</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <nav class=\"humberger__menu__nav mobile-menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li class=\"active\"><a href=\"Home\">Home</a></li>\n");
      out.write("                    <li><a href=\"Bakeware\">Bakeware</a>\n");
      out.write("                        <ul class=\"header__menu__dropdown\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"Ingredient\">Ingredients</a>\n");
      out.write("                        <ul class=\"header__menu__dropdown\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"recipe.jsp\">Recipes</a></li>\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </nav>\n");
      out.write("            <div id=\"mobile-menu-wrap\"></div>\n");
      out.write("            <div class=\"header__top__right__social\">\n");
      out.write("                <a href=\"https://www.facebook.com/thuylinh0902.27/\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                <a href=\"https://twitter.com/?lang=vi\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                <a href=\"https://www.linkedin.com/in/vu-linh-150491220/\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__contact\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><i class=\"fa fa-envelope\"></i> thuylinhmaruko@gmail.com</li>\n");
      out.write("                    <li>Only the best ingredients for your masterpiece</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Humberger End -->\n");
      out.write("\n");
      out.write("        <!-- Header Section Begin -->\n");
      out.write("        <header class=\"header\">\n");
      out.write("            <div class=\"header__top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <div class=\"header__top__left\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><i class=\"fa fa-envelope\"></i> thuylinhmaruko@gmail.com</li>\n");
      out.write("                                    <li>Only the best ingredients for your masterpiece</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <div class=\"header__top__right\">\n");
      out.write("                                <div class=\"header__top__right__social\">\n");
      out.write("                                    <a href=\"https://www.facebook.com/thuylinh0902.27/\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                                    <a href=\"https://twitter.com/?lang=vi\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                                    <a href=\"https://www.linkedin.com/in/vu-linh-150491220/\"><i\n");
      out.write("                                            class=\"fa fa-linkedin\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"header__top__right__auth\">\n");
      out.write("                                    <a href=\"#\"><i class=\"fa fa-user\"></i> Login</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <div class=\"header__logo\">\n");
      out.write("                            <a href=\"Home\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <nav class=\"header__menu\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li class=\"active\"><a href=\"Home\">Home</a></li>\n");
      out.write("                                <li><a href=\"Bakeware\">Bakeware</a>\n");
      out.write("                                    <ul class=\"header__menu__dropdown\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"Ingredient\">Ingredients</a>\n");
      out.write("                                    <ul class=\"header__menu__dropdown\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"recipe.jsp\">Recipes</a></li>\n");
      out.write("                                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                            </ul>\n");
      out.write("\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <div class=\"header__cart\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-heart\"></i> <span>1</span></a></li>\n");
      out.write("                                <li><a href=\"shoping-cart.jsp\"><i class=\"fa fa-shopping-bag\"></i> <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.carts.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <div class=\"header__cart__price\">item: <span>$150.00</span></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"humberger__open\">\n");
      out.write("                    <i class=\"fa fa-bars\"></i>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- Header Section End -->\n");
      out.write("\n");
      out.write("        <!-- Hero Section Begin -->\n");
      out.write("        <section class=\"hero hero-normal\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <div class=\"hero__categories\">\n");
      out.write("                            <div class=\"hero__categories__all\">\n");
      out.write("                                <i class=\"fa fa-bars\"></i>\n");
      out.write("                                <span>All departments</span>\n");
      out.write("                            </div>\n");
      out.write("                            <ul>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                        <div class=\"hero__search\">\n");
      out.write("                            <div class=\"hero__search__form\">\n");
      out.write("                                <form action=\"#\">\n");
      out.write("                                    <div class=\"hero__search__categories\">\n");
      out.write("                                        All Categories\n");
      out.write("                                        <span class=\"arrow_carrot-down\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <input type=\"text\" placeholder=\"What do yo u need?\">\n");
      out.write("                                    <button type=\"submit\" class=\"site-btn\">SEARCH</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"hero__search__phone\">\n");
      out.write("                                <div class=\"hero__search__phone__icon\">\n");
      out.write("                                    <i class=\"fa fa-phone\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"hero__search__phone__text\">\n");
      out.write("                                    <h5>+84 829899484</h5>\n");
      out.write("                                    <span>support 24/7 time</span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Hero Section End -->\n");
      out.write("\n");
      out.write("        <!-- Breadcrumb Section Begin -->\n");
      out.write("        <section class=\"breadcrumb-section set-bg\" data-setbg=\"img/breadcrumb2.jpg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12 text-center\">\n");
      out.write("                        <div class=\"breadcrumb__text\">\n");
      out.write("                            <h2>Shopping Cart</h2>\n");
      out.write("                            <div class=\"breadcrumb__option\">\n");
      out.write("                                <a href=\"Home\">Home</a>\n");
      out.write("                                <span>Shopping Cart</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Breadcrumb Section End -->\n");
      out.write("\n");
      out.write("        <!-- Shoping Cart Section Begin -->\n");
      out.write("        <section class=\"shoping-cart spad\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"shoping__cart__table\">\n");
      out.write("                            <table>\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th class=\"shoping__product\">Products</th>\n");
      out.write("                                        <th>Price</th>\n");
      out.write("                                        <th>Quantity</th>\n");
      out.write("                                        <th>Total</th>\n");
      out.write("                                        <th></th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td class=\"shoping__cart__item\">\n");
      out.write("                                            <img src=\"img/cart/cart-1.jpg\" alt=\"\">\n");
      out.write("                                            <h5>Vegetable’s Package</h5>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__price\">\n");
      out.write("                                            $55.00\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__quantity\">\n");
      out.write("                                            <div class=\"quantity\">\n");
      out.write("                                                <div class=\"pro-qty\">\n");
      out.write("                                                    <input type=\"text\" value=\"1\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__total\">\n");
      out.write("                                            $110.00\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__item__close\">\n");
      out.write("                                            <span class=\"icon_close\"></span>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td class=\"shoping__cart__item\">\n");
      out.write("                                            <img src=\"img/cart/cart-2.jpg\" alt=\"\">\n");
      out.write("                                            <h5>Fresh Garden Vegetable</h5>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__price\">\n");
      out.write("                                            $39.00\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__quantity\">\n");
      out.write("                                            <div class=\"quantity\">\n");
      out.write("                                                <div class=\"pro-qty\">\n");
      out.write("                                                    <input type=\"text\" value=\"1\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__total\">\n");
      out.write("                                            $39.99\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__item__close\">\n");
      out.write("                                            <span class=\"icon_close\"></span>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td class=\"shoping__cart__item\">\n");
      out.write("                                            <img src=\"img/cart/cart-3.jpg\" alt=\"\">\n");
      out.write("                                            <h5>Organic Bananas</h5>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__price\">\n");
      out.write("                                            $69.00\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__quantity\">\n");
      out.write("                                            <div class=\"quantity\">\n");
      out.write("                                                <div class=\"pro-qty\">\n");
      out.write("                                                    <input type=\"text\" value=\"1\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__total\">\n");
      out.write("                                            $69.99\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"shoping__cart__item__close\">\n");
      out.write("                                            <span class=\"icon_close\"></span>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"shoping__cart__btns\">\n");
      out.write("                            <a href=\"#\" class=\"primary-btn cart-btn\">CONTINUE SHOPPING</a>\n");
      out.write("                            <a href=\"#\" class=\"primary-btn cart-btn cart-btn-right\"><span class=\"icon_loading\"></span>\n");
      out.write("                                Upadate Cart</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"shoping__continue\">\n");
      out.write("                            <div class=\"shoping__discount\">\n");
      out.write("                                <h5>Discount Codes</h5>\n");
      out.write("                                <form action=\"#\">\n");
      out.write("                                    <input type=\"text\" placeholder=\"Enter your coupon code\">\n");
      out.write("                                    <button type=\"submit\" class=\"site-btn\">APPLY COUPON</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"shoping__checkout\">\n");
      out.write("                            <h5>Cart Total</h5>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Subtotal <span>$454.98</span></li>\n");
      out.write("                                <li>Total <span>$454.98</span></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <a href=\"#\" class=\"primary-btn\">PROCEED TO CHECKOUT</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Shoping Cart Section End -->\n");
      out.write("\n");
      out.write("        <!-- Footer Section Begin -->\n");
      out.write("        <footer class=\"footer spad\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                        <div class=\"footer__about\">\n");
      out.write("                            <div class=\"footer__about__logo\">\n");
      out.write("                                <a href=\"Home\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("                            </div>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Address: 123 Thach That, Ha Noi</li>\n");
      out.write("                                <li>Phone: +84 829899494</li>\n");
      out.write("                                <li>Email: thuylinhmaruko@gmail.com</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 col-sm-6 offset-lg-1\">\n");
      out.write("                        <div class=\"footer__widget\">\n");
      out.write("                            <h6>About us</h6>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"Bakeware\">Bakewares</li>\n");
      out.write("                                <li><a href=\"Ingredient\">Ingredients</a></li>\n");
      out.write("                                <li><a href=\"shoping-cart.jsp\">Shopping cart</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"recipe.jsp\">Recipes</a></li>\n");
      out.write("                                <li><a href=\"contact.jsp\">Contact us</a></li>\n");
      out.write("                                <li><a href=\"checkout.jsp\">Checkout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-12\">\n");
      out.write("                        <div class=\"footer__widget\">\n");
      out.write("                            <h6>Join Our Newsletter Now</h6>\n");
      out.write("                            <p>Get E-mail updates about our latest shop and special offers.</p>\n");
      out.write("                            <form action=\"#\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Enter your mail\">\n");
      out.write("                                <button type=\"submit\" class=\"site-btn\">Subscribe</button>\n");
      out.write("                            </form>\n");
      out.write("                            <div class=\"footer__widget__social\">\n");
      out.write("                                <a href=\"https://www.facebook.com/thuylinh0902.27/\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                                <a href=\"https://www.facebook.com/thuylinh0902.27/\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!-- Footer Section End -->\n");
      out.write("\n");
      out.write("        <!-- Js Plugins -->\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.slicknav.js\"></script>\n");
      out.write("        <script src=\"js/mixitup.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistBakeware}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("b");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                <li><a href=\"filter-bakeware?subB_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistIngredient}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("i");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                <li><a href=\"filter-ingredient?subI_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistBakeware}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("b");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                            <li><a href=\"filter-bakeware?subB_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistIngredient}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("i");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                            <li><a href=\"filter-ingredient?subI_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistBakeware}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("b");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                    <li><a href=\"filter-bakeware?subB_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.sublistIngredient}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("i");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                    <li><a href=\"filter-ingredient?subI_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }
}
