<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>

<!-- <html>
 
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>캠핑에 미치다</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
         

		
</head>
    <body>
        Page content
            

</body>
</html> -->
<title>CampPing</title>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/datepicker.css">
<style>
html, body {
	width: 100%;
	height: 100%;
}

.main {
	display: flex;
}

#map {
	display: flex;
	width: 100%;
	height: 80vh;
}

#search-tab {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	width: 100%;
	height: 72px;
	padding: 0px 40px;
	border-radius: 2px;
	box-shadow: rgb(0 0 0/ 10%) 0px 7px 15px -2px;
	background-color: rgb(255, 255, 255);
}

#search-text {
	flex: 1 1 0%;
	height: 27px;
	margin-left: 20px;
	font-size: 18px;
	border: 0px;
	background-color: transparent;
}

.list {
	display: flex;
	flex-direction: column;
	min-width: 470px;
	height: 80vh;
	overflow: scroll;
}

.camping-place {
	display: flex;
	padding: 10px 15px;
	cursor: pointer;
}

.bg-dark {
	background: url(img/bak.jpg);
	background-size: cover;
	background-blend-mode: color-dodge;
}

.description1 {
	width: 280px;
	padding: 0 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 20px;
	font-weight: bolder;
}

.description2 {
	width: 280px;
	padding: 0 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 15px;
}

.description3 {
	width: 280px;
	padding: 0 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 15px;
}

.description4 {
	width: 280px;
	padding: 0 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 12px;
}

.campingImg {
	border-radius: 17px;
	width: 150px;
	height: 150px;
}

.descriptions {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
}

.logo {
	position: absolute;
	left: 218px;
	top: 10px;
	width: 80px;
	height: auto;
}

.modalImg {
	width: 100%;
	border-radius: 18px;
}

.detailDescription {
	font-weight: bolder;
	font-size: 21px;
	padding-left: 4px;
}

.form-box {
	padding-top: 7px;
	padding-left: 5px;
}

hr {
	width: 98%;
	height: 2px !important;
	margin: 18px 0px 18px 9px;
	border: ridge;
}

::-webkit-scrollbar {
	width: 20px;
}

::-webkit-scrollbar-track {
	background-color: transparent;
}

::-webkit-scrollbar-thumb {
	background-color: #d6dee1;
	border-radius: 20px;
	border: 6px solid transparent;
	background-clip: content-box;
}

::-webkit-scrollbar-thumb:hover {
	background-color: #a8bbbf;
}
</style>
<header class="bg-dark py-5">
	<div class="container px-4">
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-6">
				<div class="text-center my-4">
					<h2 class="display-5 fw-bolder text-white mb-2">어느 캠핑장을 찾으시나요?</h2>
					<form>
						<label id="search-tab"> <input id="search-text" class="form-control" placeholder="지역 또는 이름을 입력하세요." />
						</label>
					</form>
				</div>
			</div>
		</div>
	</div>
</header>

