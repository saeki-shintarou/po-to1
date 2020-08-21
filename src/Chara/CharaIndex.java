package Chara;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Chara;
import utils.DButil;

/**
 * Servlet implementation class CharaIndex
 */
@WebServlet("/chara/index")
public class CharaIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CharaIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 EntityManager em = DButil.createEntityManager();


	        int page;
	        try{
	            page = Integer.parseInt(request.getParameter("page"));
	        } catch(Exception e) {
	            page = 1;
	        }
	        List<Chara> charas = em.createNamedQuery("getAllChara", Chara.class)
	                                  .setFirstResult(15 * (page - 1))
	                                  .setMaxResults(15)
	                                  .getResultList();

	        long charas_count = (long)em.createNamedQuery("getCharaCount", Long.class)
	                                     .getSingleResult();



	        em.close();
	        request.setAttribute("charas", charas);
	        request.setAttribute("charas_count", charas_count);
	        request.setAttribute("page", page);
	        if(request.getSession().getAttribute("flush") != null) {
	            request.setAttribute("flush", request.getSession().getAttribute("flush"));
	            request.getSession().removeAttribute("flush");
	        }
	        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/chara/index.jsp");
	        rd.forward(request, response);
	    }}