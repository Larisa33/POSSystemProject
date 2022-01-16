/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.common.ReturnDetails;
import com.pos.possystem.entity.Product;
import com.pos.possystem.entity.Return;
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
 * @author DANIELA
 */
@Stateless
public class ReturnBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private static final Logger LOG = Logger.getLogger(ProductBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public List<ReturnDetails> getAllReturns() {

        LOG.info("getAllReturn");

        try {
            Query query = em.createQuery("SELECT r FROM Return r");
            List<Return> products = (List<Return>) query.getResultList();
            return copyProductsToDetails(products);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }

    }

    public void createReturn(Integer barcode, String reason) {
        LOG.info("createProduct");
        Return ret = new Return();
        ret.setBarcode(barcode);
        ret.setReason(reason);

        em.persist(ret);
    }

    private List<ReturnDetails> copyProductsToDetails(List<Return> returns) {
        List<ReturnDetails> detailsList = new ArrayList<>();
        for (Return product : returns) {
            ReturnDetails returnDetails = new ReturnDetails(product.getId(),
                    product.getBarcode(),
                    product.getReason(),
                    product.getDate());
            detailsList.add(returnDetails);

        }

        return detailsList;
    }


}
