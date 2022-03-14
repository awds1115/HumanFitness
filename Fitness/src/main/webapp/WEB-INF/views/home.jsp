<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
<!--     dd -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HumanFitness</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" />

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Custom styles for this template -->
<!--     <link href="headers.css" rel="stylesheet"> -->
<!-- https://www.bodychannel.co.kr/dist/img/main/slide_bg_4.jpg -->
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <jsp:include page="header.jsp"/>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">LET'S GET MOVING</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">"WHAT SEEMS IMPOSSIBLE TODAY WILL SOON<br> BECOME YOUR WARM-UP"</p>
                        <a class="btn btn-primary btn-xl" href="#about">Start</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">Human Fitness</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">Human Fitness ! 당신의 피트니스. 당신의 건강한 목표를 응원합니다! 고객님들의 건강한 목표달성을 응원하기 위해 건강한 목표를 가진 젊은 사람들이 모여 만든 휴먼 피트니스입니다. 고객님 한분한분 가족같이 생각하며, 언제나 초심과 진정성을 가지고 내집과 같은 편안한 분위기 속에서 건강한 몸을 만드실 수 있는 공간을 제공 해드릴 것을 약속합니다. 어렵게 가진 목표, 어렵지 않게 해드리겠습니다.</p>
                        <a class="btn btn-light btn-xl" href="map">지점찾기</a>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="health" title="health">
                            <img class="img-fluid2" src="https://www.bodychannel.co.kr/dist/img/main/slide_bg_4.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Health</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="yoga" title="Yoga">
                            <img class="img-fluid3" src="http://crossbak.cafe24.com/wp-content/uploads/2020/08/180702_slider_bg_6.jpg" alt="..."/>
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Yoga</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="pilates" title="Pilates">
                            <img class="img-fluid" src="http://www.pilatesfit.co.kr/css/images/branch_img/pc002.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Pilates</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
            <div class="container px-4 px-lg-5 text-center">
                <a class="btn btn-primary btn-xl" href="buyMship">회원권 구매</a>
            </div>

        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                     	<h3 class="mt-0">Human Fitness</h3>
                        <h2 class="mt-0" style="color:#F00000;">상담문의</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">Human Fitness는 고객 여러분의 의견을 소중히 생각합니다.<br>
												   보내주시는 문의 사항은 최대한 신속하게 고객님의 메일이나 전화로 답변해 드리겠습니다.</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">이름</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">이메일</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">전화번호</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">메모</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">상담문의 전송에 성공하였습니다.</div>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">문의전송이 실패하였습니다.</div></div>
                            <!-- Submit Button-->
                            <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">전송하기</button></div>
                        </form>
                    </div>
                </div>
             
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="footer.jsp"/>
<!--         <footer class="bg-light py-5"> -->
<!--             <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2021 - Company Name</div></div> -->
<!--         </footer> -->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
                <script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
