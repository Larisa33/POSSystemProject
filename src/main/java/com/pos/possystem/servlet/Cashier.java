/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pos.possystem.servlet;

import com.pos.possystem.common.ProductDetails;
import com.pos.possystem.ejb.ProductBean;
import com.pos.possystem.ejb.SaleBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.annotation.security.DeclareRoles;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Larisa
 */
//Au fost precizate rolurile existente si cele care au acces
//la pagina cashier.jsp
@DeclareRoles({"AdminRole", "ManagerRole", "CasierRole"})
@ServletSecurity(
        value = @HttpConstraint(
                rolesAllowed = {"AdminRole", "ManagerRole", "CasierRole"}
        )
)

//Ruta la care se gaseste pagina cashier.jsp
@WebServlet(name = "Cashier", urlPatterns = {"/Cashier"})
public class Cashier extends HttpServlet {

    @Inject
    SaleBean saleBean;

    @Inject
    ProductBean productBean;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Screen</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Screen at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("activePage", "Products");

//       products se populeaza folosind getAllProducts() din ProdictBean
        List<ProductDetails> products = productBean.getAllProducts();

//        setam in ghilimele numele obiectului cu care vom afisa datele pe pagina
//        cashier.jsp, iar dupa virgula precizam ca "products" se populeaza cu
//        datele din lista creata anterior
        request.setAttribute("products", products);

        if (!saleBean.getProductIds().isEmpty()) {
            Collection<String> product_names = productBean.findNames(saleBean.getProductIds());
            Collection<String> product_price = productBean.findPrice(saleBean.getProductIds());
            request.setAttribute("sale", product_names);
            request.setAttribute("sale_price", product_price);
        }

        request.getRequestDispatcher("/WEB-INF/pages/cashier.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        "productIdsAsString" se populeaza cu id-urile venite prin bifarea
//                unui checkbox, daca acesta nu este null cream o lista cu toate
//                id-urile facand conversie de la String la Integer

        String[] productIdsAsString = request.getParameterValues("product_id");
        if (productIdsAsString != null) {
            List<Integer> productIds = new ArrayList<Integer>();
            for (String productIdAsString : productIdsAsString) {
                productIds.add(Integer.parseInt(productIdAsString));
            }
            saleBean.getProductIds().addAll(productIds);
        }
        response.sendRedirect(request.getContextPath() + "/Cashier");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
