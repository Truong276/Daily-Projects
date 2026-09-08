<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

<h1>Danh sách khách hàng</h1>

<table>

    <thead>
    <tr>
        <th>ID</th>
        <th>Tên khách hàng</th>
        <th>Email</th>
        <th>Địa chỉ</th>
    </tr>
    </thead>

    <tbody>

    <c:forEach var="customer" items="${customers}">

        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
        </tr>

    </c:forEach>

    </tbody>

</table>

</body>
</html>