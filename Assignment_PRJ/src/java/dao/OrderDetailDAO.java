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
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;

/**
 *
 * @author LinhVT
 */
public class OrderDetailDAO {

    public void saveCart(int order_id, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [BakeOfArt].[dbo].[OrderDetail]\n"
                    + "           ([product_id]\n"
                    + "           ,[order_id]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                statement.setInt(1, cart.getProduct().getId());
                statement.setInt(2, order_id);
                statement.setInt(3, cart.getQuantity());
                statement.executeUpdate();
            }
        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
