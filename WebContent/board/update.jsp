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
        <form action="${root}/board" method="post">
    <input type="hidden"  id="action" name="action" value="updateaf">
          <div class="modal-header mb-3">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5">글 수정</label>
            </h4>
          </div>
<div>
<input type="hidden"  id="article_no" name="article_no" value="${board.article_no}">
              <div class="mb-3">
                <label for="id" class="form-label">작성자:</label>
                <input
                  type="text"
                  class="form-control"
                  id="id"
                  value="${board.user_id}"
                  name="user_id"
                  readonly="readonly"
                />
              </div>
              <div class="mb-3">
                <label for="subject" class="form-label">제목:</label>
                <input type="text" class="form-control" id="subject" name="subject" value="${board.subject}" />
              </div>
              <div class="mb-3 row">
              <div class="col-md-6">
              <label for="hit" class="form-label">조회수:</label>
              <input type="text" class="form-control" id="hit" value="${board.hit}" name="hit" readonly="readonly" />
              </div>
              <div class="col-md-6">
              <label for="date" class="form-label">작성일:</label>
              <input type="text" class="form-control" id="date" value="${board.date}" name="date" readonly="readonly" />
              </div>
              </div>
              <div class="mb-3">
                <label for="content" class="form-label">내용:</label>
                <textarea class="form-control" rows="10" name="content">${board.content}</textarea>
              </div>
</div>
					<div class="modal-footer">
            <button
              type="submit"
              id="btn-register"
              class="btn btn-outline-primary btn-sm me-1"
            >
              수정
            </button>
            <button type="button" class="btn btn-outline-dark btn-sm" onClick="location.href='${root}/member?action=delete&article_no=${board.article_no}'">
              삭제
            </button>
          </div>
          </form>
        </div>
    <!-- update end -->
            </div>
          </div>
      </section>
      <!-- End About Us Section -->
    </main>
    <!-- End #main -->

    <%@include file="../common/footer.jsp" %>