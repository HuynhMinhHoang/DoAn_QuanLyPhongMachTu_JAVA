<%-- 
    Document   : lichsuthanhtoan
    Created on : Sep 20, 2023, 4:41:45 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:url value="/benhnhan/lichsuthanhtoan" var="actions"/>





<c:if test="${err != null}">
    <div class="alert1">
        ${err}
    </div>
</c:if>

<form:form modelAttribute="user" class="form_lsthanhtoan">
    <div class="text-lsk text-lsk111">
        <p>Lịch sử thanh toán</p>
    </div>
    <main class="table lskham lsthanhtoan">
        <div>
            <section class="table__body lskham1 lsthanhtoan1">
                <table>
                    <thead>
                        <tr>

                            <th>Tên bệnh nhân</th>
                            <th id="Username">Triệu chứng bệnh</th>
                            <th id="Username">Kết luận bệnh</th>
                            <th>Tiền thuốc</th>
                            <th>Tiền dịch vụ</th>
                            <th>Tiền khám</th>
                            <th>Ngày thanh toán</th>
                            <th>Trạng thái thanh toán</th>
                            <th>File thuốc</th>
                            <th>Bác sĩ</th>
                            <th>Dịch vụ khám</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${lsthanhtoan}" var="p">
                        <input type="hidden" name="id" value="${p.idHoadon}" />

                        <tr>

                            <td>${p.idPhieudky.idBn.hoTen}</td>
                            <td>${p.idPhieudky.idPk.trieuChung}</td>
                            <td>${p.idPhieudky.idPk.ketLuan}</td>
                            <td class="formatTien">${p.tienThuoc}</td>
                            <td class="formatTien">${p.tienDv}</td>
                            <td class="formatTien">${p.tienKham.tienKham}</td>
                            <td>${p.ngayThanhToan}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${p.ngayThanhToan == null}">
                                        <p id="xacnhan">Chưa thanh toán</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p id="xacnhan1">Đã thanh toán</p>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <div class="submitdkk submitdkk111 submitdkk1111 submitdkk111115 submitdkk111115423">               
                                    <a href="${pageContext.request.contextPath}/DonThuoc-PDF?id=${p.idHoadon}" target="_blank">
                                        <img src="<c:url value="/img/thuoc_pdf.png"/>" alt="alert" />
                                    </a>
                                </div>
                            </td>


                            <c:choose>
                                <c:when test="${p.ngayThanhToan == null}">
                                    <td>
                                        <p id="xacnhan">Chưa thanh toán</p>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td class="rating-td" data-toggle="rating-popup">
                                        <div class="submitdkk submitdkk111 submitdkk1111 submitdkk111115 submitdkk111115423">               
                                            <a href="<c:url value ="/benhnhan/danhgiaBS/${p.idHoadon}"/>">
                                                <img src="<c:url value="/img/star.png"/>" alt="alert" />
                                            </a>
                                        </div>
                                    </td>
                                </c:otherwise>
                            </c:choose>



                            <c:choose>
                                <c:when test="${p.ngayThanhToan == null}">
                                    <td>
                                        <p id="xacnhan">Chưa thanh toán</p>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td class="rating-td" data-toggle="rating-popup">
                                        <div class="submitdkk submitdkk111 submitdkk1111 submitdkk111115 submitdkk111115423">               
                                            <a href="<c:url value ="/benhnhan/danhgiaDV"/>">
                                                <img src="<c:url value="/img/star.png"/>" alt="alert" />
                                            </a>
                                        </div>
                                    </td>
                                </c:otherwise>
                            </c:choose>



                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </section>
        </div>

    </main>
</form:form>






<!--<script>
    // Lấy tất cả các phần tử có lớp "rating-td"
    const ratingTds = document.querySelectorAll('.rating-td');

// Lấy thẻ div "containerBS"
    const containerBS = document.querySelector('.containerBS');

// Lấy thẻ "formLSThanhToan"
    const formLSThanhToan = document.querySelector('.form_lsthanhtoan');

// Lấy tất cả các phần tử có lớp "Huy"
    const huyButtons = document.querySelectorAll('.Huy');

// Đặt trạng thái mặc định
    let isContainerVisible = false;

// Lặp qua tất cả các phần tử "rating-td" và thêm sự kiện click
    ratingTds.forEach((td) => {
        td.addEventListener('click', () => {
            if (!isContainerVisible) {
                // Hiển thị layout mới (containerBS)
                containerBS.style.display = 'block';
                isContainerVisible = true;

                // Loại bỏ lớp "rating-td" để tránh việc click lại
                td.classList.remove('rating-td');

                // Để đảm bảo layout mới đè lên toàn bộ trang, bạn có thể đặt các thuộc tính CSS sau:
                containerBS.style.position = 'fixed';
                containerBS.style.top = '0';
                containerBS.style.left = '0';
                containerBS.style.right = '0';
                containerBS.style.bottom = '0';
                containerBS.style.background = '#0d5131';
                containerBS.style.zIndex = '9999';

                // Ẩn formLSThanhToan
                formLSThanhToan.style.opacity = '0.5';
                formLSThanhToan.style.pointerEvents = 'none';
            } else {
                // Nếu containerBS đang hiển thị, thì khi click lại nó sẽ ẩn
                containerBS.style.display = 'none';
                isContainerVisible = false;

                // Khôi phục lớp "rating-td" cho phần tử rating-td
                td.classList.add('rating-td');

                // Khôi phục formLSThanhToan
                formLSThanhToan.style.opacity = '1';
                formLSThanhToan.style.pointerEvents = 'auto';
            }
        });
    });

// Thêm sự kiện click cho các phần tử "Huy"
    huyButtons.forEach((button) => {
        button.addEventListener('click', () => {
            // Ẩn containerBS
            containerBS.style.display = 'none';
            isContainerVisible = false;

            // Khôi phục formLSThanhToan
            formLSThanhToan.style.opacity = '1';
            formLSThanhToan.style.pointerEvents = 'auto';
        });
    });

</script>-->


<script src="<c:url value="/js/main.js" />"></script>

