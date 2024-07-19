<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý người dùng</title>
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
            width: 120px;
            margin-bottom: 10px;
            color: #333;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="radio"] {
            padding: 8px;
            margin-bottom: 10px;
            width: calc(100% - 140px);
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
            var maNguoiDung = document.getElementById("maNguoiDung").value;
            var tenNguoiDung = document.getElementById("tenNguoiDung").value;
            var email = document.getElementById("email").value;
            var matKhau = document.getElementById("matKhau").value;
            var roleAdmin = document.getElementById("admin").checked;
            var roleThuThu = document.getElementById("thuThu").checked;

            if (maNguoiDung == "" || tenNguoiDung == "" || email == "" || matKhau == "" || (!roleAdmin && !roleThuThu)) {
                alert("Please fill out all fields.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Quản lý người dùng</h2>
        <form action="UserServlet" method="post" onsubmit="return validateForm()">
            <label for="maNguoiDung">Mã người dùng:</label>
            <input type="text" id="maNguoiDung" name="maNguoiDung"><br>
            
            <label for="tenNguoiDung">Tên người dùng:</label>
            <input type="text" id="tenNguoiDung" name="tenNguoiDung"><br>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br>
            
            <label for="matKhau">Mật khẩu:</label>
            <input type="password" id="matKhau" name="matKhau"><br>
            
            <label>Vai Trò:</label>
            <input type="radio" id="admin" name="vaiTro" value="Admin">
            <label for="admin" style="width:auto;">Admin</label>
            <input type="radio" id="thuThu" name="vaiTro" value="Thủ thư">
            <label for="thuThu" style="width:auto;">Thủ thư</label><br>
            
            <button type="submit" name="action" value="add">Thêm</button>
            <button type="submit" name="action" value="update">Sửa</button>
            <button type="submit" name="action" value="delete">Xóa</button>
            <button type="reset">Mới</button><br><br>
            
        
        </form>
        
        <table>
            <thead>
                <tr>
                    <th>Mã người dùng</th>
                    <th>Họ và tên</th>
                    <th>Email</th>
                    <th>Vai trò</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>vinhnt</td>
                    <td>Nguyễn Thanh Vinh</td>
                    <td>Vinhntpc07091@fpt.edu.vn</td>
                    <td>Thủ thư</td>
                </tr>
                <tr>
                    <td>thamlh</td>
                    <td>Lê Dương Hồng Thắm</td>
                    <td>Thamldhpc07084@fpt.edu.vn</td>
                    <td>Thủ thư</td>
                </tr>
                <tr>
                    <td>ngandt</td>
                    <td>Dương Tuyết Ngân</td>
                    <td>Ngandtpc07108@fpt.edu.vn</td>
                    <td>Admin</td>
                </tr>
                <tr>
                    <td>huyenttb</td>
                    <td>Trần Thị Bích Huyền</td>
                    <td>Huyenttb07086@fpt.edu.vn</td>
                    <td>Thủ thư</td>
                </tr>
                <tr>
                    <td>cuongdtk</td>
                    <td>Đặng Thị Kim Cương</td>
                    <td>Cuongdtkpc07085@fpt.edu.vn</td>
                    <td>Thủ thư</td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
</body>
</html>
