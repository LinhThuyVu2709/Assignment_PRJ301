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
public class Order {
    private int id;
    private int account_id;
    private float totalPrice;
    private String note;
    private String created_date;
    private int shipping_id;
    Account account;

    public Order() {
    }

    public Order(int id, int account_id, float totalPrice, String note, String created_date, int shipping_id) {
        this.id = id;
        this.account_id = account_id;
        this.totalPrice = totalPrice;
        this.note = note;
        this.created_date = created_date;
        this.shipping_id = shipping_id;
    }
    
    
    public Order(int account_id, float totalPrice, String note, int shipping_id) {
        this.account_id = account_id;
        this.totalPrice = totalPrice;
        this.note = note;
        this.shipping_id = shipping_id;
    }

    public Order(int id, int account_id, float totalPrice, String note, String created_date, int shipping_id, Account account) {
        this.id = id;
        this.account_id = account_id;
        this.totalPrice = totalPrice;
        this.note = note;
        this.created_date = created_date;
        this.shipping_id = shipping_id;
        this.account = account;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public int getShipping_id() {
        return shipping_id;
    }

    public void setShipping_id(int shipping_id) {
        this.shipping_id = shipping_id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", account_id=" + account_id + ", totalPrice=" + totalPrice + ", note=" + note + ", created_date=" + created_date + ", shipping_id=" + shipping_id + ", account=" + account + '}';
    }

    
    
    
}
