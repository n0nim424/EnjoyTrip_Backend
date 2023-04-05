package com.ssafy.enjoytrip.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.enjoytrip.board.model.BoardDto;
import com.ssafy.enjoytrip.board.model.BoardServiceImpl;
import com.ssafy.enjoytrip.board.model.IBoardService;

@WebServlet("/board")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IBoardService bservice;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		bservice=BoardServiceImpl.getInstance();
		
		String root = request.getContextPath();
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("write")) {
			response.sendRedirect(root+"/board/write.jsp");
		}
		else if(action.equalsIgnoreCase("writeaf")) {
			String user_id=request.getParameter("user_id");
			String subject=request.getParameter("subject");
			String content=request.getParameter("content");
			
			boolean isS=bservice.write(new BoardDto(user_id, subject, content));
			
			if(isS) {  
				response.sendRedirect(root+"/board?action=board");
			}
		}
		else if(action.equalsIgnoreCase("board")) {
			request.setAttribute("boards",bservice.boardlist());
			RequestDispatcher dispatcher=request.getRequestDispatcher("/board/board.jsp");
			dispatcher.forward(request, response);
		}
		else if(action.equalsIgnoreCase("detail")) {
			String sarticle_no = request.getParameter("article_no");
			int article_no = Integer.parseInt(sarticle_no);
			request.setAttribute("board",bservice.detail(article_no));
			RequestDispatcher dispatcher=request.getRequestDispatcher("/board/detail.jsp");
			dispatcher.forward(request, response);
		}
		else if(action.equalsIgnoreCase("delete")) { 
			String sarticle_no=request.getParameter("article_no");
			int article_no=Integer.parseInt(sarticle_no);
			boolean isS=bservice.delete(article_no);
			if(isS) {
				response.sendRedirect(root+"/board?action=board");
			}
		}
		else if(action.equalsIgnoreCase("update")) { 
			String sarticle_no=request.getParameter("article_no");
			int article_no=Integer.parseInt(sarticle_no);
			request.setAttribute("board",bservice.detail(article_no));
			RequestDispatcher dispatcher=request.getRequestDispatcher("./board/update.jsp");
			dispatcher.forward(request, response);
		}
		else if(action.equalsIgnoreCase("updateaf")) {
			String sarticle_no=request.getParameter("article_no");
			int article_no=Integer.parseInt(sarticle_no);
			String subject=request.getParameter("subject");
			String content=request.getParameter("content");
			System.out.println(article_no+" "+subject+" "+content);
			boolean isS=bservice.update(new BoardDto(article_no, subject, content));
			if(isS) { 
				response.sendRedirect(root+"/board?action=detail&article_no="+article_no);
			}
		}
		else if(action.equalsIgnoreCase("search")) {
			String option = request.getParameter("key");
			String value = request.getParameter("word");
			request.setAttribute("boards",bservice.searchlist(option, value));
			RequestDispatcher dispatcher=request.getRequestDispatcher("/board/board.jsp");
			dispatcher.forward(request, response);
		}
	}

}
