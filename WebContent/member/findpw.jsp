<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../common/header.jsp"%>

<main id="main"> <!-- ======= About Us Section ======= -->
<section id="about" class="about"
	style="background-color: #f5f9fc; padding-bottom: 60px">
	<div class="container" data-aos="fade-up">
		<div class="row no-gutters" style="background-color: white">
			<div class="p-5">
				<!-- ===== Find PWD start ===== -->
				<form action="${root}/member" method="post">
					<input type="hidden" id="action" name="action" value="findpwaf">
					<div class="modal-header mb-3">
						<h4 class="modal-title">
							<label class="fw-bold border-bottom border-warning border-5">
								비밀번호 찾기</label>
						</h4>
					</div>

					<div class="modal-body">
						<div class="mb-3">
							<label for="findIdName" class="form-label">이름:</label>
							<c:if test="${empty member}">
								<input type="text" class="form-control" id="findIdName"
									placeholder="이름..." name="user_name" />
							</c:if>
							<c:if test="${not empty member}">
								<input type="text" class="form-control" id="findIdName"
									value="${member.user_name}" name="user_name" />
							</c:if>
						</div>
						<div class="mb-3">
							<label for="findPwId" class="form-label">아이디:</label>
							<c:if test="${empty member}">
								<input type="text" class="form-control" id="findPwId"
									placeholder="아이디..." name="user_id" />
							</c:if>
							<c:if test="${not empty member}">
								<input type="text" class="form-control" id="findPwId"
									value="${member.user_id}" name="user_id" />
							</c:if>
						</div>
						<div class="mb-3">
							<label for="findPw" class="form-label">비밀번호:</label>
							<c:if test="${empty member}">
								<input type="text" class="form-control" id="findPw"
									placeholder="비밀번호..." name="user_password" readonly="readonly" />
							</c:if>
							<c:if test="${not empty member}">
								<input type="text" class="form-control" id="findPw"
									value="${member.user_password}" name="user_password"
									readonly="readonly" />
							</c:if>
						</div>
					</div>

					<div class="modal-footer">
					<button
              type="button"
              id="btn-find-id"
              class="btn btn-outline-dark btn-sm me-1"
              onClick="location.href='${root}/member?action=findid'"
            >
              아이디찾기
            </button>
						<button type="submit" id="btn-find-pw"
							class="btn btn-outline-primary btn-sm">
							비밀번호찾기</button>
						<button type="button" id="btn-login"
							class="btn btn-outline-success btn-sm ms-1"
							data-bs-toggle="modal" data-bs-target="#loginModal">
							로그인하기</button>
					</div>
				</form>
				<!-- Find PWD end -->
			</div>
		</div>
	</div>
</section>
<!-- End About Us Section --> </main>
<!-- End #main -->

<%@include file="../common/footer.jsp"%>