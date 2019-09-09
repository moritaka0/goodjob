package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MessageDAO;

/**
 * Servlet implementation class complete
 */
@WebServlet("/complete")
public class complete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public complete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MessageDAO messageDAO = new MessageDAO();
		String fromId = request.getParameter("fromPersonId");
		String toId = request.getParameter("toPersonId");

		String message = request.getParameter("message");
		String cardType = request.getParameter("cardType");

		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		String regMonth = sdf.format(cal.getTime());

		int line = 0;

		try {
			line = messageDAO.insertMessage(fromId, toId, regMonth, message,cardType);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		if(line==1) {
			request.getRequestDispatcher("/complete.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}
