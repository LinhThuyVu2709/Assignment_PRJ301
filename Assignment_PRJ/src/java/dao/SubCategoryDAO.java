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
import model.SubCategory;

/**
 *
 * @author LinhVT
 */
public class SubCategoryDAO {

    public List<SubCategory> getAllSubCategory() {
        List<SubCategory> list = new ArrayList<>();
        try {
            String sql = "select * from Sub_Category";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubCategory sub_category = new SubCategory(rs.getInt(1),rs.getString(2),rs.getInt(3));
                list.add(sub_category);
            }
        } catch (Exception ex) {
            Logger.getLogger(SubCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<SubCategory> getSubCategoryByCatID(int categoryID) {
        List<SubCategory> list = new ArrayList<>();
        try {
            String sql = "select*from Sub_Category where cat_id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubCategory sub_category = new SubCategory(rs.getInt(1),rs.getString(2),rs.getInt(3));
                list.add(sub_category);
            }
        } catch (Exception ex) {
            Logger.getLogger(SubCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
