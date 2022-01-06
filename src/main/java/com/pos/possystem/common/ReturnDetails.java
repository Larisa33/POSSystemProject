/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pos.possystem.common;

import java.util.Date;

/**
 *
 * @author DANIELA
 */
public class ReturnDetails implements java.io.Serializable{
     private Integer id;
    private Integer barcode;
    private String reason;
    private Date date;

    public ReturnDetails(Integer id, Integer barcode, String reason, Date date) {
        this.id = id;
        this.barcode = barcode;
        this.reason = reason;
        this.date = date;
    }
    
    public Integer getId() {
        return id;
    }

    public Integer getBarcode() {
        return barcode;
    }

    public String getReason() {
        return reason;
    }

    public Date getDate() {
        return date;
    }

    
}
