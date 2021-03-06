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
import java.sql.SQLException;
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

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        dao.createProduct(29, "ABC", 120, 1000, "Very Good", "img/product/bakeware/29.jpg", "09/09/2021", 3);
        System.out.println(dao.getProductByID(29));
    }

    public void deleteProduct(int productId) {
        try {
            String sql = "DELETE Products WHERE id= ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void createProduct(int id, String name, int quantity, float price, String description, String imageURL, String created_time, int sub_id) {
        try {
            String sql = "INSERT INTO [BakeOfArt].[dbo].[Products]\n"
                    + "           ([id]\n"
                    + "           ,[name]\n"
                    + "           ,[quantity]\n"
                    + "           ,[price]\n"
                    + "           ,[description]\n"
                    + "           ,[imageURL]\n"
                    + "           ,[created_time]\n"
                    + "           ,[sub_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setInt(3, quantity);
            ps.setFloat(4, price);
            ps.setString(5, description);
            ps.setString(6, imageURL);
            ps.setString(7, created_time);
            ps.setInt(8, sub_id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProduct(String name, int quantity, float price, String description, String imageURL, String created_time, int sub_id, int id) {
        try {
            String sql = "UPDATE [BakeOfArt].[dbo].[Products]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[quantity] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[imageURL] = ?\n"
                    + "      ,[created_time] = ?\n"
                    + "      ,[sub_id] = ?\n"
                    + " WHERE [id] = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, quantity);
            ps.setFloat(3, price);
            ps.setString(4, description);
            ps.setString(5, imageURL);
            ps.setString(6, created_time);
            ps.setInt(7, sub_id);
            ps.setInt(8, id);

            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
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
