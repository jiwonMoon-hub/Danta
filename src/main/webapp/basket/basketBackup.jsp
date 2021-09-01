<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="/Danta/css/style.css">
<link rel="stylesheet" href="/Danta/css/baguni.css">
<script type="text/javascript" src="/Danta/baguni.js"></script>
</head>
<body>
	<div id=basket-tablet>
		<div id=left-sidebar>
			<!--왼쪽 사이드 레이아웃-->

			<button class="mainBtn" onClick="history.back();">HOME</button>

		</div>
		<div id=basket-middle style="overflow-y: scroll">
			<div class="baguniTable">
				<form name="orderform" id="orderform" method="post"
					class="orderform" action="/Page" onsubmit="return false;">

					<input type="hidden" name="cmd" value="order">
					<div class="basketdiv" id="basket">
						<div class="row head">
							<div class="subdiv">
								<div class="check">선택</div>
								<div class="pname">상품명</div>
							</div>
							<div class="subdiv">
								<div class="basketprice">가격</div>
								<div class="num">수량</div>
								
							</div>
							<div class="subdiv">
								<div class="basketcmd">삭제</div>
							</div>
							<div class="split"></div>
						</div>
<!--메뉴품목 -->
						<div class="row data">
						<div class="subdiv">
						<!-- 체크박스 -->
								<div class="check">
									<input type="checkbox" name="buy" value="260" checked=""
										onclick="javascript:basket.checkItem();">&nbsp;
								</div>
								<!-- <메뉴이름> -->
								<div class="pname">
									<span>처음처럼</span>
								</div>
						</div>
						<!-- <메뉴가격> -->
						<div class="subdiv">
								<div class="basketprice">
									<input type="hidden" name="p_price" id="p_price1"
										class="p_price" value="4000">4,000원
								</div>
								<div class="num">
									<div class="updown">
										<!-- 수량 업다운 숫자, 버튼 -->
										<input type="text" name="p_num1" id="p_num1" size="2"
											maxlength="4" class="p_num" value="1"
											onkeyup="javascript:basket.changePNum(1);"> <span
											onclick="javascript:basket.changePNum(1);"><i
											class="fas fa-arrow-alt-circle-up up"></i></span> <span
											onclick="javascript:basket.changePNum(1);"><i
											class="fas fa-arrow-alt-circle-down down"></i></span>
											</div>
										</div>
										<!-- 수량에 따른 합계 -->
										<div class="sum">10,000원</div>
										</div>
										<div class="subdiv">
								<!-- 삭제버튼 -->
								<div class="basketcmd">
									<a href="javascript:void(0)" class="abutton"
										onclick="javascript:basket.delItem();">삭제</a>
								</div>
							</div>
							</div>
							</div>
						</form>
						</div>
						<!-- <!-- <<<<< 이전 페이지>>>> --> -->
						<%
						int price = 10000;
						List<String> list = (List) (session.getAttribute("foodList"));
						if (list == null) {
						%>

						장바구니에 넣은 상품이 없습니다.

						<%
						} else {
						for (String food : list) {
						%>
						<p id=list>
							<%
							out.println(food);
							out.println(price); //이 지점에 메뉴의 값을 넣어주면 됨
							%>
							<br>
							<%
							//String 밖으로 내보내는 뜻
							// 줄바꿈을 원할 경우 (food)안에 html 형식으로 작성
							}

							}
							%>
						
					</div>
					<div id=basket-bottom>
						<p id=bottom>합계:</p>
					</div>

					<button id=order>주문하기</button>
			</div>
</body>
</html>