package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.TaiKhoanDao;
import Model.TaiKhoan;

/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/login")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TaiKhoanDao login;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		login = new TaiKhoanDao();
	}
    public DangNhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("DangNhap.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String tentaikhoan = request.getParameter("tentaikhoan");
		String matkhau = request.getParameter("matkhau");
		TaiKhoan loginObject = new TaiKhoan();
		loginObject.setTentaikhoan(tentaikhoan);
		loginObject.setMatkhau(matkhau);
		try {
			if (login.validate(loginObject)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
				dispatcher.forward(request, response);
			} else {
				HttpSession session = request.getSession();
				// session.setAttribute("user", username);
				// response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
