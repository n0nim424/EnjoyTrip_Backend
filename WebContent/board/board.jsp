<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@include file="../common/header.jsp" %>

    <main id="main">
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about" style="background-color: #f5f9fc; padding-bottom: 60px">
        <div class="container" data-aos="fade-up">
          <div class="row no-gutters" style="background-color: white">
            <div class="p-5 text-center">
              <h3 class="my-5 fw-bold">여행정보공유</h3>
              <div class="w-75 mx-auto mb-3 row">
              <div class="col-md-5 ps-0">
              <button class="btn btn-outline-dark btn-sm float-start" onClick="location.href='${root}/board?action=write'">글쓰기</button>
              </div>
              <div class="col-md-7 pe-0">
              <form class="d-flex float-end" id="form-search"  action="${root}/board" method="post">
                <input type="hidden" name="action" value="search"/>
                <input type="hidden" name="pgno" value="1"/>
                <select
                  name="key"
                  id="key"
                  class="form-select form-select-sm ms-5 me-1 w-50"
                  aria-label="검색조건"
                >
                  <option selected>검색조건</option>
                  <option value="subject">제목</option>
                  <option value="user_id">작성자</option>
                  <option value="content">내용</option>
                </select>
                <div class="input-group input-group-sm">
                  <input type="text" name="word" id="word" class="form-control" placeholder="검색어..." />
                  <button id="btn-search" class="btn btn-dark" type="submit">검색</button>
                </div>
              </form>
              </div>
            </div>
              <table class="table w-75 m-auto mb-3">
                <thead class="table-dark">
                <tr>
                  	<th>글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody id="articleinfo">
                <c:forEach var="board" items="${boards}" varStatus="vs">
                <tr onClick="location.href='${root}/board?action=detail&article_no=${board.article_no}'" style="cursor:pointer;">
                <td>${vs.count}</td>
                <td>${board.subject}</td>
                <td>${board.user_id}</td>
                <td>${board.hit}</td>
                <td>${board.date}</td>
                <td>
                <c:if test="${login.user_id==board.user_id}">
                 	<div>
						<form action="${root}/board" method="post" >
						    <input type="hidden" name="action" value="delete"/>
						    <input type="hidden" name="article_no" value="${board.article_no}"/>
						    <input type="submit" class="btn btn-outline-dark btn-sm" value="삭제" />
						</form>
					</div>
				 </c:if>
                </td>
                </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
      <!-- End About Us Section -->
    </main>
    <!-- End #main -->

    <%@include file="../common/footer.jsp" %>