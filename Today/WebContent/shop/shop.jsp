<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/shop/top.jsp" />

<!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">이달의 Best !</p>
    <p class="w3-right">
    <button type="button" class="w3-button w3-black w3-small" onclick="location.href='main.do'">메인화면</button>
    <button type="button" class="w3-button w3-black w3-small" onclick="location.href='main.do'">찜목록</button>
    <button type="button" class="w3-button w3-black w3-small" onclick="location.href='main.do'">내지갑</button>
    <button type="button" class="w3-button w3-black w3-small" onclick="location.href='main.do'"><i class="fa fa-shopping-cart"></i>장바구니</button>
      <i class="fa fa-search"></i>
    </p>
  </header>

  <!-- Image header -->
  <div class="w3-display-container w3-container">
    <img src="https://modo-phinf.pstatic.net/20200128_111/1580196817222f6rdE_JPEG/mosaeTd9BY.jpeg?type=w556" style="width:100%">
    <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p>HOT 인기상품</p>
  </div>

  <!-- Product grid -->
    <div class="w3-col l3 s12">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="https://modo-phinf.pstatic.net/20200128_172/1580198661618Cs2yN_JPEG/mosaeT1cem.jpeg?type=w556" style="width:100%"
          class="img-responsive">
          <span class="w3-tag w3-display-topleft">HOT</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">상품보기<i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>웜코튼 원피스<br><b>18,000</b></p>
      </div>
      <div class="w3-container">
        <img src="https://modo-phinf.pstatic.net/20200128_228/1580198662678F25f7_PNG/mosa8EXHJS.png?type=w556" style="width:100%"
        class="img-responsive">
        <p>가방가방 가방<br><b>12,000</b></p>
      </div>
    </div>
    
    <div class="w3-col l3 s12">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="https://modo-phinf.pstatic.net/20200128_26/1580198693136VAgIz_JPEG/mosaiKaSxA.jpeg?type=w556" style="width:100%"
          class="img-responsive">
          <span class="w3-tag w3-display-topleft">HOT</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">상품보기<i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>자취생 풀세트<br><b>21,000</b></p>
      </div>
      <div class="w3-container">
        <img src="https://modo-phinf.pstatic.net/20200128_272/1580198693614maSb9_JPEG/mosattXafO.jpeg?type=w556" style="width:100%"
        class="img-responsive">
        <p>다 막는 마스크<br><b>9,000</b></p>
      </div>
    </div>
    
    <div class="w3-col l3 s12">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="https://modo-phinf.pstatic.net/20200128_39/1580198694186J4S5p_JPEG/mosaQWKge3.jpeg?type=w556" style="width:100%"
          class="img-responsive">
          <span class="w3-tag w3-display-topleft">HOT</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">상품보기<i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>공기팟 8세대<br><b>42,000</b></p>
      </div>
      <div class="w3-container">
        <img src="https://modo-phinf.pstatic.net/20200128_148/1580198759883AkvQp_JPEG/mosaHtUQM6.jpeg?type=w556" style="width:100%"
        class="img-responsive">
        <p>동원참치 특가할인<br><b>6,200</b></p>
      </div>
    </div>
    
    <div class="w3-col l3 s12">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="https://modo-phinf.pstatic.net/20200128_184/1580198760827shPH0_JPEG/mosa3sWGsq.jpeg?type=w556" style="width:100%"
          class="img-responsive">
          <span class="w3-tag w3-display-topleft">HOT</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">상품보기<i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>냉동갈비 2박스<br><b>22,000</b></p>
      </div>
      <div class="w3-container">
        <img src="https://modo-phinf.pstatic.net/20200128_131/1580198761274GH44I_JPEG/mosaeelba7.jpeg?type=w556" style="width:100%"
        class="img-responsive">
        <p>이미지 준비중입니다.<br><b>--,---</b></p>
      </div>
    </div>
    
<jsp:include page="/shop/foot.jsp" />