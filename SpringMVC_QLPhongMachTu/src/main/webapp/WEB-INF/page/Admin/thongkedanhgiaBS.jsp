<%-- 
    Document   : thongkedanhgia
    Created on : Sep 26, 2023, 11:05:59 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main class="table tableQLTK">
    <nav class="container_TK">

        <div class="TK_Quy TK_Quy1111">

            <form action="${pageContext.request.contextPath}/admin/thongkedanhgiaBS" method="post">
                <h2 id="textTKDT">Thống kê đánh giá bác sĩ</h2>
                <p id="textTKDT1">Chọn bác sĩ</p>
                <select id="idTk" name="idTk">
                    <c:forEach items="${dsBS}" var="t">
                        <option value="${t.idTk}">${t.hoTen} [${t.idTk}]</option>
                    </c:forEach>
                </select>

                <button type="submit" >Thống kê</button>
            </form>


        </div>
        <canvas id="myChart2"></canvas>

    </nav>

    <!--    <div class="text_DGBS">
            <h5>NỘI DUNG ĐÁNH GIÁ [Bác sĩ: ]</h5>
        </div>-->
    <main class="table lskham lsthanhtoan danhgiaBS">
        <div>
            <section class="table__body lskham1 lsthanhtoan1">

                <table>
                    <thead>
                        <tr>
                            <th>Tài khoản đánh giá</th>
                            <th>Lượt đánh giá</th>
                            <th>Nội dung đánh giá</th>                         
                        </tr>
                    </thead>
                    <c:forEach items="${dsBSByIDTK}" var="p">
                        <tbody>                       
                            <tr>
                                <td>${p.tkDanhgia.hoTen}</td>
                                <td>${p.luotDanhgia} <i class="fa-solid fa-star" style="color: #fbff00;"></i></td>
                                <td>${p.noidungDanhgia}</td>                   
                            </tr>                 
                        </tbody>
                    </c:forEach>
                </table>
            </section>
        </div>
    </main>

</main>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>

    var data = {
        labels: ["1 Sao", "2 Sao", "3 Sao", "4 Sao", "5 Sao"],
        datasets: [{
                label: "Số lượng đánh giá Bác sĩ",
                data: [${mot}, ${hai}, ${ba}, ${bon}, ${nam}],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 205, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(54, 162, 235, 1)'
                ],
                borderWidth: 1
            }]
    };


    var ctx = document.getElementById('myChart2').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: data,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
