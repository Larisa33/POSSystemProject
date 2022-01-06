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
import javax.persistence.TypedQuery;

/**
 *
 * @author DANIELA
 */
@Stateless
public class ProductBean {

    private static final Logger LOG = Logger.getLogger(ProductBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public List<ProductDetails> getAllProducts() {

        LOG.info("getAllProducts");

        try {
            Query query = em.createQuery("SELECT p FROM Product p");
            List<Product> products = (List<Product>) query.getResultList();
            return copyProductsToDetails(products);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }

    }

    private List<ProductDetails> copyProductsToDetails(List<Product> products) {
        List<ProductDetails> detailsList = new ArrayList<>();
        for (Product product : products) {
            ProductDetails productDetails = new ProductDetails(product.getId(),
                    product.getBarcode(),
                    product.getProduct_name(),
                    product.getPrice(),
                    product.getStock());
            detailsList.add(productDetails);

        }
        return detailsList;
    }

    public void createProduct(Integer barcode, String product_name, Integer price, Integer stock) {
        LOG.info("createProduct");
        Product product = new Product();
        product.setBarcode(barcode);
        product.setProduct_name(product_name);
        product.setPrice(price);
        product.setStock(stock);

        em.persist(product);
    }
 
    public ProductDetails findByBarcode(Integer id) {
            System.out.println("la inceput" + id + "test");
        List<ProductDetails> Products = getAllProducts();
         System.out.println(Products);
        for (ProductDetails prod : Products) {
            System.out.println("aici e prod" + prod);
            if (prod.getId().equals(id)) {
                System.out.println(id);
                System.out.println("aici e prod" + prod);
                return prod;
            }
        }
        return null;
    }

//    public ProductDetails getProductByBarcode(Integer barCode) {
//        Product product = em.find(Product.class, barCode);
//        return new ProductDetails(product.getId(), product.getBarcode(), product.getProduct_name(), product.getPrice(), product.getStock());
//    }

//    public List<ProductDetails> getProductByBarcode() {
//
//        LOG.info("getProductByBarcode");
//
//        try {
//            Query query = em.createQuery("SELECT p FROM Product p");
//            List<Product> products = (List<Product>) query.getResultList();
//            return copyProductsToDetails(products);
//        } catch (Exception ex) {
//            throw new EJBException(ex);
//        }
//
//    }
//    public CarDetails findById(Integer carId) {
//        Car car = em.find(Car.class, carId);
//        return new CarDetails(car.getId(), car.getLicensePlate(), car.getParkingSpot(), car.getUser().getUsername());
//    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
