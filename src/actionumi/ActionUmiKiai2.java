package actionumi;

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
 * Servlet implementation class ActionUmiKiai2
 */
@WebServlet("/ActionUmiKiai2")
public class ActionUmiKiai2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionUmiKiai2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 EntityManager em = DButil.createEntityManager();

         // 該当のIDのメッセージ1件のみをデータベースから取得
         Chara c = em.find(Chara.class, Integer.parseInt(request.getParameter("id")));

         em.close();

         // メッセージデータをリクエストスコープにセットしてshow.jspを呼び出す
         request.setAttribute("chara", c);


   RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/actionumi/kiai2.jsp");
   rd.forward(request, response);
}}
