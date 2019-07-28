 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <form:form method="POST" action="save">
       <table>
         <tr>
           <td>ID: </td>
           <td><form:input path="Id"  /></td>
           </tr>
         <tr>
          <td>Name : </td>
          <td><form:input path="name"  /></td>
         </tr>
         <tr>
          <td> Age:</td>
          <td><form:input path="age" /></td>
         </tr>
         <tr>
          <td> Gender:</td>
          <td> <form:input path="Gender" /> </td>
         </tr>
         <tr>
          <td> </td>
          <td> <input type="submit" value="Save" /> </td>
         </tr>
        </table>
 </form:form>