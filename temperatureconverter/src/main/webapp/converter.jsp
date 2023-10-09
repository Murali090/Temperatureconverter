<%@page import="java.io.PrintWriter"%>
<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String deg=request.getParameter("deg");
   int temp = Integer.parseInt(request.getParameter("temp"));
   PrintWriter pw = response.getWriter();
   if(deg.equals("celcius")){
	   int cel = (temp*5/9)+32;
	   pw.print("Celcius"+cel);
	   
   }
   else{
	   int fah = (temp-32)*9/5;
	   pw.print("Fah"+fah);
   }
%>