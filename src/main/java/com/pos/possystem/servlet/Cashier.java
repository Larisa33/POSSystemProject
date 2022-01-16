/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pos.possystem.servlet;

import com.pos.possystem.common.ProductDetails;
import com.pos.possystem.ejb.ProductBean;
import com.pos.possystem.ejb.SaleBean;
import com.pos.possystem.ejb.SaleNumberBean;
import com.pos.possystem.ejb.SaleProcess;
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
                rolesAllowed = {"CasierRole"}
        )
)

//Ruta la care se gaseste pagina cashier.jsp
@WebServlet(name = "Cashier", urlPatterns = {"/Cashier"})
public class Cashier extends HttpServlet {

    @Inject
    SaleProcess saleProcessBean;

    @Inject
    private ProductBean productBean;

    @Inject
    SaleNumberBean saleNumberBean;

    int ab = 0;
    int pret = 0;
    int ct = 1;
    ArrayList<ProductDetails> bon1 = new ArrayList();

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
        Integer saleId = saleNumberBean.lastSale();
        ArrayList<ProductDetails> bon;
        if (ab == 0) {
            bon = new ArrayList();
        }
        int productNr = Integer.parseInt(request.getParameter("nr_product"));
        String a = request.getParameter("id_product");
        int productId = Integer.parseInt(request.getParameter("id_product"));
        ProductDetails product = productBean.findByBarcode(productId);
        request.setAttribute("product", product);
        if (product != null) {
            while (productNr != 0) {
//                System.out.println("Aici e saleid" + saleId);
                saleProcessBean.createSale(saleId, product.getProduct_name(), product.getPrice(), product.getBarcode());
                bon1.add(product);
                pret = pret + product.getPrice();
                request.setAttribute("ct", ct);
                ct++;
                productNr--;
            }
        }

        request.setAttribute("pret", pret);
        request.setAttribute("bon1", bon1);
        request.getRequestDispatcher("/WEB-INF/pages/cashier.jsp").forward(request, response);
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
