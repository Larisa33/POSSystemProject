/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pos.possystem.common;

/**
 *
 * @author Larisa
 */
public class SaleDetails {

    private Integer id;
    private Integer saleId;
    private String product_name;
    private Integer price;
    private Integer barcode;

    public SaleDetails(Integer id, Integer saleId, String product_name, Integer price, Integer barcode) {
        this.id = id;
        this.saleId = saleId;
        this.product_name = product_name;
        this.price = price;
        this.barcode = barcode;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSaleId() {
        return saleId;
    }

    public void setSaleId(Integer saleId) {
        this.saleId = saleId;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getBarcode() {
        return barcode;
    }

    public void setBarcode(Integer barcode) {
        this.barcode = barcode;
    }
    
    
}
