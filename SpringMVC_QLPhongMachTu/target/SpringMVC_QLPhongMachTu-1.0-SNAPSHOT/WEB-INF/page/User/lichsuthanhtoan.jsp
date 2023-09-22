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

<form:form modelAttribute="user">
    <div class="text-lsk text-lsk111">
        <p>Lịch sử thanh toán</p>
    </div>
    <main class="table lskham">
        <div>
            <section class="table__body lskham1">
                <table>
                    <thead>
                        <tr>
                            <th>Tên bệnh nhân</th>
                            <th>Triệu chứng bệnh</th>
                            <th>Kết luận bệnh</th>
                            <th>Tiền thuốc</th>
                            <th>Tiền dịch vụ</th>
                            <th>Tiền khám</th>
                            <th>Ngày thanh toán</th>
                            <th>Trạng thái thanh toán</th>
                            <th></th>
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
                                <div class="submitdkk submitdkk111 submitdkk1111 submitdkk111115">               
                                    <a href="${pageContext.request.contextPath}/DonThuoc-PDF?id=${p.idHoadon}" target="_blank">
                                        Xuất file thuốc (PDF)
                                    </a>
                                </div>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </section>
        </div>

    </main>
</form:form>


<script src="<c:url value="/js/main.js" />"></script>

