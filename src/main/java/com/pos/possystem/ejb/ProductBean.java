/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.common.ProductDetails;
import com.pos.possystem.entity.Product;
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
public class ProductBean {

    private static final Logger LOG = Logger.getLogger(ProductBean.class.getName());

    @PersistenceContext
    private EntityManager em;
    
     public List<ProductDetails> getAllProducts(){
  
        LOG.info("getAllProducts");

        try {
            Query query=em.createQuery("SELECT p FROM Product p");
            List<Product> products = (List<Product>) query.getResultList();
            return copyProductsToDetails(products);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }

    }
     
     private List<ProductDetails> copyProductsToDetails(List<Product> products){
     List<ProductDetails> detailsList=new ArrayList<>();
     for(Product product:products){
         ProductDetails productDetails=new ProductDetails(product.getId(),
                                                          product.getBarcode(),
                                                          product.getProduct_name(),
                                                          product.getPrice(),
                                                          product.getStock());
         detailsList.add(productDetails);
     
     }
     
     return detailsList;
     }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
