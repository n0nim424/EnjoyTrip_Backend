<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../common/header.jsp"%>

<main id="main"> <!-- ======= About Us Section ======= -->
<section id="about" class="about"
	style="background-color: #f5f9fc; padding-bottom: 60px">
	<div class="container" data-aos="fade-up">
		<div class="row" style="background-color: white; height: 1000px;">
			<div class="row-lg-6 mt-5">
				<div class="row-lg-6">
					<h2 class="text-center fw-bold">나의 여행 계획🚗</h2>
					<p class="text-center fst-normal">나만의 여행길을 그려보세요!</p>
					<!-- 관광지 검색 start -->
					<form id="search-form" class="d-flex mt-3 justify-content-center"
						role="search">
						<select name="areacode" id="search-area" class="form-select m-2"
							aria-label="Default select example" style="width: 20%;">
							<option value="0" selected>지역</option>
						</select> <select name="sigunguCode" id="search-sigungu"
							class="form-select m-2" aria-label="Default select example"
							style="width: 20%;">
							<option value="0" selected>시/군/구</option>
						</select> <select name="content" id="search-content-id"
							class="form-select m-2" aria-label="Default select example"
							style="width: 20%;">
							<option value="12">관광지</option>
							<option value="14">문화시설</option>
							<option value="15">축제공연행사</option>
							<option value="25">여행코스</option>
							<option value="28">레포츠</option>
							<option value="32">숙박</option>
							<option value="38">쇼핑</option>
							<option value="39">음식점</option>
						</select>
						<button id="btn-search" class="btn btn-outline-success m-2"
							type="submit" style="width: 10%;">검색</button>
					</form>
				</div>
			</div>
			<div class="row-lg-6 about-content">
				<div id="map" style="width: 100%; height: 600px"></div>
			</div>
		</div>
		<div class="row" style="background-color: white; border: 1px; display: flex;">
			<div style="width: 100%; text-align: center">
				<h2>나만의 여행계획📝</h2>
				<div>
					<ul id="my-list" style="list-style: none;">
					
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End About Us Section --> <script type="text/javascript"
	src=../assets/js/tour-plan.js?v= <%=System.currentTimeMillis()%>>
	
</script> <%@include file="../common/footer.jsp"%>