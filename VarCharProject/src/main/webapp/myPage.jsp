<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="koala"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>VARCHAR</title>
 <link rel="shortcut icon" href="./images/vc.ico" >
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link
      href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />
    <link rel="stylesheet" href="css/animate.css" />

    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />

    <link rel="stylesheet" href="css/aos.css" />

    <link rel="stylesheet" href="css/ionicons.min.css" />

    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.timepicker.css" />

    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/icomoon.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/myPage.css" />
  </head>
  <body>
   	<koala:nav/>
    <!-- END nav -->

    <section
      class="hero-wrap hero-wrap-2 js-fullheight"
      style="background-image: url('images/bg_3.jpg')"
      data-stellar-background-ratio="0.5"
    >
      <div class="overlay"></div>
      <div class="container">
        <div
          class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"
        >
          <div class="col-md-9 ftco-animate pb-5">
            <p class="breadcrumbs">
              <span class="mr-2"
                ><a href="index.html"
                  >Home <i class="ion-ios-arrow-forward"></i></a
              ></span>
              <span>Contact <i class="ion-ios-arrow-forward"></i></span>
            </p>
            <h1 class="mb-3 bread">Contact Us</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-8 block-9 mb-md-5 myInfoContainer">
            <form action="mUpdate.do" class="bg-light p-5 contact-form" method="POST">
              <h2 class="myInfoTitle">회원 정보 확인 / 변경</h2>
              <div class="myInfoBox">
              <c:set var="m" value="${mdata}"/>
                <div class="myInfo firstColumn">
                  <div class="form-group">
               
                     			

                    <span>이름</span>
                    <input
                      type="text"
                      class="form-control"
                      name= "changeMname"
                      value="${m.mname}"
                      readonly
                    />
                  </div>
                  <div class="form-group">
                    <span>닉네임</span>
                    <input
                      type="text"
                      class="form-control"
                      name="changeMnickname"
                      value = "${m.mnickname}"
                      placeholder="닉네임 입력"
                    />
                  </div>
                  <div class="form-group">
                    <span>아이디</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name="changeMid"
                        value="${userId}"
                        readonly
                      />
                    </div>
                    <span>비밀번호</span>
                    <input
                      type="text"
                      class="form-control"
                      name="changeMpw"
                      value = "${m.mpw}"
                      placeholder="비밀번호 입력"
                    />
                  </div>

                  <!-- <div class="form-group">
                    <textarea
                      name=""
                      id=""
                      cols="30"
                      rows="7"
                      class="form-control"
                      placeholder="Message"
                    ></textarea>
                  </div>  -->
                  <div class="form-group deleteUserBtn">
                    <input
                      readonly
                      type="text"
                      value="회원탈퇴"
                      class="btn btn-primary py-3 px-5"
                      id="deleteUserBtn"
                    />
                  </div>
                  <div id="deleteMsgBox">
                    <p>그동안 작성하신 글은 어떻게 할까요?</p>

                    <div id="deleteMsgBtn">
                      <button name="deleteAll" id="deleteAll" value="deleteAll">전부 삭제</button>
                      <button name="deleteOnlyMsg" id="deleteOnlyMsg" value="deleteOnlyMsg">모두 유지</button>
                      <button name="stopDelete" type="button" id="stopDelete" value="stopDelete">탈퇴 취소</button>
                    </div>

                    <p id="deleteOnlyMsgInfo">
                      '모두 유지'를 선택하면 작성자명은 삭제됩니다.
                    </p>
                  </div>
                </div>

                <div class="myInfo secondColumn">
                  <div class="form-group">
                    <span>전화번호</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "changeMphone"
                         value = "${m.mphone}"
                        placeholder="전화번호 입력"
                      />
                    </div>
                    <span>주소</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "changeMadd"
                         value = "${m.madd}"
                        placeholder="주소 입력"
                      />
                    </div>
                    <span>이메일</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "changeMemail"
                         value = "${m.memail}"
                        placeholder="이메일 입력"
                      />
                    </div>
                    <span>계정 권한</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                         name = "changeMrole"
                        value="${m.mrole}"
                        readonly
                      />
                    </div>
                    <!-- <div class="form-group">
                    <textarea
                      name=""
                      id=""
                      cols="30"
                      rows="7"
                      class="form-control"
                      placeholder="Message"
                    ></textarea>
                  </div> -->
                    <div class="form-group updateUserBtn">
                      <input
                        type="submit"
                        value="확인"
                        class="btn btn-primary py-3 px-5"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-12">
            <div id="map" class="bg-white"></div>
          </div>
        </div>
      </div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">
                <a href="#" class="logo">Car<span>book</span></a>
              </h2>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia and Consonantia, there live the blind texts.
              </p>
              <ul
                class="ftco-footer-social list-unstyled float-md-left float-lft mt-5"
              >
                <li class="ftco-animate">
                  <a href="#"><span class="icon-twitter"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="#"><span class="icon-facebook"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="#"><span class="icon-instagram"></span></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Services</a></li>
                <li>
                  <a href="#" class="py-2 d-block">Term and Conditions</a>
                </li>
                <li>
                  <a href="#" class="py-2 d-block">Best Price Guarantee</a>
                </li>
                <li>
                  <a href="#" class="py-2 d-block"
                    >Privacy &amp; Cookies Policy</a
                  >
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Have a Questions?</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li>
                    <span class="icon icon-map-marker"></span
                    ><span class="text"
                      >203 Fake St. Mountain View, San Francisco, California,
                      USA</span
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon icon-phone"></span
                      ><span class="text">+2 392 3929 210</span></a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon icon-envelope"></span
                      ><span class="text">info@yourdomain.com</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              All rights reserved | This template is made with
              <i class="icon-heart color-danger" aria-hidden="true"></i> by
              <a href="https://colorlib.com" target="_blank">Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>
      </div>
    </footer>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
        <circle
          class="path-bg"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke="#eeeeee"
        />
        <circle
          class="path"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke-miterlimit="10"
          stroke="#F96D00"
        />
      </svg>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
    <script src="js/deleteUser.js" id="deleteUser" userPw="${userPw}"></script>
  </body>
</html>
