package action;

import java.io.IOException;

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
 * Servlet implementation class ActionACT3
 */
@WebServlet("/action/up")
public class Actionup extends HttpServlet {
	private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public Actionup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DButil.createEntityManager();

        // 該当のIDのメッセージ1件のみをデータベースから取得
        Chara c = em.find(Chara.class, Integer.parseInt(request.getParameter("id")));

       int vit=100;
       try{
    	   vit = Integer.parseInt(request.getParameter("vit")) ;
       }catch(Exception e) {
           vit =  vit - 10;
       }

       int power=3;
       try{
    	   power = Integer.parseInt(request.getParameter("power")) ;
       }catch(Exception e) {
           power =  power + 1;
       }



       c.setVit(vit);
       c.setPower(power);

        em.getTransaction().begin();
        em.getTransaction().commit();
        em.close();
        request.setAttribute("vit", vit);
        request.setAttribute("chara", c);
        request.setAttribute("power", power);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/chara/show.jsp");
        rd.forward(request, response);
    }}