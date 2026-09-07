
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">

    <title>Tính Lương Nhân Viên</title>

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

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input,
        select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            margin-top: 25px;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #0056b3;
        }
    </style>

</head>

<body>

<div class="container">

    <h1>Tính Lương Nhân Viên</h1>

    <form action="${pageContext.request.contextPath}/calculate"
          method="post">

        <label>Ca sáng:</label>
        <input type="number"
               name="shiftHours"
               step="0.5"
               min="0"
               required>

        <label>Ca chiều:</label>
        <input type="number"
               name="shiftHours"
               step="0.5"
               min="0"
               required>

        <label>Ca tối:</label>
        <input type="number"
               name="shiftHours"
               step="0.5"
               min="0"
               required>

        <label>Mức lương theo giờ:</label>

        <select name="hourlyRate" required>

            <option value="30000">
                30.000 VNĐ / giờ
            </option>

            <option value="40000">
                40.000 VNĐ / giờ
            </option>

            <option value="50000">
                50.000 VNĐ / giờ
            </option>

            <option value="60000">
                60.000 VNĐ / giờ
            </option>

        </select>

        <button type="submit">
            Tính lương
        </button>

    </form>

</div>

</body>

</html>