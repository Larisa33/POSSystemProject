/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import java.util.HashSet;
import java.util.Set;
import javax.ejb.Stateful;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Larisa
 */
@Stateful
@SessionScoped
public class SaleBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private Set<Integer> productIds = new HashSet<Integer>();

    public Set<Integer> getProductIds() {
        return productIds;
    }

    public void setProductIds(Set<Integer> productIds) {
        this.productIds = productIds;
    }

}
