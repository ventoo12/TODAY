<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/movie/top.jsp" />

<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div id="carousel-example" data-interval="false" class="carousel slide"
            data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active">
                  <img src="https://ununsplash.imgix.net/reserve/RONyPwknRQOO3ag4xf3R_Kinsey.jpg?w=1024&amp;q=50&amp;fm=jpg&amp;s=c8e85e7825f6c74ff13321833a9bc28d">
                  <div class="carousel-caption">
                    <h2 class="text-center">이달의 추천 영화</h2>
                    <p class="text-center text-info">조제,블랙 위도우,시동,보디가드,위대한 쇼맨</p>
                    <h1 class="text-center">2월달에도 Today Movie와 함께 해요.</h1>
                  </div>
                </div>
                <div class="item">
                  <img src="https://ununsplash.imgix.net/photo-1417024321782-1375735f8987?w=1024&amp;q=50&amp;fm=jpg&amp;s=7af3f809a9c1b90b7fcbd71655b661bc">
                  <div class="carousel-caption">
                    <h2>Title</h2>
                    <p>Description</p>
                  </div>
                </div>
                <div class="item">
                  <img src="https://unsplash.imgix.net/photo-1421986527537-888d998adb74?w=1024&amp;q=50&amp;fm=jpg&amp;s=e633562a1da53293c4dc391fd41ce41d">
                  <div class="carousel-caption">
                    <h2>Title</h2>
                    <p>Description</p>
                  </div>
                </div>
                <div class="item">
                  <img src="https://unsplash.imgix.net/photo-1418226970361-9f1f7227d638?w=1024&amp;q=50&amp;fm=jpg&amp;s=4a5f190c7499eff6f7c77d88d8abf57e">
                  <div class="carousel-caption">
                    <h2>Title</h2>
                    <p>Description</p>
                  </div>
                </div>
                <div class="item">
                  <img src="https://ununsplash.imgix.net/photo-1415302199888-384f752645d0?w=1024&amp;q=50&amp;fm=jpg&amp;s=823bdcc1b7ad955f5180efd352561016">
                  <div class="carousel-caption">
                    <h2>Title</h2>
                    <p>Description</p>
                  </div>
                </div>
              </div>
              <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev fa fa-arrow-circle-left"></i></a>
              <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center text-danger">Today Movie</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-offset-3 col-md-6">
            <form role="form">
              <div class="form-group">
                <div class="input-group">
                  <input type="search" class="form-control" placeholder="serarch">
                  <span class="input-group-btn">
                    <a class="btn btn-success" type="submit">검색<br></a>
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
          <div class="col-md-3">
            <h2 class="text-danger">최신 영화
              <i class="fa fa-star fa-fw"></i>
            </h2>
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
                aria-expanded="false">Dropdown <i class="fa fa-caret-down"></i></a>
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
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/1.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/2.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/3.jpg"
            class="img-responsive img-rounded">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/4.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2 class="text-success">
              <i class="fa fa-star fa-fw"></i>최근 본 영화 이어보기
              <br>
            </h2>
          </div>
          <div class="col-md-6"></div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-tabs">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">Dropdown <i class="fa fa-caret-down"></i></a>
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
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/5.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/6.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/7.jpg"
            class="img-responsive img-rounded">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/8.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center">진행중인 이벤트</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/9.jpg"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4">
            <h3 class="text-left">시청 이벤트</h3>
            <p class="text-left">이번달만 무료화 선언</p>
          </div>
          <div class="col-md-2">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/10.jpg"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4">
            <h3 class="text-left">무료 이벤트</h3>
            <p class="text-left">이벤트 참여~! 마일리지 포인트 놓치지 마세요^^</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/10.jpg"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4">
            <h3 class="text-left">구매 이벤트</h3>
            <p class="text-left">마일리지 포인트도 얻고 다양한 혜택 받아가세요~!</p>
          </div>
          <div class="col-md-2">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/12.jpg"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-4 text-center">
            <h3 class="text-left">월정액 이벤트</h3>
            <p class="text-left">월 정액 요금 3,0000 원 결제시 전체 무료!</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section text-justify">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <h2 class="text-muted">나의 무료 영화
              <i class="fa fa-star fa-fw"></i>
            </h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-tabs">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">Dropdown <i class="fa fa-caret-down"></i></a>
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
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/10.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/15.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/16.jpg"
            class="img-responsive img-rounded">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/8.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <h2>
              <i class="fa fa-star fa-fw"></i>인기영화
              <br>
            </h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="nav nav-tabs">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                aria-expanded="false">Dropdown <i class="fa fa-caret-down"></i></a>
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
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/14.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/5.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/7.jpg"
            class="img-responsive img-rounded">
            <h2>A title</h2>
          </div>
          <div class="col-md-3">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/blurry/800x600/14.jpg"
            class="img-responsive">
            <h2>A title</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-warning">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="https://ununsplash.imgix.net/photo-1421098518790-5a14be02b243?w=1024&amp;q=50&amp;fm=jpg&amp;s=24665881d66f79925810c2deb7e486b9"
            class="img-circle img-responsive">
          </div>
          <div class="col-md-6">
            <h1 class="text-primary">위대한 쇼맨</h1>
            <h3>줄거리</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
              ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
              dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
              nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
              Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In
              enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
              felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
              elementum semper nisi.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-danger">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-primary">조제, 호랑이 그리고 물고기들</h1>
            <h3>줄거리</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
              ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
              dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
              nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
              Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In
              enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
              felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
              elementum semper nisi.</p>
          </div>
          <div class="col-md-6">
            <img src="https://unsplash.imgix.net/uploads/1411724908903377d4696/2e9b0cb2?w=1024&amp;q=50&amp;fm=jpg&amp;s=2016c4932a7b7a1b629cb6890bff9977"
            class="img-circle img-responsive">
          </div>
        </div>
      </div>
    </div>
    <div class="section section-success">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center text-primary">베스트 컨텐츠</h1>
            <p class="text-center">신선한 화제작 BEST 3</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <img src="https://unsplash.imgix.net/photo-1420708392410-3c593b80d416?w=1024&amp;q=50&amp;fm=jpg&amp;s=db450320d7ee6de66c24c9b0bf2de3c6"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">광 대&nbsp;</h3>
            <p class="text-center">이 수 연</p>
          </div>
          <div class="col-md-4">
            <img src="https://unsplash.imgix.net/photo-1423439793616-f2aa4356b37e?w=1024&amp;q=50&amp;fm=jpg&amp;s=3b42f9c018b2712544debf4d6a4998ff"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">너의 췌장을 먹고싶어</h3>
            <p class="text-center">신비 주의</p>
          </div>
          <div class="col-md-4">
            <img src="https://unsplash.imgix.net/uploads/1412112828986a673b954/1d8ef901?w=1024&amp;q=50&amp;fm=jpg&amp;s=9c44bb02d0811d30403b18a15a70e6a2"
            class="center-block img-circle img-responsive">
            <h3 class="text-center">보고 싶은놈 보기 싫은놈
              <br>
            </h3>
            <p class="text-center">홍 길 동</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <hr>
          </div>
        </div>
      </div>
    </div>

<jsp:include page="/movie/foot.jsp" />