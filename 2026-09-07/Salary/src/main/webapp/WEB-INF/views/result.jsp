
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">

<head>

    <meta charset="UTF-8">

    <title>Kết quả tính lương</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 40px;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.15);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .row {
            display: flex;
            justify-content: space-between;
            padding: 15px 0;
            border-bottom: 1px solid #ddd;
        }

        .label {
            font-weight: bold;
        }

        .salary {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-top: 25px;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 25px;
            padding: 12px;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back:hover {
            background: #0056b3;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Kết quả tính lương</h1>

    <div class="row">

        <span class="label">
            Mức lương theo giờ:
        </span>

        <span>
            ${hourlyRate} VNĐ
        </span>

    </div>

    <div class="row">

        <span class="label">
            Tổng số giờ làm:
        </span>

        <span>
            ${totalHours} giờ
        </span>

    </div>

    <div class="salary">

        Tổng tiền lương:

        <br>

        ${totalSalary} VNĐ

    </div>

    <a class="back"
       href="${pageContext.request.contextPath}/">

        Quay lại

    </a>

</div>

</body>

</html>