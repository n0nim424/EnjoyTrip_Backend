<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@include file="../common/header.jsp" %>

    <main id="main">
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about" style="background-color: #f5f9fc; padding-bottom: 60px">
        <div class="container" data-aos="fade-up">
          <div class="row no-gutters" style="background-color: white">
            <div class="p-5 text-center">
              <h3 class="my-5 fw-bold">회원목록</h3>
              <div class="w-75 mx-auto mb-3">
              <div class="col-md-7 offset-5">
              <form class="d-flex" id="form-search"  action="${root}/member" method="post">
                <input type="hidden" name="action" value="search"/>
                <input type="hidden" name="pgno" value="1"/>
                <select
                  name="key"
                  id="key"
                  class="form-select form-select-sm ms-5 me-1 w-50"
                  aria-label="검색조건"
                >
                  <option selected>검색조건</option>
                  <option value="user_name">이름</option>
                  <option value="user_id">아이디</option>
                  <option value="email">이메일</option>
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
                  	<th>번호</th>
                    <th>이름</th>
                    <th>아이디</th>
                    <th>이메일</th>
                    <th>가입일자</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody id="userinfo">
                <c:forEach var="member" items="${members}" varStatus="vs">
                <tr>
                <td>${vs.count}</td>
                <td>${member.user_name}</td>
                <td>${member.user_id}</td>
                <td>${member.email}</td>
                <td>${member.join_date}</td>
                <td>
               <div style="float: right">
								<form style="display: inline" action="${root}/member"
									method="post">
									<input type="hidden" name="action" value="update" /> <input
										type="hidden" name="user_id" value="${member.user_id}" />
									<button type="submit" class="btn btn-outline-dark btn-sm">수정</button>
								</form>
								<form style="display: inline" action="${root}/member"
									method="post">
									<input type="hidden" name="action" value="delete" /> <input
										type="hidden" name="user_id" value="${member.user_id}" />
									<button type="submit" class="btn btn-outline-dark btn-sm">삭제</button>
								</form>
							</div>
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