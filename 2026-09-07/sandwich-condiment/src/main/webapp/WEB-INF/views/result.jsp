<%--
  Created by IntelliJ IDEA.
  User: congnguyen
  Date: 7/9/26
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Selected Condiments</title>
</head>

<body>

<h1>Selected Condiments</h1>

<%
  String[] condiments =
          (String[]) request.getAttribute("condiments");

  if (condiments != null && condiments.length > 0) {

    for (String condiment : condiments) {
%>

<p>✓ <%= condiment %></p>

<%
  }

} else {
%>

<p>No condiment selected.</p>

<%
  }
%>

<br>

<a href="${pageContext.request.contextPath}/">
  Back
</a>

</body>
</html>
