/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DigitalDao;
import entity.Digital;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vuong Van Truong
 */
@WebServlet(name = "SearchControl", urlPatterns = {"/search"})
public class SearchControl extends HttpServlet {

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
            String txtSearch = request.getParameter("txtSearch");
             int index = 1;
             if (request.getParameter("index") != null) {
                index = Integer.parseInt(request.getParameter("index"));
            }
            DigitalDao dd = new DigitalDao();
           int count = dd.count(txtSearch);
           int pageSize = 3;        
           int endPage = 0;
           endPage = count / pageSize;
           if(count % pageSize != 0){
               endPage++;
           }          
            ArrayList<Integer> listCount = new ArrayList<>();
            int count1;
            if (index == 1) {
                count1 = 1;
            } else {  // 2*3 - (3-1) = 4
                count1 = index * pageSize - (pageSize - 1);
            }
            //index = 1 -> count = 1, add to array then count++ 2 3
            // index !=1(=2,3) -> if(page == 2) then count = 2*3 -(3-1)
            for (int i = 1; i <= pageSize; i++) {
                listCount.add(count1);
                count1++;
//               out.print(count1);
            }
            request.setAttribute("count", count1);
            request.setAttribute("listCount", listCount);
            Digital top1 = dd.getTop1();
            List<Digital> top5 = dd.getTop5();
            request.setAttribute("top5", top5);
            request.setAttribute("top1", top1);
            List<Digital> ld = dd.search(txtSearch, index);
            
//            
//            for (Digital iDigital : ld) {
//                iDigital.setTitle(dd.setupTitile(iDigital.getTitle(), txtSearch));
//                iDigital.setDescription(dd.setupTitile(iDigital.getDescription(), txtSearch));
//                 iDigital.setDescription(dd.setupTitile(iDigital.getShortDes(), txtSearch));
//            }
            request.setAttribute("endPage", endPage);
            request.setAttribute("txtSearch",txtSearch);
            request.setAttribute("listS", ld);
            request.setAttribute("index", index);
            request.getRequestDispatcher("Search.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
