<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8" isELIgnored="false"%>



<h1>Employees List</h1>
<table border="2" width="70%" cellpadding="2">
<tr><th>Id</th><th>Name</th><th>age</th><th>gender</th><th>Edit</th><th>Delete</th></tr>
   <c:forEach var="emp" items="${list}">
   <tr>
   <td>${emp.id}</td>
   <td>${emp.name}</td>
   <td>${emp.age}</td>
   <td>${emp.gender}</td>
   <td><a href="employeeedit/${emp.id}">Edit</a></td>
   <td><a href="deleteemp/${emp.id}">Delete</a></td>
   </tr>
   </c:forEach>
   </table>
   <br/>
   <a href="employeeform">Add New Employee</a>