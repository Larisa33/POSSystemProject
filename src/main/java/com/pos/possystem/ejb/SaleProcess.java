/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.entity.Product;
import com.pos.possystem.entity.Sale;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Larisa
 */
@Stateless
public class SaleProcess {

    private static final Logger LOG = Logger.getLogger(SaleBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public void createSale(Integer saleId, String product_name, Integer price, Integer barcode) {
        LOG.info("createSale");
        Sale sale = new Sale();
        sale.setSaleId(saleId);
        sale.setProduct_name(product_name);
        sale.setPrice(price);
        sale.setBarcode(barcode);

        em.persist(sale);
    }
    
}
