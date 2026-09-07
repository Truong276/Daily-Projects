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
  <title>Sandwich Condiments</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 50px;
    }

    .container {
      width: 400px;
    }

    h1 {
      margin-bottom: 25px;
    }

    label {
      display: block;
      margin: 12px 0;
      font-size: 18px;
    }

    button {
      margin-top: 15px;
      padding: 10px 25px;
      cursor: pointer;
    }
  </style>
</head>

<body>

<div class="container">

  <h1>Sandwich Condiments</h1>

  <form action="${pageContext.request.contextPath}/save"
        method="post">

    <label>
      <input type="checkbox"
             name="condiment"
             value="Lettuce">
      Lettuce
    </label>

    <label>
      <input type="checkbox"
             name="condiment"
             value="Tomato">
      Tomato
    </label>

    <label>
      <input type="checkbox"
             name="condiment"
             value="Mustard">
      Mustard
    </label>

    <label>
      <input type="checkbox"
             name="condiment"
             value="Sprouts">
      Sprouts
    </label>

    <button type="submit">
      Save
    </button>

  </form>

</div>

</body>
</html>
