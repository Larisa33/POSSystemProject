/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pos.possystem.common;

/**
 *
 * @author DANIELA
 */
public class ProductDetails implements java.io.Serializable {
     private Integer id;
         private Integer barcode;
   private String product_name;
    private Integer price;
   private Integer stock;

    public ProductDetails(Integer id, Integer barcode, String product_name, Integer price, Integer stock) {
        this.id = id;
        this.barcode = barcode;
        this.product_name = product_name;
        this.price = price;
        this.stock = stock;
    }
   

    public Integer getId() {
        return id;
    }

    public Integer getBarcode() {
        return barcode;
    }

    public String getProduct_name() {
        return product_name;
    }

    public Integer getPrice() {
        return price;
    }

    public Integer getStock() {
        return stock;
    }
  
    
}
