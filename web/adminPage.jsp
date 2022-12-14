<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>adminPage</title>
</head>
<body>

<select id="languagesSelect" onchange="selectLanguage()">
    <option value="en" selected>English</option>
    <option value="ru">Русский</option>
</select>

<div class="en">
    <h1>Reserve and unreserve rooms</h1>
    <c:forEach var="room" items="${sessionScope.rooms}">
        <c:out value="${room.getId()}"/>
        <c:out value="${room.getNumber()}"/>
        <c:choose>
            <c:when test="${room.isReserved()}">
                <form method="post" style="border: red solid 2px" action="Controller">
                    <input name="COMMAND" value="UNRESERVE_ROOM">
                    <input type="hidden" name="roomId" value="${room.getId()}">
                    <button type="submit">Unreserve</button>
                </form>
            </c:when>
            <c:otherwise>
                <form method="post" style="border: green solid 2px" action="Controller">
                    <input name="COMMAND" value="RESERVE_ROOM">
                    <input type="hidden" name="roomId" value="${room.getId()}">
                    <button type="submit">Reserve</button>
                </form>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <%--add new room--%>
    <h1>Add new room</h1>
    <form action="Controller" method="post">
        <input name="COMMAND" value="ADD_NEW_ROOM">
        <input type="number" name="roomNumber" placeholder="Room number">
        <button type="submit">Add new room</button>
    </form>
    <%--logout--%>
    <form action="Controller" method="post">
        <input type="hidden" name="COMMAND" value="LOG_OUT_COMMAND">
        <button type="submit">Log out</button>
    </form>
</div>
<div class="ru">
    <h1>Бронировать и снять бронь</h1>
    <c:forEach var="room" items="${sessionScope.rooms}">
        <c:out value="${room.getId()}"/>
        <c:out value="${room.getNumber()}"/>
        <c:choose>
            <c:when test="${room.isReserved()}">
                <form method="post" style="border: red solid 2px" action="Controller">
                    <input name="COMMAND" value="UNRESERVE_ROOM">
                    <input type="hidden" name="roomId" value="${room.getId()}">
                    <button type="submit">Снять бронь</button>
                </form>
            </c:when>
            <c:otherwise>
                <form method="post" style="border: green solid 2px" action="Controller">
                    <input name="COMMAND" value="RESERVE_ROOM">
                    <input type="hidden" name="roomId" value="${room.getId()}">
                    <button type="submit">Забронировать</button>
                </form>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <h1>Добавить новую комнату</h1>
    <form action="Controller" method="post">
        <input name="COMMAND" value="ADD_NEW_ROOM">
        <input type="number" name="roomNumber" placeholder="Номер комнаты">
        <button type="submit">Добавить новую комнату</button>
    </form>

    <form action="Controller" method="post">
        <input type="hidden" name="COMMAND" value="LOG_OUT_COMMAND">
        <button type="submit">Выйти</button>
    </form>
</div>

<script src="js/translator.js"></script>
</body>
</html>
