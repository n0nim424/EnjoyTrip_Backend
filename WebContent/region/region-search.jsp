<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="root"></c:set>
<%@include file="../common/header.jsp"%>

<main id="main"> <!-- ======= About Us Section ======= -->
<section id="about" class="about"
	style="background-color: #f5f9fc; padding-bottom: 60px">
	<div class="container" data-aos="fade-up">
		<div class="row" style="background-color: white">
			<div class="row-lg-6 mt-5">
				<div class="row-lg-6">
					<h2 class="text-center fw-bold">지역별 여행지 정보 검색🔎</h2>
					<p class="text-center fst-normal">떠나고 싶은 지역의 여행지 정보를 검색해보세요!</p>
					<!-- 관광지 검색 start -->
					<form id="search-form" class="d-flex mt-3 justify-content-center"
						role="search">
						<input type="hidden" name="action" value="search" /> <select
							name="sido" id="search-area" class="form-select m-2"
							aria-label="Default select example" style="width: 20%;">
							<option value="0" selected>지역</option>
						</select> <select name="gugun" id="search-sigungu" class="form-select m-2"
							aria-label="Default select example" style="width: 20%;">
							<option value="0" selected>시/군/구</option>
						</select> <select name="content_type_id" id="search-content-id"
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
						<!-- <input
                    name="keyword"
                    id="search-keyword"
                    class="form-control m-2"
                    type="search"
                    placeholder="검색어"
                    aria-label="검색어"
                    value=""
                    style="width: 20%;"
                    /> -->
						<button id="btn-search" class="btn btn-outline-success m-2"
							type="submit" style="width: 10%;">검색</button>
					</form>
					<!-- 관광지 검색 end -->
					<!-- <div class="row">
                    <table class="table table-striped">
                    <thead>
                        <tr>
                        <th>대표이미지</th>
                        <th>관광지명</th>
                        <th>주소</th>
                        <th>위도</th>
                        <th>경도</th>
                        </tr>
                    </thead>
                    <tbody id="trip-list">
                    </tbody>
                    </table>
                </div> -->
					<!-- 관광지 검색 end -->
				</div>
			</div>
			<div class="row-lg-6 about-content">
				<div id="map" style="width: 100%; height: 600px"></div>
			</div>
		</div>
		<div class="row"
			style="background-color: white; border: 1px; display: flex;">
			<div style="width: 100%; text-align: center">
				<h2 style="font-weight: bold;">관광지 정보📝</h2>
				<div>
					<ul id="my-list" style="list-style: none;">

					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
</main>
<!-- End About Us Section -->
<script type="text/javascript" src=../assets/js/region-search.js?v=
	<%=System.currentTimeMillis()%>>
	
</script>
<%@include file="../common/footer.jsp"%>