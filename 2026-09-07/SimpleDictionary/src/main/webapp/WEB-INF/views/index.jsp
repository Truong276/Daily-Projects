<%--
  Created by IntelliJ IDEA.
  User: congnguyen
  Date: 7/9/26
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">

<head>

  <meta charset="UTF-8">

  <title>Từ điển Anh - Việt</title>

  <style>

    body {
      font-family: Arial, sans-serif;
      background: #f4f6f8;
      margin: 0;
      padding: 0;
    }

    .container {
      width: 600px;
      margin: 100px auto;
      background: white;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
    }

    form {
      display: flex;
      gap: 10px;
    }

    input {
      flex: 1;
      padding: 12px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    button {
      padding: 12px 20px;
      border: none;
      border-radius: 6px;
      background: #007bff;
      color: white;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background: #0056b3;
    }

    .result {
      margin-top: 30px;
      padding: 20px;
      border-radius: 8px;
      background: #f1f8ff;
    }

    .not-found {
      margin-top: 30px;
      padding: 20px;
      border-radius: 8px;
      background: #fff3f3;
      color: red;
    }

    .meaning {
      font-size: 20px;
      font-weight: bold;
    }

  </style>

</head>

<body>

<div class="container">

  <h1>Từ điển Anh - Việt</h1>

  <form action="${pageContext.request.contextPath}/search"
        method="get">

    <input
            type="text"
            name="word"
            placeholder="Nhập từ tiếng Anh..."
            value="${word}"
            required
    >

    <button type="submit">
      Tra cứu
    </button>

  </form>


  <%
    Boolean found = (Boolean) request.getAttribute("found");

    if (found != null && found) {
  %>

  <div class="result">

    <p>
      Từ:
      <strong>${word}</strong>
    </p>

    <p>
      Nghĩa:
      <span class="meaning">${meaning}</span>
    </p>

  </div>

  <%
  } else if (found != null && !found) {
  %>

  <div class="not-found">

    Không tìm thấy từ
    <strong>"${word}"</strong>
    trong từ điển.

  </div>

  <%
    }
  %>

</div>

</body>

</html>
