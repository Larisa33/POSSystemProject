/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pos.possystem.common;

/**
 *
 * @author Larisa
 */
public class SaleNumberDetails {
      private Integer id;
      private Integer saleId;
      public SaleNumberDetails(Integer id, Integer saleId) {
        this.id = id;
        this.saleId = saleId;
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
}
