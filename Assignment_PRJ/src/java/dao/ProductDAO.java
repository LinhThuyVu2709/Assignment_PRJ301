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

    public List<Product> getBakewareProduct() {
        List<Product> list_bakeware = new ArrayList<>();
        try {
            String sql = "select * from Products inner join Sub_Category\n"
                    + "                   on Products.sub_id = Sub_Category.id\n"
                    + "                    where cat_id=1";
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
                list_bakeware.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_bakeware;
    }

    public List<Product> getIngredientProduct() {
        List<Product> list_ingredient = new ArrayList<>();
        try {
            String sql = "select * from Products inner join Sub_Category\n"
                    + "                   on Products.sub_id = Sub_Category.id\n"
                    + "                    where cat_id=2";
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
                list_ingredient.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(SubCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list_ingredient;
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

}
