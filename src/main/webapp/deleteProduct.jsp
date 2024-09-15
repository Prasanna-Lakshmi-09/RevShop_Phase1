<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    int deleteProduct = DatabaseConnection.insertUpdateFromSqlQuery("delete from product where id='" + id + "' ");
    if (deleteProduct > 0) {
        response.sendRedirect("viewProducts.jsp");
    } else {
        response.sendRedirect("viewProducts.jsp");
    }
%>