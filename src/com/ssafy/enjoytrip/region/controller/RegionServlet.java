package com.ssafy.enjoytrip.region.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ssafy.enjoytrip.region.model.AttractionDescription;
import com.ssafy.enjoytrip.region.model.AttractionDetail;
import com.ssafy.enjoytrip.region.model.AttractionInfo;
import com.ssafy.enjoytrip.region.model.Gugun;
import com.ssafy.enjoytrip.region.model.Sido;
import com.ssafy.enjoytrip.region.service.RegionService;
import com.ssafy.enjoytrip.region.service.RegionServiceImpl;


@WebServlet("/region")
public class RegionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String root=request.getContextPath();
		System.out.println(root);
		RegionService regionService = new RegionServiceImpl();
		
		String action= request.getParameter("action");
		
		if (action.equals("search")) {
			String sidoCode = request.getParameter("sido");
			String gugunCode = request.getParameter("gugun");
			String contentTypeId = request.getParameter("content_type_id");
			List<AttractionInfo> result = regionService.getAttractionInfos(
					Integer.parseInt(sidoCode), 
					Integer.parseInt(gugunCode), 
					Integer.parseInt(contentTypeId));
			String json = new Gson().toJson(result);
			request.setAttribute("response", json);
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}
		else if (action.equals("get-sido")) {
			List<Sido> result = regionService.getSido();
			String json = new Gson().toJson(result);
			request.setAttribute("response", json);
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}
		else if (action.equals("get-gugun")) {
			int sidoCode = Integer.parseInt(request.getParameter("sido"));
			List<Gugun> result = regionService.getSigungu(sidoCode);
			String json = new Gson().toJson(result);
			request.setAttribute("response", json);
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}
		else if (action.equals("get-description")) {
			int contentId = Integer.parseInt(request.getParameter("content_id"));
			AttractionDescription result = regionService.getAttractionDescription(contentId);
			String json = new Gson().toJson(result);
			request.setAttribute("response", json);
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}
		else if (action.equals("get-detail")) {
			int contentId = Integer.parseInt(request.getParameter("content_id"));
			AttractionDetail result = regionService.getAttractionDetail(contentId);
			String json = new Gson().toJson(result);
			request.setAttribute("response", json);
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}
	}

}
