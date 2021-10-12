<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>단타포차에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/login.css">
</head>
<body>
<div id=tablet>
	<div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->
         <button class="mainBtn" onClick="/Danta/menu.jsp">HOME</button >
      </div>
      
    <div id=middle> <!--가운데 레이아웃--> 
         <div class=middle-top>
            <div class=logo href="/Danta/menu.jsp"> <!--단타포차 로고-->
               <button type="button" id="logo">
                   <a href="menu.jsp">Danta</a>
               </button>
           
                </div>
         </div>
	<br />
	<!-- 콘솔 메시지의 역할을 하는 로그 텍스트 에리어.(수신 메시지도 표시한다.) -->
	<textarea id="messageTextArea" rows="20" cols="60"></textarea>
	<script type="text/javascript">
	// 콘솔 텍스트에 메시지를 출력한다.
		// 「broadsocket」는 호스트 명
		// WebSocket 오브젝트 생성 , 자동 onopen 접속
		var webSocket = new WebSocket(
		"ws://localhost:8080/BoardSite/broadsocket");
		// 콘솔 텍스트 에리어 오브젝트
		var messageTextArea = document.getElementById("messageTextArea");
		// WebSocket 서버와 접속이 되면 호출되는 함수
		webSocket.onopen = function(message) {
			messageTextArea.value += "<< 서버와 연결이 완료 되었습니다. >>\n";
			messageTextArea.value += "❗️지나친 욕설과 성희롱 관련의 폭언은 처벌의 대상이 될 수 있습니다❗"
		};
		// WebSocket 서버와 접속이 끊기면 호출되는 함수
		webSocket.onclose = function(message) {
			messageTextArea.value += "<< 서버와 연결이 중단 되었습니다. >>\n";
		};
		// WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
		webSocket.onerror = function(message) {
			messageTextArea.value += "error...\n";
		};
		/// WebSocket 서버로 부터 메시지가 오면 호출되는 함수
		webSocket.onmessage = function(message) {
			messageTextArea.value += message.data + "\n";
		};
		// Send 버튼을 누르면 호출되는 함수
		function sendMessage() {
			// 유저명 텍스트 박스 오브젝트를 취득
			var user = document.getElementById("user");
			// 송신 메시지를 작성하는 텍스트 박스 오브젝트를 취득
			var message = document.getElementById("textMessage");
			messageTextArea.value += user.value + "(me) => " + message.value
					+ "\n";
			// WebSocket 서버에 메시지를 전송(형식 「{{유저명}}메시지」)
			webSocket.send("[" + user.value + "]" + message.value);
			// 송신 메시지를 작성한 텍스트 박스를 초기화
			message.value = "";
		}
		// WebSocket 접속 해제
		function disconnect() {
			webSocket.close();
		}
	</script>
	<form>
		<input id="user" type="text" value="name"> <!-- 유저명 박스 -->
		<input id="textMessage" type="text"> <!-- 메시지 박스 -->
		<input onclick="sendMessage()" value="보내기" type="button"> <!-- 메시지 송신버튼 -->
		<input onclick="disconnect()" value="연결해제" type="button"> <!-- 종료버튼 -->
	</form>
	</div>
	<div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->
	
   </div>
</div>
</body>
</html>