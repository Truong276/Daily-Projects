<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">

    <title>Chuyển đổi USD sang VNĐ</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 15px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Chuyển đổi USD → VNĐ</h2>

    <form action="${pageContext.request.contextPath}/convert"
          method="post">

        <label>Tỉ giá (VNĐ/USD):</label>

        <input type="number"
               name="rate"
               value="25000"
               required>

        <label>Số tiền USD:</label>

        <input type="number"
               name="usd"
               step="0.01"
               required>

        <button type="submit">
            Chuyển đổi
        </button>

    </form>

</div>

</body>
</html>
