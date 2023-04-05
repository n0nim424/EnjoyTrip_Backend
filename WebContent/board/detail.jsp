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
    <input type="hidden"  id="action" name="action" value="writeaf">
          <div class="modal-header mb-3">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5">글 보기</label>
            </h4>
          </div>
<div>
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
                <input type="text" class="form-control" id="subject" value="${board.subject}" name="subject" readonly="readonly" />
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
                <textarea class="form-control" rows="10" name="content" readonly="readonly">${board.content}</textarea>
              </div>
</div>
</form>
                 	<div class="modal-footer">
                 	<c:if test="${login.user_id==board.user_id}">
						<form style="display: inline" action="${root}/board" method="post">
							<input type="hidden" name="action" value="update" /> <input
								type="hidden" name="article_no" value="${board.article_no}" />
							<input type="submit" class="btn btn-outline-primary btn-sm" value="수정" />
						</form>
						<form style="display: inline" action="${root}/board" method="post">
							<input type="hidden" name="action" value="delete" /> <input
								type="hidden" name="article_no" value="${board.article_no}" />
							<input type="submit" class="btn btn-outline-danger btn-sm ms-1" value="삭제" />
						</form>
						</c:if>
						<form style="display: inline" action="${root}/board" method="post">
							<input type="hidden" name="action" value="board" />
							<input type="submit" class="btn btn-outline-dark btn-sm ms-1" value="글목록" />
						</form>
					</div>
        </div>
    <!-- update end -->
            </div>
          </div>
      </section>
      <!-- End About Us Section -->
    </main>
    <!-- End #main -->

    <%@include file="../common/footer.jsp" %>