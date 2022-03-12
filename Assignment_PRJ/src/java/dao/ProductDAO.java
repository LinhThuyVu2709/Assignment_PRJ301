/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import model.SubCategory;

/**
 *
 * @author LinhVT
 */
public class ProductDAO {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Products";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), //id
                        rs.getString(2), //name
                        rs.getInt(3), //quantity
                        rs.getFloat(4), //price
                        rs.getString(5), //description
                        rs.getString(6), //imageURL
                        rs.getString(7), //created_time
                        rs.getInt(8)); //sub_id
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductByCategoryID(int categoryID) {
        List<Product> list_bakeware = new ArrayList<>();
        try {
            String sql = "select * from Products inner join Sub_Category\n"
                    + "                   on Products.sub_id = Sub_Category.id\n"
                    + "                    where cat_id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), //id
                        rs.getString(2), //name
                        rs.getInt(3), //quantity
                        rs.getFloat(4), //price
                        rs.getString(5), //description
                        rs.getString(6), //imageURL
                        rs.getString(7), //created_time
                        rs.getInt(8)); //sub_id
                list_bakeware.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_bakeware;
    }

    public List<Product> getProductBySubID(int sub_id) {
        List<Product> list_ingredient = new ArrayList<>();
        try {
            String sql = "select * from Products inner join Sub_Category\n"
                    + "                   on Products.sub_id = Sub_Category.id\n"
                    + "                    where sub_id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, sub_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), //id
                        rs.getString(2), //name
                        rs.getInt(3), //quantity
                        rs.getFloat(4), //price
                        rs.getString(5), //description
                        rs.getString(6), //imageURL
                        rs.getString(7), //created_time
                        rs.getInt(8)); //sub_id
                list_ingredient.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(SubCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_ingredient;
    }

    public List<Product> getProductInPagingByCategory_ID(int categoryID, int page, int PAGE_SIZE) {
        List<Product> list_product = new ArrayList<>();
        try {
            String sql = "with x as(select ROW_NUMBER() over (order by Products.id ASC) as r,\n"
                    + "Products.id,Products.name,quantity,price,description,imageURL,created_time,sub_id\n"
                    + "from Products join Sub_Category\n"
                    + "on Products.sub_id = Sub_Category.id\n"
                    + "where cat_id=?)\n"
                    + "select * from x where r between ?*?-(?-1) and ?*?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ps.setInt(2, page);
            ps.setInt(3, PAGE_SIZE);
            ps.setInt(4, PAGE_SIZE);
            ps.setInt(5, page);
            ps.setInt(6, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(2), //id
                        rs.getString(3), //name
                        rs.getInt(4), //quantity
                        rs.getFloat(5), //price
                        rs.getString(6), //description
                        rs.getString(7), //imageURL
                        rs.getString(8), //created_time
                        rs.getInt(9)); //sub_id
                list_product.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_product;
    }

    public List<Product> getProductInPagingBySUBCategory_ID(int sub_categoryID, int page, int PAGE_SIZE) {
        List<Product> list_product = new ArrayList<>();
        try {
            String sql = "with x as(select ROW_NUMBER() over (order by Products.id ASC) as r,\n"
                    + "*from Products\n"
                    + "where sub_id=?)\n"
                    + "select * from x where r between ?*?-(?-1) and ?*?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, sub_categoryID);
            ps.setInt(2, page);
            ps.setInt(3, PAGE_SIZE);
            ps.setInt(4, PAGE_SIZE);
            ps.setInt(5, page);
            ps.setInt(6, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(2), //id
                        rs.getString(3), //name
                        rs.getInt(4), //quantity
                        rs.getFloat(5), //price
                        rs.getString(6), //description
                        rs.getString(7), //imageURL
                        rs.getString(8), //created_time
                        rs.getInt(9)); //sub_id
                list_product.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_product;
    }

    public int getTotalProductByCategory_ID(int categoryID) {
        try {
            String sql = "select COUNT(Products.id) from Products join Sub_Category\n"
                    + "on Products.sub_id = Sub_Category.id\n"
                    + "where cat_id = ?;";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getTotalProductBySUBCategory_ID(int sub_categoryID) {
        try {
            String sql = "select COUNT(id) from Products \n"
                    + "where sub_id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, sub_categoryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        System.out.println(dao.getProductByID(5));
    }

    public List<Product> search(int categoryID, String keyword) {
        List<Product> list_bakeware = new ArrayList<>();
        try {
            String sql = "select*from Products join Sub_Category\n"
                    + "on Products.sub_id = Sub_Category.id\n"
                    + "where cat_id = ? and Products.name like ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ps.setString(2, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), //id
                        rs.getString(2), //name
                        rs.getInt(3), //quantity
                        rs.getFloat(4), //price
                        rs.getString(5), //description
                        rs.getString(6), //imageURL
                        rs.getString(7), //created_time
                        rs.getInt(8)); //sub_id
                list_bakeware.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_bakeware;
    }

    public Product getProductByID(int productID) {
        List<Product> list_bakeware = new ArrayList<>();
        try {
            String sql = "select*from Products where id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, productID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), //id
                        rs.getString(2), //name
                        rs.getInt(3), //quantity
                        rs.getFloat(4), //price
                        rs.getString(5), //description
                        rs.getString(6), //imageURL
                        rs.getString(7), //created_time
                        rs.getInt(8)); //sub_id
                return product;
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
