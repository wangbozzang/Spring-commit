<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스</title>
<link href="<c:url value='/resources/css/starbucks.css'/>"
	rel="stylesheet">
<script src="<c:url value='/resources/js/jquery-3.7.1.min.js'/>"></script>
<style>
        .categoryContainer {
            display: flex;
            flex-direction: column;
        }

        .categoryGroup {
            margin-bottom: 20px; 
        }

        .categoryBtn {
            margin-bottom: 10px;
        }

        .categoryImg {
            width: 100px;
            height: auto;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
	<div>
		<ul>
			<li><a href="<c:url value='/'/>">첫화면으로</a></li>
		</ul>
	</div>
	<div id="categoryContainer">
        <div class="categoryGroup">
            <button class="categoryBtn" data-category="cake">케이크</button>
            <img class="categoryImg" src="<c:url value='/resources/images/starbucks/cake.jpg'/>">
        </div>
        <div class="categoryGroup">
            <button class="categoryBtn" data-category="coffee">커피</button>
            <img class="categoryImg" src="<c:url value='/resources/images/starbucks/coffee.jpg'/>">
        </div>
        <div class="categoryGroup">
            <button class="categoryBtn" data-category="sandwich">샌드위치</button>
            <img class="categoryImg" src="<c:url value='/resources/images/starbucks/sandwich.jpg'/>">
       </div>
    </div>
    <div id="menuList"></div>
    <form id="orderForm" method="post" action="<c:url value='/order/order'/>">
        <input type="hidden" id="menu" name="menu">
        <input type="hidden" id="amount" name="amount">
    </form>
    <script src="<c:url value='/resources/js/starbucks_menu.js'/>"></script>
    <script>
        document.getElementById('btnOrder').addEventListener('click', function() {
            document.getElementById('amount').value = document.getElementById('count').value;
            document.getElementById('orderForm').submit();
        });

        // 각 카테고리 버튼에 클릭 이벤트를 추가
        document.querySelectorAll('.categoryBtn').forEach(function(btn) {
            btn.addEventListener('click', function() {
                // 모든 그룹을 숨김
                document.querySelectorAll('.categoryGroup').forEach(function(group) {
                    group.style.display = 'none';
                });

                // 선택한 카테고리에 해당하는 그룹을 보이게 함
                var category = btn.getAttribute('data-category');
                document.getElementById(category + 'Group').style.display = 'block';
            });
        });
    </script>
</body>
</html>