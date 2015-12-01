<%--
  Created by IntelliJ IDEA.
  User: Janitha Chanuka
  Date: 11/30/2015
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>

  <link href="<c:url value="/resources/login/css/home1.css" />" rel="stylesheet">


    <title>Login</title>
</head>
<body>
<div class="logo"></div>
<div class="login-block">
<h1>Login</h1>
<form name='f' action="j_spring_security_check" method='POST'>
  <table>
    <tr>

      <td><input placeholder="Username" name='username' id="username" ></td>
    </tr>
    <tr>

      <td><input placeholder="Password" name='password' id="password" /></td>
    </tr>
    <tr>
      <td><button name="submit" type="submit" value="login" >Login</button></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
