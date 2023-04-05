<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@include file="../common/header.jsp" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    <main id="main">
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about" style="background-color: #f5f9fc; padding-bottom: 60px">
        <div class="container" data-aos="fade-up">
          <div class="row no-gutters" style="background-color: white">
            <div class="p-5">
            <!-- ===== update start ===== -->
        <form action="${root}/member" method="post">
    <input type="hidden"  id="action" name="action" value="updateaf">
          <div class="modal-header mb-3">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5">회원수정</label>
            </h4>
          </div>

          <div class="modal-body">
              <div class="mb-3">
                <label for="name" class="form-label">이름:</label>
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  value="${member.user_name}"
                  name="user_name"
                />
              </div>
              <div class="mb-3">
                <label for="id" class="form-label">아이디:</label>
                <input type="text" class="form-control" id="id" value="${member.user_id}" name="user_id" readonly="readonly" />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">비밀번호:</label>
                <input
                  type="text"
                  class="form-control"
                  id="password"
                  value="${member.user_password}"
                  name="user_password"
                />
              <div class="row mb-3">
                <label for="email" class="form-label">이메일:</label>
                <div class="col-md-6 pe-0">
                  <div class="input-group">
                    <input
                      type="text"
                      class="form-control"
                      id="emailid"
                      value="${fn:split(member.email, '@')[0]}"
                      name="email_id"
                    />
                    <span class="input-group-text">@</span>
                  </div>
                </div>
                <div class="col-md-6 ps-0">
                  <select
                    class="form-select"
                    aria-label="Default select example"
                    id="domain"
                    name="email_domain"
                  >
                  	<option selected value="${fn:split(member.email, '@')[1]}">${fn:split(member.email, '@')[1]}</option>
                    <option value="ssafy.com">ssafy.com</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                  </select>
                </div>
              </div>
          </div>

          <div class="modal-footer">
            <button
              type="submit"
              id="btn-register"
              class="btn btn-outline-primary btn-sm me-1"
            >
              수정하기
            </button>
            <button type="button" class="btn btn-outline-dark btn-sm" onClick="location.href='${root}/member?action=member'">
              닫기
            </button>
          </div>
          </form>
        </div>
    <!-- update end -->
            </div>
          </div>
        </div>
      </section>
      <!-- End About Us Section -->
    </main>
    <!-- End #main -->

    <%@include file="../common/footer.jsp" %>