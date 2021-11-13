/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.PricePageController;
import Model.ModelPricePage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class PricePageServlet extends HttpServlet {
//String nama;
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
            RequestDispatcher dispatch = request.getRequestDispatcher("/PricePage.jsp");
            dispatch.forward(request, response);
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
         try{
            processRequest(request, response);
        }
        catch(Exception ex){
            Logger.getLogger(HomePageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }   
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
        try{
            processRequest(request, response);
            String telp = request.getParameter("telp");
            String alamat = request.getParameter("alamat");
            String tanggal = request.getParameter("tanggal");
            HttpSession session = request.getSession();
            String ID = (String)session.getAttribute("ID");
            
            ModelPricePage model = new ModelPricePage();
            model.setId(ID);
            model.setTelp(telp);
            model.setAlamat(alamat);
            model.setTanggal(tanggal);
            
            PricePageController pc = new PricePageController();
            boolean res = pc.create(model);
            if(res){
                
                RequestDispatcher dispatch = request.getRequestDispatcher("/HomePage.jsp");
                dispatch.forward(request, response);
//                response.sendRedirect("/HomePageServlet");
//                System.out.println("gg");
            }
            else{
                System.out.println("failed");
            }
            
        }
        catch(Exception ex){
            Logger.getLogger(PricePageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
