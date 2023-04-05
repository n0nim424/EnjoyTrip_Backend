<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@include file="../common/header.jsp" %>

    <!-- ======= Hero Section ======= -->
    <section id="hero">
      <div class="hero-container">
        <div
          id="heroCarousel"
          class="carousel slide carousel-fade"
          data-bs-ride="carousel"
          data-bs-interval="5000"
        >
          <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

          <div class="carousel-inner" role="listbox">
            <!-- Slide 1 -->
            <div
              class="carousel-item active"
              style="
                background-image: url('https://www.agoda.com/wp-content/uploads/2018/10/Experience-Seoul_attractions_Gyeongbokgung-Palace.jpg');
              "
            >
              <div class="carousel-container">
                <div class="carousel-content container">
                  <h2 class="animate__animated animate__fadeInDown">
                    <span>Enjoy Trip</span>을 방문해주셔서 감사합니다!
                  </h2>
                  <p class="animate__animated animate__fadeInUp">
                    여행을 떠나고 싶으신가요?
                    <br />
                    당신에게 맞는 여행지를 발견해보세요.
                  </p>
                  <a
                    href="${root}/region/tour-plan.jsp"
                    class="btn-get-started animate__animated animate__fadeInUp scrollto"
                    >나만의 여행 계획</a
                  >
                </div>
              </div>
            </div>

            <!-- Slide 2 -->
            <div
              class="carousel-item"
              style="
                background-image: url('https://t1.daumcdn.net/cfile/tistory/252FA9345225669928');
              "
            >
              <div class="carousel-container">
                <div class="carousel-content container">
                  <h2 class="animate__animated animate__fadeInDown">
                    우리나라의 아름다움을 음미해보세요.
                  </h2>
                  <p class="animate__animated animate__fadeInUp">
                    생각지도 못한 곳을 발견할 수도 있어요.
                  </p>
                  <a
                    href="${root}/region/region-search.jsp"
                    class="btn-get-started animate__animated animate__fadeInUp scrollto"
                    >지역별 여행지 찾아보기</a
                  >
                </div>
              </div>
            </div>

            <!-- Slide 3 -->
            <div
              class="carousel-item"
              style="
                background-image: url('http://www.traveldaily.co.kr/news/photo/202004/24938_32935_151.jpg');
              "
            >
              <div class="carousel-container">
                <div class="carousel-content container">
                  <h2 class="animate__animated animate__fadeInDown">
                    각자의 핫플레이스를 자랑해요.
                    <div class=""></div>
                  </h2>
                  <p class="animate__animated animate__fadeInUp">
                    자신만의 아지트를 공유하고 같이 이야기 나눠봐요.
                  </p>
                  <a
                    href="#about"
                    class="btn-get-started animate__animated animate__fadeInUp scrollto"
                    >구경가기</a
                  >
                </div>
              </div>
            </div>
          </div>

          <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
          </a>
          <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
          </a>
        </div>
      </div>
    </section>
    <!-- End Hero -->

    <main id="main">
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up">
          <div class="row no-gutters">
            <div class="col-lg-6 d-flex flex-column justify-content-center mt-3">
              <img
                src="http://www.traveldaily.co.kr/news/photo/202004/24938_32935_151.jpg"
                class="img"
                alt=""
              />
            </div>

            <div class="col-lg-6 d-flex flex-column justify-content-center about-content">
              <div class="section-title">
                <h2>오늘의 핫플레이스</h2>
              </div>

              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <div class="icon"><i class="bx bx-fingerprint"></i></div>
                <h4 class="title"><a href="">을지로의 골목골목을 거닐어보세요.</a></h4>
                <p class="description">
                  Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                  occaecati cupiditate non provident
                </p>
              </div>

              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <div class="icon"><i class="bx bx-gift"></i></div>
                <h4 class="title"><a href="">특별한 기념품을 구매해보세요.</a></h4>
                <p class="description">
                  At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                  praesentium voluptatum deleniti atque
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End About Us Section -->

      <!-- ======= Our Portfolio Section ======= -->
      <section id="portfolio" class="portfolio section-bg">
        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="section-title">
            <h2>핫플레이스 목록</h2>
            <p>자신만의 핫플레이스를 공유해봐요. 새로운 만남이 이루어질 지도 몰라요!</p>
          </div>

          <div class="row portfolio-container">
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="https://post-phinf.pstatic.net/MjAxNzA1MTFfMTQg/MDAxNDk0NDgyODE4OTI2.P7H0n7pqJChBq_g42dZAwi_K16adlRxBerf26cW1Hvgg.oqVaoHWzt7D7dFhW_W62oMaoRn9TCStRJ6A9j_D7C0Yg.JPEG/%EC%84%AC.jpg?type=w1200"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플1</h4>
                  <p>핫플1</p>
                  <div class="portfolio-links">
                    <a
                      href="https://post-phinf.pstatic.net/MjAxNzA1MTFfMTQg/MDAxNDk0NDgyODE4OTI2.P7H0n7pqJChBq_g42dZAwi_K16adlRxBerf26cW1Hvgg.oqVaoHWzt7D7dFhW_W62oMaoRn9TCStRJ6A9j_D7C0Yg.JPEG/%EC%84%AC.jpg?type=w1200"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="App 1"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
              <div class="portfolio-wrap">
                <img
                  src="https://www.agoda.com/wp-content/uploads/2019/03/Seoul-attractions-N-Seoul-Tower.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플2</h4>
                  <p>핫플2</p>
                  <div class="portfolio-links">
                    <a
                      href="https://www.agoda.com/wp-content/uploads/2019/03/Seoul-attractions-N-Seoul-Tower.jpg"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="Web 3"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="https://www.lottehotel.com/content/dam/lotte-hotel/signiel/seoul/overview/local-guide/180708-7-2000-ove-seoul-signiel.jpg.thumb.768.768.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플3</h4>
                  <p>핫플3</p>
                  <div class="portfolio-links">
                    <a
                      href="https://www.lottehotel.com/content/dam/lotte-hotel/signiel/seoul/overview/local-guide/180708-7-2000-ove-seoul-signiel.jpg.thumb.768.768.jpg"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="App 2"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
              <div class="portfolio-wrap">
                <img
                  src="http://www.ttlnews.com/upload/board/KOREA/8773c8e265d5.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플4</h4>
                  <p>핫플4</p>
                  <div class="portfolio-links">
                    <a
                      href="http://www.ttlnews.com/upload/board/KOREA/8773c8e265d5.jpg"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="Card 2"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
              <div class="portfolio-wrap">
                <img
                  src="https://www.korea.kr/goNewsRes/attaches/innods/images/000126/19_640_2.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플5</h4>
                  <p>핫플5</p>
                  <div class="portfolio-links">
                    <a
                      href="https://www.korea.kr/goNewsRes/attaches/innods/images/000126/19_640_2.jpg"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="Web 2"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="http://www.travelnbike.com/news/photo/201901/73424_131291_5057.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-info">
                  <h4>핫플6</h4>
                  <p>핫플6</p>
                  <div class="portfolio-links">
                    <a
                      href="http://www.travelnbike.com/news/photo/201901/73424_131291_5057.jpg"
                      data-gallery="portfolioGallery"
                      class="portfolio-lightbox"
                      title="App 3"
                      ><i class="bi bi-plus"></i
                    ></a>
                    <a href="portfolio-details.html" title="More Details"
                      ><i class="bi bi-link"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End Our Portfolio Section -->
    </main>
    <!-- End #main -->
    <%@include file="../common/footer.jsp" %>
