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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author LinhVT
 */
public class OrderDAO {

    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO [BakeOfArt].[dbo].[Orders]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)\n";
            Connection conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, order.getAccount_id());
            statement.setFloat(2, order.getTotalPrice());
            statement.setString(3, order.getNote());
            statement.setInt(4, order.getShipping_id());

            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
