<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">

    <title>Kết quả chuyển đổi</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
        }

        .container {
            width: 450px;
            margin: 100px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }

        h2 {
            text-align: center;
        }

        .result {
            margin-top: 20px;
            line-height: 2;
        }

        .back {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Kết quả chuyển đổi</h2>

    <div class="result">

        <p>
            Tỉ giá:
            <strong>${rate} VNĐ/USD</strong>
        </p>

        <p>
            Số tiền USD:
            <strong>${usd} USD</strong>
        </p>

        <p>
            Số tiền VNĐ:
            <strong>${vnd} VNĐ</strong>
        </p>

    </div>

    <a class="back"
       href="${pageContext.request.contextPath}/">
        ← Quay lại
    </a>

</div>

</body>
</html>