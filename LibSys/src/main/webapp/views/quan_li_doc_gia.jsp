<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý độc giả</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
            color: #333;
        }
        input[type="text"], input[type="email"], input[type="radio"] {
            padding: 8px;
            margin-bottom: 10px;
            width: calc(100% - 120px);
        }
        input[type="radio"] {
            width: auto;
        }
        button {
            padding: 10px 15px;
            color: #fff;
            background-color: #007bff;
            border: none;
            cursor: pointer;
            margin-right: 5px;
        }
        button:hover {
            background-color: #0056b3;
        }
        button[type="reset"], button[type="submit"] {
            background-color: #6c757d;
        }
        button[type="reset"]:hover, button[type="submit"]:hover {
            background-color: #5a6268;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    <script>
        function validateForm() {
            var maDocGia = document.getElementById("maDocGia").value;
            var tenDocGia = document.getElementById("tenDocGia").value;
            var diaChi = document.getElementById("diaChi").value;
            var dienThoai = document.getElementById("dienThoai").value;
            var email = document.getElementById("email").value;
            var genderMale = document.getElementById("nam").checked;
            var genderFemale = document.getElementById("nu").checked;

            if (maDocGia == "" || tenDocGia == "" || diaChi == "" || dienThoai == "" || email == "" || (!genderMale && !genderFemale)) {
                alert("Please fill out all fields.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Quản lý độc giả</h2>
        <form action="ReaderServlet" method="post" onsubmit="return validateForm()">
            <label for="maDocGia">Mã độc giả:</label>
            <input type="text" id="maDocGia" name="maDocGia"><br>
            
            <label for="tenDocGia">Tên độc giả:</label>
            <input type="text" id="tenDocGia" name="tenDocGia"><br>
            
            <label for="diaChi">Địa chỉ:</label>
            <input type="text" id="diaChi" name="diaChi"><br>
            
            <label>Giới tính:</label>
            <input type="radio" id="nam" name="gioiTinh" value="Nam">
            <label for="nam" style="width:auto;">Nam</label>
            <input type="radio" id="nu" name="gioiTinh" value="Nữ">
            <label for="nu" style="width:auto;">Nữ</label><br>
            
            <label for="dienThoai">Điện thoại:</label>
            <input type="text" id="dienThoai" name="dienThoai"><br>
            
            <label for="email">Email:</label>
            <input type="text" id="email" name="email"><br>
            
            <button type="submit" name="action" value="add">Thêm</button>
            <button type="submit" name="action" value="update">Sửa</button>
            <button type="submit" name="action" value="delete">Xóa</button>
            <button type="reset">Mới</button><br><br>
            
        </form>
        
        <table>
            <thead>
                <tr>
                    <th>Mã</th>
                    <th>Họ Tên</th>
                    <th>Địa chỉ</th>
                    <th>Giới tính</th>
                    <th>Điện thoại</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>DG0020</td>
                    <td>Lê Quang Đức</td>
                    <td>Cần Thơ</td>
                    <td>Nam</td>
                    <td>0830190595</td>
                    <td>Duclq@gmail.com</td>
                </tr>
                <tr>
                    <td>DG0019</td>
                    <td>Nguyễn Thị Mỹ Ngọc</td>
                    <td>Cần Thơ</td>
                    <td>Nữ</td>
                    <td>0938817459</td>
                    <td>Ngocntm@gmail.com</td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
</body>
</html>
