<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문페이지</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Secular+One&display=swap" rel="stylesheet">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        body {
            font-family: 'Nanum Gothic', sans-serif;
        }
        
        header {
            height: 230px;
            background-color: cornsilk;
            text-align: center;
        }

        footer {
            height: 230px;
            background-color: cadetblue;
            text-align: center;
        }

        section {
            width: 1400px;
            /* background-color: crimson; */
            margin-right: auto;
            margin-left: auto;
        }

        .top {
            width: 1250px;
            margin-left: auto;
            margin-right: auto;
        }

        .top2 {
            width: 1180px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 30px;
        }

        .title {
            font-size: 25px;
        }

        .title2 {
            font-size: 18px;
            font-weight: bold;
        }

        .order_tb {
            width: 1300px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        #orderList, #orderList2, #orderList3 {
            border-collapse: collapse;
            text-align: center;
        }

        #orderList th {
            height: 35px;
            border-top: 2px solid lightgray;
            border-bottom: 1px solid lightgray;
            background-color: #ececec;
        }

        #orderList td {
            border-bottom: 1px solid lightgray;
        }
        #orderList2 tr td:first-child {
            width: 200px;
            height: 30px;
            text-align: center;
        }

        #orderList2 tr td:last-child {
            width: 1030px
        }

        #orderList3 tr td:first-child {
            width: 200px;
            height: 30px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
        }

        #orderList3 tr td:last-child {
            width: 1030px;
            font-size: 22px;
            font-weight: bold;
            color : rgb(231, 133, 110);
        }

        .customerInfo, .customerInfo2, .deliveryInfo, .deliveryInfo2 {
            width: 1200px;
            margin-left: auto;
            margin-right: auto;
        }

        .input-label-wrap, .input-zipcode-wrap {
            margin: 30px;
        }

        .input-label-wrap label, .input-zipcode-wrap label {
            display: inline-block;
            margin-bottom: 10px;
            font-size: 14px;
            font-weight: 700;
            color: #999;
        }

        .input-label-wrap input {
            padding: 0 30px;
            width: 1100px;
            height: 50px;
            font-size: 20px;
            border: 1px solid #d7d7d7;
            border-radius: 4px;
            /* outline: none; */
            /* background-color: #fff; */
            /* -webkit-box-sizing: border-box; */
            box-sizing: border-box;
        }
        
        .input-zipcode-wrap input {
            padding: 0 30px;
            width: 900px;
            height: 50px;
            font-size: 20px;
            border: 1px solid #d7d7d7;
            border-radius: 4px;
            /* outline: none; */
            /* background-color: #fff; */
            /* -webkit-box-sizing: border-box; */
            box-sizing: border-box;
            padding-right : 176px;
        }

        .paymentInfo {
            width: 1180px;
            margin-left: auto;
            margin-right: auto;
        }

        .deliveryInfo2 div:nth-child(3) input,
        .deliveryInfo2 div:nth-child(4) input {
            background-color: #fafafa;
        }

        #getInfo {
            /* float: right; */
            margin-left: 850px;
            font-weight: 600;
            color : rgb(94, 94, 94);
        }

        #searchZipcodeBtn {
            width: 180px;
            height: 50px;
            /* position: absolute; */
            /* right: 0; */
            /* top: 50%; */
            /* margin-top: -25px; */
            background-color: #333;
            border: none;
            color: #fff;
            padding-left: 4px;
            padding-right: 4px;
            font-size: 16px;
            font-weight: 700;
            border-radius: 25px;
            cursor: pointer;
        }

        .btnArea {
            height: 40px;
            text-align: center;
        }

        #orderBtn {
            width: 400px;
            height: 50px;
            border: 0px;
            border-radius: 25px;
            background-color: rgb(231, 133, 110);
            font-size: 16px;
            font-weight: 700;
            color: white;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <header>
        <h1>header</h1>
    </header>
    <br><br><br><br><br>

    <section>
        <div class="top">
            <span class="title">주문내역 및 배송지 정보</span>
        </div>
        <div class="top2">
            <span class="title2">주문내역</span>
        </div>
        <br>
        <div class="order_tb">
            <table id="orderList">
                <thead>
                    <tr>
                        <th width="1000px">상품 정보</th>
                        <th width="100px">수량</th>
                        <th width="200px">주문 가격</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <h5>ChildLife 차일드라이프 비타민D3 천연 베리맛 30ml</h5>
                        </td>
                        <td>2</td>
                        <td>140,000</td>
                    </tr>
                    <tr>
                        <td>
                            <h5>ChildLife 차일드라이프 비타민D3 천연 베리맛 30ml</h5>
                        </td>
                        <td>2</td>
                        <td>140,000</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table id="orderList2">
                <tr>
                    <td><b>Total</b></td>
                    <td style="text-align: right;">
                        <!-- <b><fmt:formatNumber pattern="###,###,###" value="${ map.sumPrice }"/></b> -->
                        <b>280,000</b>
                    </td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td style="text-align: right;">
                        <!-- ${ map.fee } -->
                        + 무료
                    </td>
                </tr>
            </table>
            <hr><br>
            <table id="orderList3">
                <tr>
                    <td>총 결제금액</td>
                    <td style="text-align: right;">280,000</td>
                </tr>
            </table>
        </div>
        <br><br><br><br>
        <div class="customerInfo">
            <span class="title2">주문자 정보</span>
        </div>
        <br>
        <form action="" id="order_frm" method="post">
            <div class="customerInfo2">
                <div class="input-label-wrap">
                    <label for="customerName">이 &nbsp; 름</label><br>
                    <input type="text" id="customerName" placeholder="이름을 입력해주세요.">
                </div>
                <div class="input-label-wrap">
                    <label for="customerTel">연락처</label><br>
                    <input type="tel" id="customerTel" placeholder="연락처를 입력해주세요. ('-'제외)">
                </div>
                <!-- <div class="input-label-wrap">
                    <label for="customerEmail">이메일</label><br>
                    <input type="email" id="customerEmail" placeholder="이메일을 입력해 주세요.">
                </div> -->
            </div>
            <br><br>
            <div class="deliveryInfo">
                <span class="title2">배송지 정보</span>
                <span id="getInfo"><label for="getInfo">
                    <input type="checkbox" id="copyChecked" onclick="copyInfo();"> 주문자 정보 가져오기</label></span>
                                
                    <script>
                        // 주문자 정보 가져오기 체크박스
                        function copyInfo() {
                            if(document.getElementById('copyChecked').checked) {
                                document.getElementById('receiverName').value = document.getElementById('customerName').value;
                                document.getElementById('receiverTel').value = document.getElementById('customerTel').value;
                            }
                        }
                    </script>
            </div>
            <br>
            <div class="deliveryInfo2">
                <div class="input-label-wrap">
                    <label for="receiverName">수령인 이름</label><br>
                    <input type="text" id="receiverName" placeholder="수령인 이름을 입력해주세요.">
                </div>
                <div class="input-label-wrap">
                    <label for="receiverTel">연락처</label><br>
                    <input type="tel" id="receiverTel" placeholder="수령인 연락처를 입력해주세요. ('-'제외)">
                </div>
                <div class="input-zipcode-wrap">
                    <label for="receiverZipcode">우편번호</label><br>
                    <input type="text" id="receiverZipcode" placeholder="우편번호를 입력해 주세요." readonly>&nbsp;&nbsp;&nbsp;
                    <button onclick="searchZipcode();" id="searchZipcodeBtn">우편번호 검색</button>
                </div>
                <div class="input-label-wrap">
                    <label for="receiverAddress1">도로명 주소</label><br>
                    <input type="tel" id="receiverAddress1" placeholder="도로명 주소를 입력해 주세요." readonly>
                </div>
                <div class="input-label-wrap">
                    <label for="receiverAddress2">나머지 주소</label><br>
                    <input type="tel" id="receiverAddress2" placeholder="나머지 주소를 입력해 주세요.">
                </div>
            </div>
            <br><br>
            <div class="paymentInfo">
                <span class="title2">결제 방법</span>
            </div>
            <br><br>
            <div class="btnArea">
                <button id="orderBtn">주문하기</button>
            </div>

        </form>
    </section>

    <script>
        // 우편번호 검색
        function searchZipcode() {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  
                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var fullAddr = ''; // 최종 주소 변수
                  var extraAddr = ''; // 조합형 주소 변수
  
                  // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      fullAddr = data.roadAddress;
  
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      fullAddr = data.jibunAddress;
                  }
  
                  // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                  if(data.userSelectedType === 'R'){
                      //법정동명이 있을 경우 추가한다.
                      if(data.bname !== ''){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있을 경우 추가한다.
                      if(data.buildingName !== ''){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                      fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                  }
  
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('receiverZipcode').value = data.zonecode;
                  document.getElementById('receiverAddress1').value = fullAddr;
  
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById('receiverAddress2').focus();
              }
          }).open();
      };

    </script>

    <br><br><br><br><br><br><br><br><br><br>
    <footer>
        <h1>Footer</h1>
    </footer>
</body>

</html>