<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>단타포차에 오신걸 환영합니다.</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/roulette.css">
   <script type="text/javascript" src="../lib/jquery-3.2.0.min.js"></script>
   <script type="text/javascript" src="../lib/jquery.color-2.1.2.min.js"></script>
</head>

<body>
   <div id=tablet-roulette> 
      <div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->

              <button class="mainBtn" onClick="history.back();">HOME</button >
            
      </div>

      <div id=middle> <!--가운데 레이아웃-->
         <div class="roulette-top" style= "overflow-y: scroll"> <!--상단 메뉴 리스트-->
            돌려돌려 돌림판!
         </div>
            <div class="wrap">
               
               <canvas width="400" height="400" class="roulette">지원하지 않는 브라우저입니다. Google Chrome 최신 버전을 사용해주세요.</canvas>
               <div id="roll" class="button"></div>
            </div>
          <ul id=list-zone style= "overflow-y: scroll">
               <li class="item empty" data-chance="0">
                  <div class="item-title" placeholder="이름" contenteditable="true"></div>
                  <div class="item-weight" data-weight="1"></div>
  
               </li>
            </ul>

       
         <div id="button-tooltip" style="display: none;">
            <div><span class="command">Alt + 클릭</span><span class="number">±100</span></div>
            <div><span class="command">Ctrl + 클릭</span><span class="number">±10</span></div>
            <div><span class="command">클릭</span><span class="number">±1</span></div>
         </div>
         <div id="result" style="display: none;">!!</div>
         <script type="text/javascript" src="../js/roulette.js"></script>
         <script>
            document.getElementsByTagName('body')[0].removeAttribute('class');
         </script>
      </div>

   </div>
</body>
      </html>
      
