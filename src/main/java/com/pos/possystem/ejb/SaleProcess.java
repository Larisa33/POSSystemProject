/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.common.ProductDetails;
import com.pos.possystem.common.SaleDetails;
import com.pos.possystem.entity.Product;
import com.pos.possystem.entity.Sale;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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

    public List<SaleDetails> getAllSales() {
        LOG.info("getAllSales");
        try {
            Query query = em.createQuery("SELECT s FROM Sale s");
            List<Sale> sales = (List<Sale>) query.getResultList();
            return copySalesToDetails(sales);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    private List<SaleDetails> copySalesToDetails(List<Sale> sales) {
        List<SaleDetails> detailsList = new ArrayList<>();
        for (Sale sale : sales) {
            SaleDetails saleDetails = new SaleDetails(
                    sale.getId(),
                    sale.getSaleId(),
                    sale.getProduct_name(),
                    sale.getPrice(),
                    sale.getBarcode());

            detailsList.add(saleDetails);

        }
        return detailsList;
    }

}
