<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ include file = "/member/loginModal.jsp" %>
  <!-- Footer -->
   <footer class="section section-primary">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>상호:Today&nbsp;</h1>
            <p>주소:서울특별시 영등포구 당산동&nbsp;</p>
            <p>통신판매신고:제 2020-서울당산-선유대로-2020</p>
            <p>대표이사:당산동 밥벌레</p>
            <p>고객센터:1004-1004(유료) 전화시 통화로 엄청나게 발생!!! 42co@xxxxx.com</p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="col-md-12 hidden-xs text-right">
              <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
              <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
              <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
              <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
<!-- !페이지 시작 div 끝! -->
</div>

<!-- 아코디언, 사이드바 액션 코드 -->
<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>