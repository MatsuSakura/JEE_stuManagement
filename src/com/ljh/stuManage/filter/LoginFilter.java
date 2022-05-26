package com.ljh.stuManage.filter;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {


	private String logon_page;

	private String register_page;

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		resp.setContentType("text/html;");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		// PrintWriter out = resp.getWriter();
		// �õ��û������URI
		String request_uri = req.getRequestURI();
		// �õ�webӦ�ó����������·��
		String ctxPath = req.getContextPath();
		// ȥ��������·�����õ�ʣ�ಿ�ֵ�·��
		String uri = request_uri.substring(ctxPath.length());
		// �ж��û����ʵ��Ƿ��ǵ�¼ҳ��
		System.out.println("uri:" + uri);
		if (uri.equals(logon_page) || uri.equals(register_page)) {
			chain.doFilter(request, response);
			return;
		} else {
			// ������ʵĲ��ǵ�¼ҳ�棬���ж��û��Ƿ��Ѿ���¼
			if (null != session.getAttribute("uname") && "" != session.getAttribute("uname")) {
				chain.doFilter(request, response);
				return;
			} else {
				String msg = "��δ��¼��";
				String url = "Errorer";
				req.setAttribute("err", msg);
				RequestDispatcher dis = req.getRequestDispatcher(url);
				dis.forward(req, resp);
			}
			// out.println("<script language=/"javaScript/">"
			// + "parent.location.href='" +

			// ctxPath + logon_page + "'"
			// + "</script>");
			// return;
			// }
		}
	}

	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		// �Ӳ����������л�ȡ��¼ҳ�����ҳ��URI
		logon_page = "/login.jsp";
		System.out.println(logon_page);
		if (null == logon_page) {
			throw new ServletException("û���ҵ���¼ҳ�����ҳ");
		}
	}

}