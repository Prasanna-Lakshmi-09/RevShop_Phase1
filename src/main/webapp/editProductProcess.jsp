<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%
    //Getting all the inputs from the admin
    int id = Integer.parseInt(request.getParameter("pid"));
    String pname = request.getParameter("pname");
    String price = request.getParameter("price");
    String description = request.getParameter("description");
    String status = request.getParameter("status");
    //Querying to the database
    int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update product set name='" + pname + "',price='" + price + "',description='" + description + "',active='" + status + "' where id='" + id + "'");
    if (updateProduct > 0) {
        response.sendRedirect("viewProducts.jsp");
    } else {
        response.sendRedirect("viewProducts.jsp");
    }
%>