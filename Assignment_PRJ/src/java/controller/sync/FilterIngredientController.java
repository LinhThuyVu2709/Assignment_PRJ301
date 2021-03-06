/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.sync;

import dao.ProductDAO;
import dao.SubCategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.SubCategory;

/**
 *
 * @author LinhVT
 */
public class FilterIngredientController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int ingredient_subID = Integer.parseInt(request.getParameter("subI_id"));
        final int PAGE_SIZE = 6;
        int page = 1;

        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }
        ProductDAO ingredientDAO = new ProductDAO();
        int totalIngredient = ingredientDAO.getTotalProductBySUBCategory_ID(ingredient_subID);
        int totalPage = totalIngredient / PAGE_SIZE;
        if (totalPage % PAGE_SIZE != 0) {
            totalPage += 1;
        }
        
        List<Product> listIngredientProduct = ingredientDAO.getProductInPagingBySUBCategory_ID(ingredient_subID, page, PAGE_SIZE);
        List<SubCategory> sublistBakeware = new SubCategoryDAO().getSubCategoryByCatID(1);
        List<SubCategory> sublistIngredient = new SubCategoryDAO().getSubCategoryByCatID(2);
        request.setAttribute("ingredient_subID", ingredient_subID);
        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listIngredientProduct", listIngredientProduct);
        request.setAttribute("sublistBakeware", sublistBakeware);
        request.setAttribute("sublistIngredient", sublistIngredient);
        request.getRequestDispatcher("ingredients.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
