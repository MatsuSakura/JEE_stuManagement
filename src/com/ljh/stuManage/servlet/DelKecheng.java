package com.ljh.stuManage.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ljh.stuManage.daoimp.KechengDaoImp;

import com.ljh.stuManage.daoimp.TeacherDaoImo;
import com.ljh.stuManage.model.Kecheng;
import com.ljh.stuManage.model.Teacher;

@WebServlet("/DelKecheng")
public class DelKecheng extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DelKecheng() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KechengDaoImp daoImo = new KechengDaoImp();
		Kecheng kecheng = daoImo.selectById(Integer.parseInt(request.getParameter("id")));
		TeacherDaoImo teacherDaoImo = new TeacherDaoImo();
		for (Teacher teacher : teacherDaoImo.selectAllTeacher()) {
			if (teacher.getKname().equals(kecheng.getName())) {
				teacherDaoImo.delkecheng(teacher.getId());
			}
		}
		daoImo.delete(Integer.parseInt(request.getParameter("id")));
		request.setAttribute("list", daoImo.selectAll());
		request.getRequestDispatcher("/kechenglist.jsp").forward(request, response);
	}

}
