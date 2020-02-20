<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String myctx = request.getContextPath();%>



<!-- 메인 컬럼 div 끝 -->
      </div>
      
      <!-- 오른쪽 배너 시작 -->
      <div class="w3-col m3">
      
      <!-- 오른쪽 배너 div 1 -->
        <div class="w3-card w3-round w3-white w3-center">
          <div class="w3-container">
            <p>스터디모임:</p>
            <img src="https://modo-phinf.pstatic.net/20200102_276/1577931462183TlnD0_JPEG/mosaUxGr5H.jpeg?type=w556" alt="Forest" style="width:100%;">
            <p><strong>주말 스터디</strong></p>
            <p>금요일 15:00</p>
            <p><button class="w3-button w3-block w3-theme-l4"><a href="<%=myctx%>/meeting/meetingList.do">신청하기</a></button></p>
          </div>
        </div>
        <br>
        
         <!-- 오른쪽 배너 div 2 -->
        <div class="w3-card w3-round w3-white w3-center">
          <div class="w3-container">
            <p>친구 신청</p>
            <img src="https://modo-phinf.pstatic.net/20200102_15/1577931462830BPo89_JPEG/mosaDfVpgg.jpeg?type=w556" alt="Avatar" style="width:50%"><br>
            <span>홍길동</span>
            <div class="w3-row w3-opacity">
              <div class="w3-half">
                <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
              </div>
              <div class="w3-half">
                <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
              </div>
            </div>
          </div>
        </div>
        <br>
        
         <!-- 오른쪽 배너 div 3 -->
        <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
          <p>구글 에드센스 광고 칸</p>
        </div>
        <br>
        
         <!-- 오른쪽 배너 div 4 -->
        <div class="w3-card w3-round w3-white w3-padding-32 w3-center">
          <p><i class="fa fa-bug w3-xxlarge"></i></p>
        </div>
        
      <!-- 오른쪽 베너 끝 -->
      </div>
      
    <!-- 메인 그리드 끝 -->
    </div>
    
  <!-- Page Container 끝 -->
  </div>
  <br>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
  <div class="w3-row-padding">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>빈공간 입니다. 없애도 됩니다.</p>
      <p>관리,제작 : ??? </p>
    </div>
  </div>
  </footer>
  <div class="w3-black w3-center w3-padding-24">TIS SNS Test Page</div>

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