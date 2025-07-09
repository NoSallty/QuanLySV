<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
    <title>Biểu đồ từ cơ sở dữ liệu MySQL</title>
    <!-- Đường dẫn đến thư viện ChartJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    
</head>
<body>
    <canvas id="myChart" width="50px" height="50px"></canvas>

    <%
        // Import các thư viện cần thiết
        // Thay đổi thông tin kết nối đến cơ sở dữ liệu của bạn
        String url = "jdbc:mysql://localhost:3306/qlsv1";
        String username = "root";
        String password = "Anhtien123.!@#";

        try {
            // Kết nối đến cơ sở dữ liệu
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            // Truy vấn cơ sở dữ liệu
            Statement stmt = conn.createStatement();
            String sql = "SELECT tenhp, soluongSVtoida FROM monhoc";
            ResultSet rs = stmt.executeQuery(sql);

            // Tạo các mảng lưu trữ dữ liệu cho biểu đồ
            String[] labels = new String[11]; // Thay đổi kích thước mảng tùy thuộc vào số liệu bạn muốn lấy
            int[] data = new int[11]; // Thay đổi kích thước mảng tùy thuộc vào số liệu bạn muốn lấy

            int count = 0;
            while (rs.next()) {
                labels[count] = rs.getString("tenhp");
                data[count] = rs.getInt("soLuongSVtoida");
                count++;
            }

            // Đóng kết nối cơ sở dữ liệu
            conn.close();
    %>

    <script>
        // Dữ liệu từ JSP được chuyển vào biến JavaScript để vẽ biểu đồ
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [<% for (int i = 0; i < count; i++) { %>'<%= labels[i] %>',<% } %>],
                datasets: [{
                    label: 'Dữ liệu biểu đồ',
                    data: [<% for (int i = 0; i < count; i++) { %><%= data[i] %>,<% } %>],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>

    <%
        } catch (Exception e) {
            out.println("Lỗi: " + e.getMessage());
        }
    %>
</body>
</html>
