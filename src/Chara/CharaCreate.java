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
import models.Employee;
import models.validators.ReportValidator;
import utils.DButil;

/**
 * Servlet implementation class CharaCreate
 */
@WebServlet("/chara/create")
public class CharaCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CharaCreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String _token = (String)request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DButil.createEntityManager();

            Chara c = new Chara();

            c.setEmployee((Employee)request.getSession().getAttribute("login_employee"));


            c.setName(request.getParameter("name"));

            Integer hp = 5;
            c.setHp(hp);
            Integer vit = 100;
            c.setVit(vit);
            Integer power= 2;
            c.setPower(power);



            List<String> errors = ReportValidator.validate(c);
            if(errors.size() > 0) {

                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("chara", c);


                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/chara/new.jsp");
                rd.forward(request, response);
            } else {
                em.getTransaction().begin();
                em.persist(c);
                em.getTransaction().commit();
                em.close();
                request.getSession().setAttribute("flush", "登録が完了しました。");

                response.sendRedirect(request.getContextPath() + "/chara/index");
            }
        }
    }


}
