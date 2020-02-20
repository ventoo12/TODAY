<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/movie/top.jsp" />
     <style>
        #myCarousel2 img{
            width:125px;
            border:1px solid white;
            height:400px;
            padding:1px;
        }
        
        #myCarousel3 img{
            width:125px;
            border:1px solid white;
            height:400px;
            padding:1px;
        }
        
        #myCarousel4 img{
            width:125px;
            border:1px solid white;
            height:400px;
            padding:1px;
        }
        
        #myCarousel5 img{
            width:125px;
            border:1px solid white;
            height:400px;
            padding:1px;
        }
        
        
    </style>
    
    <div class="carousel slide" id="carousel-example" data-interval="3000"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item">
          <img src="./images/최신영화/겨울왕국.PNG" style="width: 100%; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
        <div class="item">
         <img src="./images/최신영화/분노의질주 홉스&쇼.PNG" style="width: 100%; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
        <div class="item">
         <img src="./images/최신영화/블랙위도우.PNG" style="width: 100%; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
        <div class="item">
          <img src="./images/소장용 인기영화/라라랜드.PNG" style="width: 100%; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
        <div class="item">
         <img src="./images/최신영화/사자.PNG" style="width: 100%; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
        <div class="item active">
          <img src="./images/최신영화/블랙머니.PNG" style="width: 120px; height: 1200px;">
          <div class="carousel-caption">
            <h2>2월의 최신영화</h2>
            <p>2020년에도 Today Movie와 함께 해요.</p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
    
    
    <%--  db1 : 82.png ... 겨울왕국 ... 시동 ...
    <c:if test="${db정보 ne null}">
       <c:forEach var="img" items="${movieDB}">
           <img src="images/최신영화/<c:out value="${img.db1}"/>">
       </c:forEach>
     </c:if> --%>
      
      
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center text-primary">Today Movie</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-offset-3 col-md-6">
            <form role="form">
              <div class="form-group">
                <div class="input-group input-group-lg">
                  <input type="search" class="form-control" placeholder="'검색어를 입력하세요'">
                  <span class="input-group-btn">
                    <a class="btn btn-success" type="submit">검색</a>
                  </span>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="text-left text-success">
              <i class="fa fa-star fa-fw"></i>최근 본 영화 이어보기</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">더보기&nbsp;<i class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="#">Action</a>
                  </li>
                  <li>
                    <a href="#">Another action</a>
                  </li>
                  <li>
                    <a href="#">Something else here</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">Separated link</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">One more separated link</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills"></ul>
          </div>
        </div>
        <!-- -->
        <div id="myCarousel2" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel2" data-slide-to="1"></li>
    <li data-target="#myCarousel2" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
        <div class="row item active">
          <div class="col-md-3 col-xs-3">
           <a href="/Today/moviesub.do"> <img src="./images/소장용 인기영화/악마를보았다.PNG"
            	class="img-responsive"> </a>
            <h3 contenteditable="true" class="text-center">악마를 보았다</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/악인전.PNG"
            class="img-responsive">
            <h3 class="text-center" contenteditable="true">악인전</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/무간도.PNG"
            class="img-responsive">
            <h3 class="text-center">무간도</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/하울의 움직이는 성.PNG"
            class="img-responsive">
            <h3 class="text-center">하울의 움직이는 성</h3>
          </div>
        </div>
        <!-- 아래 복사 ------------------------------ -->
        <div class="row item">
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/내가살인범이다.PNG"
            	class="img-responsive">
            <h3 contenteditable="true" class="text-center">내가 살인범이다</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/레미제라블.PNG"
            class="img-responsive">
            <h3 class="text-center" contenteditable="true">레미제라블</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/물랑루즈.PNG"
            class="img-responsive">
            <h3 class="text-center">물랑루즈</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/블레이드러너.PNG"
            class="img-responsive">
            <h3 class="text-center">블레이드 러너</h3>
          </div>
        </div>
        <!-- --------------------------- -->
        </div>
        </div> <!--.myCarousel2  -->
        <!--  -->
      <a class="left carousel-control" href="#myCarousel2" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#myCarousel2" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="text-left">
              <span class="label label-default">New</span>최신 영화&nbsp;</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">더보기&nbsp;<i class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="#">Action</a>
                  </li>
                  <li>
                    <a href="#">Another action</a>
                  </li>
                  <li>
                    <a href="#">Something else here</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">Separated link</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">One more separated link</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
        <!-- -->
        <div class="section">
      <div class="container">
        <div id="myCarousel3" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel3" data-slide-to="1"></li>
    <li data-target="#myCarousel3" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
        <div class="row item active">
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/존윅.PNG"
            class="img-responsive">
            <h3 class="text-center">존윅3:파라벨 룸</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/신의한수.PNG"
            class="img-responsive">
            <h3 class="text-center">신의한수:귀수편</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/조커.PNG"
            class="img-responsive">
            <h3 class="text-center">조커</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/사자.PNG"
            class="img-responsive">
            <h3 class="text-center">사자</h3>
          </div>
        </div>
        <div class="row item">
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/백두산.PNG"
            class="img-responsive">
            <h3 class="text-center">백두산</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/장사리.PNG"
            class="img-responsive">
            <h3 class="text-center">장사리</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/시동.PNG"
            class="img-responsive">
            <h3 class="text-center">시동</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/얼굴없는보스.PNG"
            class="img-responsive">
            <h3 class="text-center">얼굴없는 보스</h3>
        </div>
        </div>
        </div>
        </div>
        <a class="left carousel-control" href="#myCarousel3" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#myCarousel3" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
      </div>
    </div>
    <div class="section section-info">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center">진행중인 이벤트</h1>
            <p class="text-center">2월달 이벤트에 참여하시고 마일리지 포인트도 놓치지 마세요.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2 col-xs-2 ">
            <img src="./images/최신영화/82년생김지영.PNG"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4 col-xs-4 text-center">
            <h3 class="text-left">시청 이벤트</h3>
          </div>
          <div class="col-md-2 col-xs-2">
            <img src="./images/최신영화/겨울왕국.PNG"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4 col-xs-4 text-center">
            <h3 class="text-left">무료 이벤트
              <i class="fa fa-fw fa-spin fa-heart"></i>
            </h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2 col-xs-2">
            <img src="./images/최신영화/시동.PNG"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4 col-xs-4 text-center">
            <h3 class="text-left">구매 이벤트</h3>
          </div>
          <div class="col-md-2 col-xs-2">
            <img src="./images/최신영화/말레피센트2.PNG"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4 col-xs-4 text-center">
            <h3 class="text-left">참여 이벤트</h3>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="text-warning">
              <i class="fa fa-star fa-fw"></i>마일리지 영화</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">더보기&nbsp;<i class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="#">Action</a>
                  </li>
                  <li>
                    <a href="#">Another action</a>
                  </li>
                  <li>
                    <a href="#">Something else here</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">Separated link</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">One more separated link</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
          <!-- -->
        <div class="section">
      <div class="container">
        <div id="myCarousel4" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel4" data-slide-to="1"></li>
    <li data-target="#myCarousel4" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
        <div class="row item active">
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/감기.PNG"
            class="img-responsive">
            <h3 class="text-center">감기</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/관상.PNG"
            class="img-responsive">
            <h3 class="text-center">관상</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/오직그대만.PNG"
            class="img-responsive">
            <h3 class="text-center">오직 그대만</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/은밀하게위대하게.PNG"
            class="img-responsive">
            <h3 class="text-center">은밀하게 위대하게</h3>
          </div>
        </div>
              <div class="row item">
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/군도.PNG"
            class="img-responsive">
            <h3 class="text-center">군도</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/클래식.PNG"
            class="img-responsive">
            <h3 class="text-center">클래식</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/표적.PNG"
            class="img-responsive">
            <h3 class="text-center">표적</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/마일리지 쿠폰 영화/화이.PNG"
            class="img-responsive">
            <h3 class="text-center">화이</h3>
          </div>
        </div>
        </div>
        </div>
        <a class="left carousel-control" href="#myCarousel4" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#myCarousel4" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="text-info">
              <i class="fa fa-star fa-fw"></i>Today Movie 추천 영화</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-danger">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-xs-6">
            <div class="text-justify thumbnail">
              <img src="./images/소장용 인기영화/보디가드.PNG"
              class="img-responsive img-rounded">
              <div class="caption">
                <h3>보디가드 Ost
                  <br>
                </h3>
                           <div class="col-md-2 col-xs-2">
            <img src="./images/노래 앨범/휘트니휴스턴.PNG"
            class="img-responsive">
            	</div>
                <p>Whitney Houston - &nbsp;And I Will always love you&nbsp;</p>
                           <div class="col-md-2 col-xs-2">
            <img src="./images/노래 앨범/휘트니 휴스턴.PNG"
            class="img-responsive">
            	</div>
                <p>Whitney Houston- I Have Nothing</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xs-6">
            <h1 class="text-left text-success">보디가드</h1>
            <p>멜로/로맨스, 드라마 1992.12.05. 개봉 129분 미국 15세 관람가&nbsp;</p>
            <p>감독 : 믹 잭슨&nbsp;</p>
            <p>배우:케빈 코스트너, 휘트니 휴스턴, 케리 켐프 ,빌 콥스, 랄프 웨이트</p>
            <h3>줄거리</h3>
            <p class="text-justify">“절대 그녀에게서 눈을 떼지 말 것” “절대 경호를 풀지 말 것” “절대 사랑에 빠지지 말 것” 전직 대통령을 경호했던 보디가드(케빈
              코스트너)와 세계적인 톱스타 여가수(휘트니 휴스턴)의 이뤄질 수 없는 운명적인 사랑을 그린 모두의 인생 로맨스</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-success">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-xs-6">
            <h1 class="text-danger">레옹</h1>
            <p>범죄, 액션, 드라마 1995.02.18. 개봉 132분 프랑스 &nbsp;청소년 관람불가</p>
            <p>감독 : 뤽 베송&nbsp;</p>
            <p>출연 : 장 르노, 나탈리 포트만, 게리 올드만, 대니 에일로,&nbsp;
              <br>마이클 바다루코, &nbsp;엘렌 그린,피터애펠, 프랭크 셍거</p>
            <h3 contenteditable="true">줄거리</h3>
            <p class="text-justify">“사랑해요. 내 첫사랑 레옹.”_마틸다 “나도 행복해 지고 싶어. 잠도 자고, 뿌리도 내릴 꺼야.”_레옹 한 손엔 우유 2팩이
              든 가방, 다른 한 손엔 화분을 들고 뿌리 없이 떠도는 킬러 레옹은 어느 날 옆집 소녀 마틸다의 일가족이 몰살 당하는 것을 목격한다.
              그 사이 심부름을 갔다 돌아 온 마틸다는 가족들이 처참히 몰살 당하자 레옹에게 도움을 청한다. 가족의 원수를 갚기 위해 킬러가
              되기로 결심한 12세 소녀 마틸다는 레옹에게 글을 알려주는 대신 복수하는 법을 배우게 된다. 드디어 그녀는 가족을 죽인 사람이
              부패 마약 경찰 스탠스임을 알게 되고, 그의 숙소로 향하게 되는데…</p>
          </div>
          <div class="col-md-6 col-xs-6">
            <div class="text-justify thumbnail">
              <img src="./images/소장용 인기영화/레옹.PNG"
              class="img-responsive img-rounded">
              <div class="caption">
                <h3>레옹 Ost</h3>
                <div class="col-md-2 col-xs-2">
            <img src="./images/노래 앨범/스팅.PNG"
            class="img-responsive">
            	</div>
                <p>Sting - Shape Of My Heart</p>
                     <div class="col-md-2 col-xs-2">
             <img src="./images/노래 앨범/스팅.PNG"
            class="img-responsive">
            	</div>
                <p>Bjork -&nbsp;Venus as a Boy</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2>
              <i class="fa fa-star fa-fw"></i>인기 영화</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-pills">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">더보기&nbsp;<i class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="#">Action</a>
                  </li>
                  <li>
                    <a href="#">Another action</a>
                  </li>
                  <li>
                    <a href="#">Something else here</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">Separated link</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#">One more separated link</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
         <!-- -->
        <div class="section">
      <div class="container">
        <div id="myCarousel5" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel5" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel5" data-slide-to="1"></li>
    <li data-target="#myCarousel5" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
        <div class="row item active">
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/터미네이터 다크페이트.PNG"
            class="img-responsive">
            <h3 class="text-center">터미네이터:다크페이트</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/신세계.PNG"
            class="img-responsive">
            <h3 contenteditable="true" class="text-center">신세계</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/아일랜드.PNG"
            class="img-responsive">
            <h3 class="text-center">아일랜드</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/바람의파이터.PNG"
            class="img-responsive">
            <h3 class="text-center">바람의파이터</h3>
          </div>
        </div>
         <div class="row item">
          <div class="col-md-3 col-xs-3">
            <img src="./images/최신영화/쥬만지.PNG"
            class="img-responsive">
            <h3 class="text-center">쥬만지</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/곡성.PNG"
            class="img-responsive">
            <h3 contenteditable="true" class="text-center">곡성</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/공공의적.PNG"
            class="img-responsive">
            <h3 class="text-center">공공의적</h3>
          </div>
          <div class="col-md-3 col-xs-3">
            <img src="./images/소장용 인기영화/더록.PNG"
            class="img-responsive">
            <h3 class="text-center">더록</h3>
            </div>
            </div>
            </div>
            </div>
          <a class="left carousel-control" href="#myCarousel5" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#myCarousel5" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center text-primary">2월의 Best영화!</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-xs-4">
            <img src="./images/소장용 인기영화/조제호랑이.PNG"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">조제 호랑이 그리고 물고기들</h3>
            <p class="text-center text-danger">1위 - 감독:이누도 잇신</p>
          </div>
          <div class="col-md-4 col-xs-4">
            <img src="./images/소장용 인기영화/위대한쇼맨.PNG"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">위대한 쇼맨</h3>
            <p class="text-center text-success">2위 - 감독:마이클 그레이시</p>
          </div>
          <div class="col-md-4 col-xs-4">
            <img src="./images/소장용 인기영화/너의 췌장을 먹고싶어.PNG"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">너의 췌장을 먹고싶어</h3>
            <p class="text-center text-muted">3위 - 감독:우시지마 신이치로 </p>
          </div>
        </div>
      </div>
    </div>

<jsp:include page="/movie/foot.jsp" />