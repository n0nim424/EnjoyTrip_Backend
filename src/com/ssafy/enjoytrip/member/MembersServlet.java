package com.ssafy.enjoytrip.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafy.enjoytrip.member.model.IMemberService;
import com.ssafy.enjoytrip.member.model.MemberServiceImpl;
import com.ssafy.enjoytrip.member.model.MembersDto;


@WebServlet("/member")
public class MembersServlet extends HttpServlet {
	
	IMemberService mservice;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		mservice=MemberServiceImpl.getInstance();
		
		String root = request.getContextPath();
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("registryaf")) {

			String user_id=request.getParameter("user_id");
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			String email = request.getParameter("email_id")+"@"+request.getParameter("email_domain");
			
			boolean isS=mservice.registry(new MembersDto(user_id, user_name, user_password, email));
			if(isS) {  
				response.sendRedirect(root+"/member?action=home");
			}
			
		}
		else if(action.equalsIgnoreCase("home")) {
			response.sendRedirect(root+"/index.jsp");
		}
		else if(action.equalsIgnoreCase("loginaf")) {
			
			String user_id=request.getParameter("user_id");
			String user_password=request.getParameter("user_password");
			MembersDto login=mservice.login(new MembersDto(user_id, user_password));
			HttpSession session=request.getSession();
			
			if(login!=null) {
				session.setAttribute("login", login);
			}
			else {
				session.invalidate();
			}
			
			response.sendRedirect(root+"/member?action=home");
			
		}
		else if(action.equalsIgnoreCase("logout")) {
			HttpSession session=request.getSession();
			session.invalidate();
			response.sendRedirect(root+"/member?action=home");
		}
		else if(action.equalsIgnoreCase("findid")) {
			response.sendRedirect(root+"/member/findid.jsp");
		}
		else if(action.equalsIgnoreCase("findidaf")) {
			String user_name = request.getParameter("user_name");
			MembersDto member = mservice.findid(user_name);
			request.setAttribute("member", member);
			RequestDispatcher disp = request.getRequestDispatcher("/member/findid.jsp");
			disp.forward(request, response);
		}
		else if(action.equalsIgnoreCase("findpw")) {
			response.sendRedirect(root+"/member/findpw.jsp");
		}
		else if(action.equalsIgnoreCase("findpwaf")) {
			String user_name = request.getParameter("user_name");
			String user_id = request.getParameter("user_id");
			MembersDto member = mservice.findpw(user_name, user_id);
			request.setAttribute("member", member);
			RequestDispatcher disp = request.getRequestDispatcher("/member/findpw.jsp");
			disp.forward(request, response);
		}
		else if(action.equalsIgnoreCase("member")) {
			request.setAttribute("members",mservice.memberlist());
			RequestDispatcher dispatcher=request.getRequestDispatcher("/member/member.jsp");
			dispatcher.forward(request, response);
		}
		else if(action.equalsIgnoreCase("update")) {
			String user_id = request.getParameter("user_id");
			request.setAttribute("member",mservice.member(user_id));
			RequestDispatcher dispatcher=request.getRequestDispatcher("/member/update.jsp");
			dispatcher.forward(request, response);
		}
		else if(action.equalsIgnoreCase("updateaf")) {
			String user_id=request.getParameter("user_id");
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			String email = request.getParameter("email_id")+"@"+request.getParameter("email_domain");
			
			boolean isS=mservice.update(new MembersDto(user_id, user_name, user_password, email));
			if(isS) {  
				response.sendRedirect(root+"/member?action=member");
			}
		}
		else if(action.equalsIgnoreCase("delete")) {
			String user_id=request.getParameter("user_id");
			boolean isS=mservice.delete(user_id);
			if(isS) {  
				response.sendRedirect(root+"/member?action=member");
			}
		}
		else if(action.equalsIgnoreCase("search")) {
			String option = request.getParameter("key");
			String value = request.getParameter("word");
			request.setAttribute("members",mservice.searchlist(option, value));
			RequestDispatcher dispatcher=request.getRequestDispatcher("/member/member.jsp");
			dispatcher.forward(request, response);
		}
	}
	
}
