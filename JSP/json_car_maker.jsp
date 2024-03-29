<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	UserDAO uDAO = new UserDAO();
	
	JSONArray ja = new JSONArray();	

	try{
	List<String> listMaker = uDAO.selectMaker();
	
	JSONObject json = null;
	for(String maker : listMaker){
		json = new JSONObject(); // { }
		json.put("maker", maker); // { "maker":"현대"}
		ja.add(json); // [ { "maker":"현대"},{ "maker":"기아"} ]
	}
	}catch(SQLException se){
		JSONObject json = new JSONObject();
		json.put("maker", "문제발생");
		se.printStackTrace();
	}
	
	out.print(ja.toJSONString());
%>