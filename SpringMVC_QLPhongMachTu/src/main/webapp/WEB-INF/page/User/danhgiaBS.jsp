<%-- 
    Document   : danhgiaBS
    Created on : Sep 26, 2023, 10:47:46 AM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:url value="/benhnhan/danhgiaBS/${getHD.idHoadon}" var="actions"/>


<c:choose>
    <c:when test="${getDanhGiaBSByIdHD != null}">
        <p id="xacnhan">Đã đánh giá</p>
    </c:when>
    <c:otherwise>
        <form:form class="form_DGBS" method="post" modelAttribute="addDGBS" action="${actions}">
            <div class="nav_DGBS">
                <div class="containerBS">
                    <h5>Vui lòng để lại đánh giá cho Bác sĩ ${getHD.idPhieudky.idBs.hoTen}!</h5>
                    <div class="star-widget">
                        <input type="radio" id="rate-5" name="saoDanhGia" value="5">
                        <label for="rate-5" class="fas fa-star"></label>
                        <input type="radio" id="rate-4" name="saoDanhGia" value="4">
                        <label for="rate-4" class="fas fa-star"></label>
                        <input type="radio" id="rate-3" name="saoDanhGia" value="3">
                        <label for="rate-3" class="fas fa-star"></label>
                        <input type="radio" id="rate-2" name="saoDanhGia" value="2">
                        <label for="rate-2" class="fas fa-star"></label>
                        <input type="radio" id="rate-1" name="saoDanhGia" value="1">
                        <label for="rate-1" class="fas fa-star"></label>


                        <nav action="#">
                            <label></label>
                            <form:textarea path="noidungDanhgia" class="textarea" placeholder="Hãy chia sẻ nhận xét nhé...!"/>
                            <div class="btn">
                                <button type="submit">Gửi</button>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>

        </form:form>
    </c:otherwise>
</c:choose>




