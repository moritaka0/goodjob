package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MemberBean;
import dao.MemberDAO;

/**
 * Servlet implementation class confirm
 */
@WebServlet("/confirm")
public class confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String fromMemberId = request.getParameter("from");
		String toMemberId = request.getParameter("to");
		String message = request.getParameter("message");
		String cardType = request.getParameter("cardType");

		MemberBean fromMemberInfo = new MemberBean();
		MemberBean toMemberInfo = new MemberBean();
		MemberDAO memberDAO = new MemberDAO();

		try {
			fromMemberInfo = memberDAO.selectMember(fromMemberId);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		try {
			toMemberInfo = memberDAO.selectMember(toMemberId);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		request.setAttribute("fromMemberInfo",fromMemberInfo);
		request.setAttribute("toMemberInfo",toMemberInfo);
		request.setAttribute("message",message);
		request.setAttribute("cardType", cardType);
		request.getRequestDispatcher("/confirm.jsp").forward(request, response);
	}
}
