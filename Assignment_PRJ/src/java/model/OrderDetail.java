/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author LinhVT
 */
public class OrderDetail {
    private int id;
    private int order_id;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int id, int order_id, int quantity) {
        this.id = id;
        this.order_id = order_id;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", order_id=" + order_id + ", quantity=" + quantity + '}';
    }


}