<div class="main">
	<div id="map"></div>
	<div class="list">
		<div class="form-box">
			<select class="form-select">
				<option>서울/경기</option>
				<option>충청남도</option>
				<option>충청북도</option>
				<option>강원도</option>
				<option>전라남도</option>
				<option>전라북도</option>
				<option>경상남도</option>
				<option>경상북도</option>
			</select>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
		<div class="camping-place" id="detail">
			<div style="display: flex;">
				<img class="campingImg" alt="" src="img/camping-test.jpg">
			</div>
			<div class="descriptions">
				<div class="description1">산청 지리산 자양보 오토캠핑장</div>
				<div class="description2">경상남도 산청군</div>
				<div class="description3">지리산</div>
				<div class="description4">설명 어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">산청 지리산 자양보 오토캠핑장</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">
					<img class="modalImg" alt="" src="img/camping-test.jpg">
					<hr>

					<hr>
					<p class="detailDescription">90000원 / 1박</p>
					<hr>
					<p class="detailDescription">예약 정보</p>
					<form>

						<div style="display: flex;">
							<input type="text" id="datepicker_start" class="form-control" value="" placeholder="체크인" />
							<span style="font-size: x-large;">~</span>
							<input type="text" id="datepicker_end" class="form-control" value="" placeholder="체크아웃" />
						</div>
						<br>
						<input type="number" id="person" class="form-control" value="" placeholder="인원수" />
						<hr>
						<p class="detailDescription">결제 금액</p>
						<div style="display: flex; justify-content: flex-end;">
							<input type="text" readonly class="form-control-plaintext" value="30000" id="price" style="width: 15%; text-align: -webkit-right;" />
							<span style="font-size: x-large;">원</span>
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<a class="btn" id="modalY" href="#">예약하기</a>
					<!-- <button class="btn" type="button" data-dismiss="modal">아니오</button> -->
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('#detail').click(function(e) {
		e.preventDefault();
		$('#detailModal').modal("show");
	});
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=06bd11d6b565f348aeb6f7ee8032c658"></script>
<script type="text/javascript">
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level : 12
	//지도의 레벨(확대, 축소 정도)
	};
	var imageSrc = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbqMXOH%2FbtrsSki0YsO%2FuVMoCkyqdKBh0k69CjnIl1%2Fimg.png', // 마커이미지의 주소입니다    
	imageSize = new kakao.maps.Size(35, 48), // 마커이미지의 크기입니다
	imageOption = {
		offset : new kakao.maps.Point(17.5, 100)
	}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
			imageOption)
	// 마커를 생성합니다

	/* 사용자 위치에 따른 지도 중심 변경*/
	if (navigator.geolocation) {

		// GeoLocation을 이용해서 접속 위치를 얻어옵니다
		navigator.geolocation.getCurrentPosition(function(position) {

			var lat = position.coords.latitude, // 위도
			lon = position.coords.longitude; // 경도

			var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			message = '<div style="padding:5px;">사용자의 위치</div>'; // 인포윈도우에 표시될 내용입니다

			// 마커와 인포윈도우를 표시합니다
			displayMarker(locPosition, message);

		});

	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

		var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

		displayMarker(locPosition, message);
	}

	// 지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition, message) {

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map : map,
			position : locPosition,
			image : markerImage
		});

		var iwContent = message, // 인포윈도우에 표시할 내용
		iwRemoveable = true;

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
		});

		// 인포윈도우를 마커위에 표시합니다 
		infowindow.open(map, marker);

		// 지도 중심좌표를 접속위치로 변경합니다
		map.setCenter(locPosition);
	}
	/*-----------------------------------------------------------*/
	var markerPosition = new kakao.maps.LatLng(35.267374619147226,
			127.85531231177431);

	var marker = new kakao.maps.Marker({
		position : markerPosition,
		image : markerImage
	});
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	marker.setMap(map);
</script>
<script type="text/javascript">
	$(function() {
		fn_default_datepicker();
	});

	function fn_default_datepicker() {
		var start = $("#datepicker_start").datepicker(
				{
					dateFormat : 'yy-mm-dd' //Input Display Format 변경
					,
					showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,
					showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
					,
					changeYear : false //콤보박스에서 년 선택 가능
					,
					changeMonth : false //콤보박스에서 월 선택 가능                
					//,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시
					//,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
					//,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
					,
					buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
					,
					yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
					,
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 텍스트
					,
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
					,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
					,
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
							'토요일' ] //달력의 요일 부분 Tooltip 텍스트
					,
					minDate : "today" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
					,
					maxDate : "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
				});

		var end = $("#datepicker_end").datepicker(
				{
					dateFormat : 'yy-mm-dd' //Input Display Format 변경
					,
					showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,
					showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
					,
					changeYear : false //콤보박스에서 년 선택 가능
					,
					changeMonth : false //콤보박스에서 월 선택 가능                
					//,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
					//,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
					//,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
					,
					buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
					,
					yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
					,
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 텍스트
					,
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
					,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
					,
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
							'토요일' ] //달력의 요일 부분 Tooltip 텍스트
					,
					minDate : "($('#datepicker_start').val())+1D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
					,
					maxDate : "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
					,
					defaultDate : "+1w"
				});

		//초기값을 오늘 날짜로 설정
		/* $('#datepicker_start').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		$('#datepicker_end').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후) */
	}

	function getDate(element) {
		var date;
		var dateFormat = "yy-mm-dd";
		try {
			date = $.datepicker.parseDate(dateFormat, element.value);
		} catch (error) {
			date = null;
		}
		return date;
	}
	$(document).ready(
			function() {

				$("#datepicker_start").on("click", function() {

				});

				$("#datepicker_start").on(
						"change",
						function(e) {
							var end = $("#datepicker_end").datepicker("option",
									"minDate", getDate(e.target));
						});

				$("#datepicker_end").on("change", function(e) {

				});

				$("#date_search").on("click", function() {
					var start = $("#datepicker_start").val();
					var end = $("#datepicker_end").val();
				});
			});
</script>