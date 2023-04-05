<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="container">
        <div class="copyright">
          &copy; Copyright <strong><span>Mamba</span></strong
          >. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <!-- ===== Register modal start ===== -->
    <div
      class="modal fade"
      id="registerModal"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
        <form action="${root}/member" method="post" id="register" onsubmit="return regist()">
    		<input type="hidden"  id="action" name="action" value="registryaf">
          <div class="modal-header">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5"> 회원가입</label>
            </h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
              <div class="mb-3">
                <label for="name" class="form-label">이름:</label>
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  placeholder="이름..."
                  name="user_name"
                />
              </div>
              <div class="mb-3">
                <label for="id" class="form-label">아이디:</label>
                <input type="text" class="form-control" id="id" placeholder="아이디..." name="user_id" />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">비밀번호:</label>
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  placeholder="비밀번호..."
                  name="user_password"
                />
              </div>
              <div class="mb-3">
                <label for="passwordcheck" class="form-label">비밀번호확인:</label>
                <input
                  type="password"
                  class="form-control"
                  id="passwordcheck"
                  placeholder="비밀번호확인..."
                  name="passwordcheck"
                />
              </div>
              <div class="row mb-3">
                <label for="email" class="form-label">이메일:</label>
                <div class="col-md-6 pe-0">
                  <div class="input-group">
                    <input
                      type="text"
                      class="form-control"
                      id="emailid"
                      placeholder="이메일아이디"
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
                    <option selected value="ssafy.com">ssafy.com</option>
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
              class="btn btn-outline-primary btn-sm"
            >
              회원가입
            </button>
            <button
              type="button"
              id="btn-reset"
              class="btn btn-outline-success btn-sm"
              onclick="resetForm()"
            >
              초기화
            </button>
            <button type="button" class="btn btn-outline-dark btn-sm" data-bs-dismiss="modal">
              닫기
            </button>
          </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Register modal end -->

    <!-- ===== Login modal start ===== -->
    <div
      class="modal fade"
      id="loginModal"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
        <form action="${root}/member" method="post">
    <input type="hidden"  id="action" name="action" value="loginaf">
          <div class="modal-header">
            <h4 class="modal-title">
              <label class="fw-bold border-bottom border-warning border-5"> 로그인</label>
            </h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
              <div class="mb-3">
                <label for="loginid" class="form-label">아이디:</label>
                <!-- <div class="form-check float-end">
                  <input class="form-check-input" type="checkbox" value="" id="saveid" />
                  <label class="form-check-label" for="flexCheckDefault"> 아이디저장 </label>
                </div> -->
                <input
                  type="text"
                  class="form-control"
                  id="loginid"
                  placeholder="아이디..."
                  name="user_id"
                />
              </div>
              <div class="mb-3">
                <label for="loginpwd" class="form-label">비밀번호:</label>
                <input
                  type="password"
                  class="form-control"
                  id="loginpwd"
                  placeholder="비밀번호..."
                  name="user_password"
                />
              </div>
          </div>

          <div class="modal-footer">
            <button
              type="submit"
              id="btn-login"
              class="btn btn-outline-primary btn-sm"
            >
              로그인
            </button>
            <button
              type="button"
              id="btn-find-id"
              class="btn btn-outline-success btn-sm"
              onClick="location.href='${root}/member?action=findid'"
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
          </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Login modal end -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="${root}/assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="${root}/assets/vendor/aos/aos.js"></script>
    <script src="${root}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${root}/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="${root}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="${root}/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="${root}/assets/vendor/php-email-form/validate.js"></script>

    <!-- JS File -->
    <script src="${root}/assets/js/main.js"></script>
    <script src="${root}/assets/js/register.js"></script>
    
    <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78ec26f7caa53f97c964841b88c97eaa&libraries=services,clusterer,drawing"></script>
  </body>
</html>