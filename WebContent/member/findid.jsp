<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@include file="../common/header.jsp" %>

    <main id="main">
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about" style="background-color: #f5f9fc; padding-bottom: 60px">
        <div class="container" data-aos="fade-up">
          <div class="row no-gutters" style="background-color: white">
            <div class="p-5">
            <!-- ===== Find ID start ===== -->
        <form action="${root}/member" method="post">
    <input type="hidden"  id="action" name="action" value="findidaf">
          <div class="modal-header mb-3">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5"> 아이디 찾기</label>
            </h4>
          </div>

          <div class="modal-body">
              <div class="mb-3">
                <label for="findIdName" class="form-label">이름:</label>
                <c:if test="${empty member}">
                <input
                  type="text"
                  class="form-control"
                  id="findIdName"
                  placeholder="이름..."
                  name="user_name"
                />
                </c:if>
                <c:if test="${not empty member}">
                <input
                  type="text"
                  class="form-control"
                  id="findIdName"
                  value="${member.user_name}"
                  name="user_name"
                />
                </c:if>
              </div>
              <div class="mb-3">
                <label for="findId" class="form-label">아이디:</label>
                <c:if test="${empty member}">
                <input
                  type="text"
                  class="form-control"
                  id="findIdName"
                  placeholder="아이디..."
                  name="user_id"
                  readonly="readonly"
                />
                </c:if>
                <c:if test="${not empty member}">
                <input
                  type="text"
                  class="form-control"
                  id="findIdName"
                  value ="${member.user_id}"
                  name="user_id"
                  readonly="readonly"
                />
                </c:if>
              </div>
          </div>

          <div class="modal-footer">
            <button
              type="submit"
              id="btn-find-id"
              class="btn btn-outline-primary btn-sm me-1"
            >
              아이디찾기
            </button>
            <button
              type="button"
              id="btn-find-password"
              class="btn btn-outline-dark btn-sm"
              onClick="location.href='${root}/member?action=findpw'"
            >
              비밀번호찾기
            </button>
            <button
              type="button"
              id="btn-login"
              class="btn btn-outline-success btn-sm ms-1"
              data-bs-toggle="modal"
              data-bs-target="#loginModal"
            >
              로그인하기
            </button>
          </div>
          </form>
    <!-- Find ID end -->
            </div>
          </div>
        </div>
      </section>
      <!-- End About Us Section -->
    </main>
    <!-- End #main -->

    <%@include file="../common/footer.jsp" %>