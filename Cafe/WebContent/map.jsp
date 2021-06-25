<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>카페</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="./Resources/js/all.js" crossorigin="anonymous"></script>
<!-- ./Resources/js/all.min.js -->
<!-- Google fonts-->
<link href="stylesheet" rel="stylesheet" />
<link href="stylesheet" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Resources/css/styles.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript" src="./script.js"></script>
<style type="text/css">
.column {
	float: left;
	width: 25%;
	padding: 15px;
	color: white;
}
</style>
</head>
<body>
	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">Let's me
				alone</span> <span class="site-heading-lower">home comming</span>
		</h1>
	</header>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase fw-bold d-lg-none"
				href="index.jsp">카페</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">

					<jsp:include page="menu.jsp">
						<jsp:param name="pageSelection" value="4" />
					</jsp:include>

				</ul>
			</div>
		</div>
	</nav>
	<div class="row"></div>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=yes">
<title>간단한 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=n2u6sqdm7a"></script>
</head>

<body>
	<!-- 지도 맵의 크기 css 형식입니다 수정 가능 합니다 !  -->

	<div id="map" style="width: 65%; height: 700px; margin-left: 450px;"></div>

	<script>
		/* var map = new naver.maps.Map('map', {
		
		 center: new naver.maps.LatLng(35.149741, 126.920007),
		 zoom: 19
		 });

		 var marker = new naver.maps.Marker({
		 position: new naver.maps.LatLng(35.149741, 126.920007),
		 map: map
		 });
		 */

		var markers = [], infoWindows = [];

		var HOME_PATH = window.HOME_PATH || '.';
		var HOME_PATH1 = window.HOME_PATH || '.';

		var smart = new naver.maps.LatLng(35.14974300888751, 126.91985737111838);
		var map = new naver.maps.Map('map', {
			center : smart,
			zoom : 18

		});

		//C:\Users\21SMT61\git\coffee\Cafe
		//스마트 인재 개발원 
		var marker = new naver.maps.Marker({
			map : map,
			position : smart,
			title : '스마트 인재 개발원',
			icon : {
				url : './Resources/assets/img/mark4.png',
				iconsize : '91'
			},

			animation : naver.maps.Animation.DROP,

		});
		markers.push(marker);

		naver.maps.Event.addListener(marker, 'click', function() {
			if (marker.getAnimation() !== null) {
				marker.setAnimation(null);
			} else {
				marker.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		/*   icon: {
		      content: [
		                  '<div class="cs_mapbridge">',
		                      '<div class="map_group _map_group">',
		                          '<div class="map_marker _marker tvhp tvhp_big">',
		                              '<span class="ico _icon"></span>',
		                              '<span class="shd"></span>',
		                          '</div>',
		                      '</div>',
		                  '</div>'
		              ].join(''),
		      size: new naver.maps.Size(38, 58),
		      
		      anchor: new naver.maps.Point(19, 58),
		  }
		pinkMarker.setTitle('Pink Hot');
		}); */

		//카페 젬마
		var jemma = new naver.maps.LatLng(35.149662823887816,
				126.92011596361931);
		var marker4 = new naver.maps.Marker({
			map : map,
			position : jemma,
			title : '카페 젬마',
			animation : naver.maps.Animation.DROP,

		});
		markers.push(marker4);

		naver.maps.Event.addListener(marker4, 'click', function() {
			if (marker4.getAnimation() !== null) {
				marker4.setAnimation(null);
			} else {
				marker4.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		// 풀 카페
		var full = new naver.maps.LatLng(35.1501188, 126.919876);
		var marker2 = new naver.maps.Marker({
			map : map,
			position : full,
			title : '카페 풀',
			animation : naver.maps.Animation.DROP

		});
		markers.push(marker2);

		naver.maps.Event.addListener(marker2, 'click', function() {
			if (marker2.getAnimation() !== null) {
				marker2.setAnimation(null);
			} else {
				marker2.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});
		//모어레스 4
		var moreless = new naver.maps.LatLng(35.14913468310194,
				126.91915854029897);
		var marker3 = new naver.maps.Marker({
			map : map,
			position : moreless,
			title : '카페 모어레스',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker3);

		naver.maps.Event.addListener(marker3, 'click', function() {
			if (marker3.getAnimation() !== null) {
				marker3.setAnimation(null);
			} else {
				marker3.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});
		//카페 소쿱5
		var socupe = new naver.maps.LatLng(35.149896701720486,
				126.92122022491797);
		var marker5 = new naver.maps.Marker({
			map : map,
			position : socupe,
			title : '카페 소쿱',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker5);

		naver.maps.Event.addListener(marker5, 'click', function() {
			if (marker5.getAnimation() !== null) {
				marker5.setAnimation(null);
			} else {
				marker5.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});
		//카페 휘핑디에그 6
		var egg = new naver.maps.LatLng(35.150397891639514, 126.92099195025475);
		var marker6 = new naver.maps.Marker({
			map : map,
			position : egg,
			title : '카페 휘핑디에그',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker6);

		naver.maps.Event.addListener(marker6, 'click', function() {
			if (marker6.getAnimation() !== null) {
				marker6.setAnimation(null);
			} else {
				marker6.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});
		//카페 카페 얀 7
		var yann = new naver.maps.LatLng(35.15043763093851, 126.92206380287202);
		var marker7 = new naver.maps.Marker({
			map : map,
			position : yann,
			title : '카페 얀',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker7);

		naver.maps.Event.addListener(marker7, 'click', function() {
			if (marker7.getAnimation() !== null) {
				marker7.setAnimation(null);
			} else {
				marker7.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 우드라이크8
		var Woodlike = new naver.maps.LatLng(35.15020281109344,
				126.92139915922496);
		var marker8 = new naver.maps.Marker({
			map : map,
			position : Woodlike,
			title : '카페 우드라이크',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker8);

		naver.maps.Event.addListener(marker8, 'click', function() {
			if (marker8.getAnimation() !== null) {
				marker8.setAnimation(null);
			} else {
				marker8.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 인더플레인9
		var Intheplane = new naver.maps.LatLng(35.148996404393785,
				126.91893982382395);
		var marker9 = new naver.maps.Marker({
			map : map,
			position : Intheplane,
			title : '카페 인더플레인',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker9);

		naver.maps.Event.addListener(marker9, 'click', function() {
			if (marker9.getAnimation() !== null) {
				marker9.setAnimation(null);
			} else {
				marker9.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 그란데 10
		var Grande = new naver.maps.LatLng(35.149222908490565,
				126.91926058994869);
		var marker10 = new naver.maps.Marker({
			map : map,
			position : Grande,
			title : '카페 그란데',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker10);

		naver.maps.Event.addListener(marker10, 'click', function() {
			if (marker10.getAnimation() !== null) {
				marker10.setAnimation(null);
			} else {
				marker10.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 커피니 11
		var Coffeenii = new naver.maps.LatLng(35.14964840757344,
				126.91881202316961);
		var marker11 = new naver.maps.Marker({
			map : map,
			position : Coffeenii,
			title : '카페 커피니',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker11);

		naver.maps.Event.addListener(marker11, 'click', function() {
			if (marker11.getAnimation() !== null) {
				marker11.setAnimation(null);
			} else {
				marker11.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 청자다방 12
		var 청자다방 = new naver.maps.LatLng(35.14904399479731, 126.91900621538421);
		var marker12 = new naver.maps.Marker({
			map : map,
			position : 청자다방,
			title : '카페 청자다방',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker12);

		naver.maps.Event.addListener(marker12, 'click', function() {
			if (marker12.getAnimation() !== null) {
				marker12.setAnimation(null);
			} else {
				marker12.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 꽃분이 13
		var 꽃분이 = new naver.maps.LatLng(35.150511614363715, 126.92121352484905);
		var marker13 = new naver.maps.Marker({
			map : map,
			position : 꽃분이,
			title : '카페 꽃분이',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker13);

		naver.maps.Event.addListener(marker13, 'click', function() {
			if (marker13.getAnimation() !== null) {
				marker13.setAnimation(null);
			} else {
				marker13.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 Cystem
		var Cystem = new naver.maps.LatLng(35.15050672385635,
				126.92239364009318);
		var marker14 = new naver.maps.Marker({
			map : map,
			position : Cystem,
			title : '카페 Cystem',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker14);

		naver.maps.Event.addListener(marker14, 'click', function() {
			if (marker14.getAnimation() !== null) {
				marker14.setAnimation(null);
			} else {
				marker14.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});

		//카페 비비드
		var vivid = new naver.maps.LatLng(35.1497877485537, 126.9231817071001);
		var marker15 = new naver.maps.Marker({
			map : map,
			position : vivid,
			title : '카페 vivid',
			animation : naver.maps.Animation.DROP
		});
		markers.push(marker15);

		naver.maps.Event.addListener(marker15, 'click', function() {
			if (marker15.getAnimation() !== null) {
				marker15.setAnimation(null);
			} else {
				marker15.setAnimation(naver.maps.Animation.BOUNCE);
			}
		});
		// 여기서부터 각 마커에 대한 정보를 입력하는 공간 입니다 . 
		// 스마트 인재 개발원
		var contentString1 = [
				'<div class="iw_inner">',
				'   <h3>스마트 인재 개발원</h3>',
				'   <p>광주 동구 예술길 31-16 스마트인재개발원 <br />',
				'       <img src="'+ HOME_PATH1 +'/img/example/hi-seoul.jpg" width="40" height="40" alt="스마트인재개발원" class="thumb" /><br />',
				'       062-120 | 학원 &gt; 교육시설<br />',
				'       <a href="https://www.smhrd.or.kr/" target="_blank">https://www.smhrd.or.kr/</a>',
				'   </p>', '</div>' ].join('');

		var infowindow1 = new naver.maps.InfoWindow({
			content : contentString1
		});
		infoWindows.push(infowindow1);
		/*  naver.maps.Event.addListener(marker, "onclick", function(e) {
		 if (infowindow1.getMap()) {
		 infowindow1.close();
		 } else {
		 infowindow1.open(map, marker);
		 }
		 }); */

		// infowindow1.open(map, marker);
		//젬마
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 젬마</h3>',
				'   <p>광주 동구 예술길 31-16 카페젬마 (Cafe jemma)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페젬마" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 카페 젬마<br />',
				'       <a href="https://m.blog.naver.com/taewoo104/221165018386" target="_blank">https://m.blog.naver.com/taewoo104/221165018386/</a>',
				'   </p>', '</div>' ].join('');

		var infowindow2 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow2);

		//카페 풀 
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 풀 </h3>',
				'   <p>광주광역시 동구 충장동 9-3 카페풀  (Cafe full)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페풀" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 카페 풀<br />',
				'       <a href="https://www.siksinhot.com/P/1259977" target="_blank">https://www.siksinhot.com/P/1259977</a>',
				'   </p>', '</div>' ].join('');

		var infowindow3 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow3);

		//카페 모어레스
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 모어레스 </h3>',
				'   <p>광주광역시 동구 충장동 9-3 카페 모어레스  (Cafe moreless)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페모어레스" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 카페 모어레스<br />',
				'       <a href="https://www.siksinhot.com/P/1263126" target="_blank">https://www.siksinhot.com/P/1263126</a>',
				'   </p>', '</div>' ].join('');

		var infowindow4 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow4);
		//카페 소쿱
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>소쿱 </h3>',
				'   <p>광주광역시 동구 대의동 40-1 카페 소쿱 (Cafe socupe)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페소쿱" class="thumb" /><br />',
				'       062-120 | 카페,디저트 &gt; 카페 소쿱<br />',
				'       <a href="https://www.siksinhot.com/P/1263126" target="_blank">https://www.siksinhot.com/P/1263126</a>',
				'   </p>', '</div>' ].join('');

		var infowindow5 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow5);
		//카페 휘핑디에그
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>휘핑디에그 Egg </h3>',
				'   <p>광주 동구 제봉로 140 카페 휘핑디에그 (Cafe The egg)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페휘핑디에그" class="thumb" /><br />',
				'       062-120 | 카페,디저트 &gt; 카페 휘핑디에그<br />',
				'       <a href="https://m.blog.naver.com/PostView.nhn?isHttpsRedirect=true&blogId=lyb961&logNo=221493372569" target="_blank">https://m.blog.naver.com/PostView.nhn?isHttpsRedirect=true&blogId=lyb961&logNo=221493372569</a>',
				'   </p>', '</div>' ].join('');

		var infowindow6 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow6);

		//카페 얀
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>얀 Yann</h3>',
				'   <p>광주광역시 동구 장동 제봉로138번길 8-1 카페 얀 (Cafe Yann)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페얀" class="thumb" /><br />',
				'       062-120 | 카페,디저트 &gt; 카페 얀<br />',
				'       <a href="https://m.blog.naver.com/thdid47/221979642311" target="_blank">https://m.blog.naver.com/thdid47/221979642311</a>',
				'   </p>', '</div>' ].join('');

		var infowindow7 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow7);

		//카페 우드라이크
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 우드라이크</h3>',
				'   <p>광주 동구 제봉로 136 2층 카페 우드라이크 (Cafe Woodlike)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페 우드라이크" class="thumb" /><br />',
				'       062-120 | 카페,디저트 &gt; 카페 우드라이크<br />',
				'       <a href="https://m.blog.naver.com/s_rrrrri_s2/221668477275" target="_blank">https://m.blog.naver.com/s_rrrrri_s2/221668477275</a>',
				'   </p>', '</div>' ].join('');

		var infowindow8 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow8);

		//카페 인더플레인
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 인더하우스</h3>',
				'   <p>광주 동구 중앙로196번길 31-7 2층 카페 인더하우스 (Cafe Inthehouse)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페 인더하우스" class="thumb" /><br />',
				'       062-120 | 브런치,카페 &gt; 카페 인더하우스<br />',
				'       <a href="https://blog.naver.com/soonchun1217/221675535048" target="_blank">https://blog.naver.com/soonchun1217/221675535048</a>',
				'   </p>', '</div>' ].join('');

		var infowindow9 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow9);

		//카페 그란데
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 그란데</h3>',
				'   <p>광주광역시 동구 충장동 79-2 카페 그란데 (Cafe Grande)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="카페 그란데" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 카페 그란데<br />',
				'       <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=jes4691&logNo=221533848984" target="_blank">https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=jes4691&logNo=221533848984</a>',
				'   </p>', '</div>' ].join('');

		var infowindow10 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow10);

		//카페 커피니
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 커피니</h3>',
				'   <p>광주광역시 동구 충장동 79-2 카페 커피니 (Cafe Coffee nii)<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="갤러리카페 커피니" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 갤러리카페 커피니<br />',
				'       <a href="https://m.blog.naver.com/kerry8356/221932976447" target="_blank">https://m.blog.naver.com/kerry8356/221932976447</a>',
				'   </p>', '</div>' ].join('');

		var infowindow11 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow11);
		//카페 청자다방
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 청자다방</h3>',
				'   <p>광주 동구 중앙로196번길 31-13 카페 청자다방 <br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="청자다방" class="thumb" /><br />',
				'       062-120 | 카페 &gt; 청자다방<br />',
				'       <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=ekwjd3011&logNo=220606224133" target="_blank">https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=ekwjd3011&logNo=220606224133</a>',
				'   </p>', '</div>' ].join('');

		var infowindow12 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow12);

		//카페 꽃분이
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 꽃분이</h3>',
				'   <p>광주 동구 제봉로140번길 4 카페 꽃분이 <br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="꽃분이" class="thumb" /><br />',
				'       062-120 | 플라워카페 &gt; 꽃분이<br />',
				'       <a href="https://www.instagram.com/flower_buni/?hl=ko" target="_blank">https://www.instagram.com/flower_buni/?hl=ko</a>',
				'   </p>', '</div>' ].join('');

		var infowindow13 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow13);

		//카페 Cystem
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 Cystem</h3>',
				'   <p>광주 동구 제봉로138번길 12 1층 카페 Cystem<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="Cystem" class="thumb" /><br />',
				'       062-120 | 카페 &gt; Cystem<br />',
				'       <a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=nec1400&logNo=221524848815" target="_blank">https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=nec1400&logNo=221524848815</a>',
				'   </p>', '</div>' ].join('');

		var infowindow14 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow14);

		//카페 Vivid
		var contentString = [
				'<div class="iw_inner">',
				'   <h3>카페 Vivid</h3>',
				'   <p>광주광역시 동구 충장동 동계천로 124 카페 Vivid<br />',
				'       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="40" height="40" alt="Vivid" class="thumb" /><br />',
				'       062-120 | 카페 &gt; Vivid<br />',
				'       <a href="https://m.blog.naver.com/abc923kr/221402657755" target="_blank">https://m.blog.naver.com/abc923kr/221402657755</a>',
				'   </p>', '</div>' ].join('');

		var infowindow15 = new naver.maps.InfoWindow({
			content : contentString
		});
		infoWindows.push(infowindow15);

		function getClickHandler(seq) {
			return function(e) {
				if (infoWindows[seq].getMap()) {
					infoWindows[seq].close();
				} else {
					infoWindows[seq].open(map, markers[seq]);
				}
			}

		}

		for (var i = 0, ii = markers.length; i < ii; i++) {
			naver.maps.Event.addListener(markers[i], "click",
					getClickHandler(i));

		}

		//  infowindow.open(map, marker4);
	</script>
</body>
</html>

<div class="row">
	<!-- 내용 넣을 곳 -->

	<div class="column">
		<h2>Column</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
			ultricies, eget elementum magna tristique. Quisque vehicula, risus
			eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
			orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
	</div>

</div>

<footer class="footer text-faded text-center py-5">
	<div class="container">
		<p class="m-0 small">Copyright &copy; Your Website 2021</p>
	</div>
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="./Resources/js/scripts.js"></script>
</body>
</html>