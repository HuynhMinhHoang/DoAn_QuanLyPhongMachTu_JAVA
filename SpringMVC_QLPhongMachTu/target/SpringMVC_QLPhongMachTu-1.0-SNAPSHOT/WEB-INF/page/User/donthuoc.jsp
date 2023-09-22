<%-- 
    Document   : donthuoc
    Created on : Sep 22, 2023, 5:57:35 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:url value="/benhnhan/donthuoc" var="actions"/>

<c:if test="${err != null}">
    <div class="alert1">
        ${err}
    </div>
</c:if>

<form:form modelAttribute="user">
    <div class="text-lsk text-lsk111">
        <p>Lịch sử đơn thuốc</p>
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
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${lsdonthuoc}" var="p">
                            <tr>
                                <td>${p.idChitietThuoc}</td>
                                <td>${p.idThuoc.tenThuoc}</td>
                                <td>${p.soLuongSd}</td>
                                <td>${p.hdsd}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </section>
        </div>

    </main>
</form:form>


<script src="<c:url value="/js/main.js" />"></script>


