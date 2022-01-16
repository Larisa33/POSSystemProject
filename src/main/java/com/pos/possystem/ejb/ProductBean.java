/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.pos.possystem.ejb;

import com.pos.possystem.common.ProductDetails;
import com.pos.possystem.entity.Product;
import com.pos.possystem.entity.SaleNumber;
import com.pos.possystem.entity.User;
import java.util.Collection;
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

    public ProductDetails findById(Integer productId) {
        Product product = em.find(Product.class, productId);
        System.out.println("AAAAAIn bean: " + product.getId() + product.getBarcode());
        return new ProductDetails(product.getId(), product.getBarcode(), product.getProduct_name(), product.getPrice(), product.getStock());
//        System.out.println("In bean: " + product.getId() + product.getBarcode());
    }

    public void updateProduct(Integer id, Integer barcod, String product_name, Integer price, Integer stock) {
        LOG.info("updateProduct");
        Product product = em.find(Product.class, id);
        product.setBarcode(barcod);
        product.setProduct_name(product_name);
        product.setPrice(price);
        product.setStock(stock);
    }

//    metoda care imi da numele produsului in functie de id
    public Collection<String> findNames(Collection<Integer> productIds) {
        LOG.info("findNames");
        List<String> names = (List<String>) em.createQuery("SELECT p.product_name FROM Product p WHERE p.id IN ?1")
                .setParameter(1, productIds)
                .getResultList();

        return names;
    }
//    metoda care imi da pretul produsului in functie de id

    public Collection<String> findPrice(Collection<Integer> productIds) {
        LOG.info("findPrice");
        List<String> price = (List<String>) em.createQuery("SELECT p.price FROM Product p WHERE p.id IN ?1")
                .setParameter(1, productIds)
                .getResultList();
        return price;
    }

    public void deleteProductByIds(Collection<Integer> ids) {
        LOG.info("deleteProductByIds");
        for (Integer id : ids) {
            Product product = em.find(Product.class, id);
            em.remove(product);
        }
    }

    public void returnProduct(Integer productId) {

        LOG.info("updateProduct");

        ProductDetails product = findByBarcode(productId);
        Integer stock = product.getStock() + 1;
        updateProduct(product.getId(), product.getBarcode(), product.getProduct_name(), product.getPrice(), stock);

    }

    public void createNewSale(Integer saleId) {
        LOG.info("createSale");
        SaleNumber sale = new SaleNumber();
        sale.setSaleId(saleId);
        
        em.persist(sale);
    }
}
