/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.entity.Product;
import com.pos.possystem.entity.Sale;
import com.pos.possystem.entity.SaleNumber;
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
public class SaleNumberBean {

    private static final Logger LOG = Logger.getLogger(SaleNumberBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public Integer lastSale() {
        Integer saleId = 0;
         System.out.println("In lastSale");
        try {
            Query query = em.createQuery("SELECT s FROM SaleNumber s");
            List<SaleNumber> sales = (List<SaleNumber>) query.getResultList();
            for (SaleNumber sale : sales) {
                System.out.println("Last sale for: " + sale);
                saleId = sale.getSaleId();
                  System.out.println("Last sale for si id: " + saleId);
            }
            return saleId;
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
}
