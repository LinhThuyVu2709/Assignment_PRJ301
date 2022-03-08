package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class bakewares_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Bakewares</title>\n");
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
      out.write("\n");
      out.write("        <!-- Humberger Begin -->\n");
      out.write("        <div class=\"humberger__menu__overlay\"></div>\n");
      out.write("        <div class=\"humberger__menu__wrapper\">\n");
      out.write("            <div class=\"humberger__menu__logo\">\n");
      out.write("                <a href=\"#\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__cart\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i> <span>1</span></a></li>\n");
      out.write("                    <li><a href=\"shoping-cart.jsp\"><i class=\"fa fa-shopping-bag\"></i> <span>3</span></a></li>\n");
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
      out.write("                            <li><a href=\"silicone-bakeware.jsp\">Silicone Bakeware</a></li>\n");
      out.write("                            <li><a href=\"nonstick-stinbakeware.jsp\">Nonstick & Stin Bakeware</a></li>\n");
      out.write("                            <li><a href=\"paper-bakeware.jsp\">Paper Bakeware</a></li>\n");
      out.write("                            <li><a href=\"baking-tools.jsp\">Baking Tools</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"Ingredient\">Ingredients</a>\n");
      out.write("                        <ul class=\"header__menu__dropdown\">\n");
      out.write("                            <li><a href=\"color-dust.jsp\">Color Dusts & Flavours</a></li>\n");
      out.write("                            <li><a href=\"baking-ingredients.jsp\">Baking Ingredients</a></li>\n");
      out.write("                            <li><a href=\"chocolate-ingredients.jsp\">Chocolate Ingredients</a></li>\n");
      out.write("                            <li><a href=\"fondants.jsp\">Fondants & Gumpaste</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"recipe.jsp\">Recipes</a></li>\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                </ul>\n");
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
      out.write("                                    <li><i class=\"fa fa-envelope\"></i>thuylinhmaruko@gmail.com</li>\n");
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
      out.write("                                <li><a href=\"Home\">Home</a></li>\n");
      out.write("                                <li class=\"active\"><a href=\"#\">Bakeware</a>\n");
      out.write("                                    <ul class=\"header__menu__dropdown\">\n");
      out.write("                                        <li><a href=\"silicone-bakeware.jsp\">Silicone Bakeware</a></li>\n");
      out.write("                                        <li><a href=\"nonstick-stinbakeware.jsp\">Nonstick & Stin Bakeware</a></li>\n");
      out.write("                                        <li><a href=\"paper-bakeware.jsp\">Paper Bakeware</a></li>\n");
      out.write("                                        <li><a href=\"baking-tools.jsp\">Baking Tools</a></li>\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"Ingredient\">Ingredients</a>\n");
      out.write("                                    <ul class=\"header__menu__dropdown\">\n");
      out.write("                                        <li><a href=\"color-dust.jsp\">Color Dusts & Flavours</a></li>\n");
      out.write("                                        <li><a href=\"baking-ingredients.jsp\">Baking Ingredients</a></li>\n");
      out.write("                                        <li><a href=\"chocolate-ingredients.jsp\">Chocolate Ingredients</a></li>\n");
      out.write("                                        <li><a href=\"fondants.jsp\">Fondants & Gumpaste</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"recipe.jsp\">Recipes</a></li>\n");
      out.write("                                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <div class=\"header__cart\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-heart\"></i> <span>1</span></a></li>\n");
      out.write("                                <li><a href=\"shoping-cart.jsp\"><i class=\"fa fa-shopping-bag\"></i> <span>3</span></a></li>\n");
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
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
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
      out.write("                                    <input type=\"text\" placeholder=\"What do you need?\">\n");
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
      out.write("                            <h2>Bake Of Art</h2>\n");
      out.write("                            <div class=\"breadcrumb__option\">\n");
      out.write("                                <a href=\"Home\">Home</a>\n");
      out.write("                                <span>Bakewares</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Breadcrumb Section End -->\n");
      out.write("\n");
      out.write("        <!-- Product Section Begin -->\n");
      out.write("        <section class=\"product spad\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-5\">\n");
      out.write("                        <div class=\"sidebar\">\n");
      out.write("                            <div class=\"sidebar__item\">\n");
      out.write("                                <h4>Department</h4>\n");
      out.write("                                <ul>\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-9 col-md-7\">\n");
      out.write("                        <div class=\"product__discount\">\n");
      out.write("                            <div class=\"section-title product__discount__title\">\n");
      out.write("                                <h2>Sale Off</h2>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"product__discount__slider owl-carousel\">\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-1.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Dried Fruit</span>\n");
      out.write("                                                <h5><a href=\"#\">Raisin’n’nuts</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-2.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Vegetables</span>\n");
      out.write("                                                <h5><a href=\"#\">Vegetables’package</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-3.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Dried Fruit</span>\n");
      out.write("                                                <h5><a href=\"#\">Mixed Fruitss</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-4.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Dried Fruit</span>\n");
      out.write("                                                <h5><a href=\"#\">Raisin’n’nuts</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-5.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Dried Fruit</span>\n");
      out.write("                                                <h5><a href=\"#\">Raisin’n’nuts</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4\">\n");
      out.write("                                        <div class=\"product__discount__item\">\n");
      out.write("                                            <div class=\"product__discount__item__pic set-bg\"\n");
      out.write("                                                 data-setbg=\"img/product/discount/pd-6.jpg\">\n");
      out.write("                                                <div class=\"product__discount__percent\">-20%</div>\n");
      out.write("                                                <ul class=\"product__item__pic__hover\">\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product__discount__item__text\">\n");
      out.write("                                                <span>Dried Fruit</span>\n");
      out.write("                                                <h5><a href=\"#\">Raisin’n’nuts</a></h5>\n");
      out.write("                                                <div class=\"product__item__price\">$30.00 <span>$36.00</span></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"filter__item\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-4 col-md-5\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-4 col-md-4\">\n");
      out.write("                                    <div class=\"filter__found\">\n");
      out.write("                                        <h6><span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listBakewareProduct.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span> Products found</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-4 col-md-3\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">                       \n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"product__pagination\">\n");
      out.write("                            <a href=\"#\">1</a>\n");
      out.write("                            <a href=\"#\">2</a>\n");
      out.write("                            <a href=\"#\">3</a>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-long-arrow-right\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Product Section End -->\n");
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
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listSubCategory}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("subCategory");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <li><a href=\"silicone-bakeware.jsp\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subCategory.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                ");
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
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listSubCategory}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("subCategory");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <li>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subCategory.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</li>\n");
          out.write("                                    ");
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
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listBakewareProduct}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("bakeware");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <div class=\"col-lg-4 col-md-6 col-sm-6\">\n");
          out.write("                                    <div class=\"product__item\">\n");
          out.write("                                        <div class=\"product__item__pic set-bg\" data-setbg=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${bakeware.imageURL}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                            <ul class=\"product__item__pic__hover\">\n");
          out.write("                                                <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n");
          out.write("                                            </ul>\n");
          out.write("                                        </div>\n");
          out.write("                                        <div class=\"product__item__text\">\n");
          out.write("                                            <h6><a href=\"#\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${bakeware.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h6>\n");
          out.write("                                            <h5>$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${bakeware.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("                                        </div>\n");
          out.write("                                    </div>\n");
          out.write("                                </div>\n");
          out.write("                            ");
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
}
