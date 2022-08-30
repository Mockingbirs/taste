<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file = "header.jsp" %>

<meta charset="UTF-8">


<title>회원가입</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/checkout/">

    

    

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">




</head>

  <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>Checkout form</h2>
      <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
    </div>

    <div class="row g-5">
 <!--      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Product name</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Second product</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Third item</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">−$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$20</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div> -->
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">회원가입</h4>
        
        
        <form name="joinform" class="needs-validation"   action = "memberinput.jsp" >       
           <div class="row g-3">
            <div class="col-sm-7">
              <label for="Name" class="form-label">이름</label>
              <input type="text" class="form-control" name="mname" id="mname" placeholder="이름을 입력해주세요" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            
                        <div class="col-sm-7">
              <label for="Name" class="form-label">아이디</label>
              <input type="text" class="form-control"name="mid" id="mid" placeholder="아이디를 입력해주세요" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-7">
              <label for="Pasword" class="form-label">비밀번호</label>
              <input type="password" class="form-control" name="mpass"id="mpass" placeholder="비밀번호를 입력해주세요" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-sm-7">
              <label for="Passowrdcheck" class="form-label">비밀번호 확인</label>
              <input type="password" class="form-control" name="mpass2"id="mpass2" placeholder="비밀번호를 다시 입력해주세요" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>


            <div class="col-sm-7">
              <label for="Passowrdcheck" class="form-label">전화번호</label>
              <input type="text" class="form-control" name="mtel" id="mtel" placeholder="전화번호를 입력해주세요" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
              </div>
              <br>
              
     
           
 <div class="col-sm-7">
 		<label class="col-sm-2">성별</label>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="mgender" id="male" value="male">
  <label class="form-check-label" for="inlineRadio1">남성</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="mgender" id="female" value="female">
  <label class="form-check-label" for="inlineRadio2">여성</label>
</div>
  </div>
 

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control"name="memail" id="memail" placeholder="이메일을 입력해주세요">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control"name="maddr" id="maddr" placeholder="주소를 입력해주세요" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

                     <div class="col-sm-4">
              <label for="Passowrdcheck" class="form-label">출생년도</label>
              <input type="text" class="form-control" name="myear"id="myear" placeholder="ex)1977" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
              </div>
              
                          <div class="col-sm-4">
              <label for="Passowrdcheck" class="form-label">월/일</label>
              <input type="text" class="form-control"name="mbirthday" id="mbirthday" placeholder="ex)0707" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
              </div>
              
              
          <div >
	<button class="w-40 btn btn-danger btn-lg" onclick="history.back()">이전페이지로</button>
          <button class="w-40 btn btn-primary btn-lg"  onclick="joinform_check()" >회원가입</button>
 </div>
 </div>
        </form>
        </div>
        
   
    </div>
  </main>
</div>

  
 





<%@ include file = "footer.jsp"%>

<script>

//joinform_check 함수로 유효성 검사
function joinform_check() {
  //변수에 담아주기
  var mid = document.getElementById("mid");
  var mpass = document.getElementById("mpass");
  var mpass2 = document.getElementById("mpass2");
  var mname = document.getElementById("mname");
  var female = document.getElementById("female");
  var male = document.getElementById("male");
  var mtel = document.getElementById("mtel");
  var memail = document.getElementById("memail");
  var myear = document.getElementById("myear");
  var mbirthday = document.getElementById("mbirthday");
  var maddr = document.getElementById("maddr");	
/*   var agree = document.getElementById("agree"); */



  if (mid.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
    alert("아이디를 입력하세요.");
    mid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
  };

  if (mpass.value == "") {
    alert("비밀번호를 입력하세요.");
  
    return false;
  };
  

  //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
/*   var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

  if (!pwdCheck.test(pwd.value)) {
    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
    pwd.focus();
    return false;
  }; */

  if (mpass2.value !== mpass.value) {
    alert("비밀번호가 일치하지 않습니다..");
   
    return false;
  };

  if (mname.value == "") {
    alert("이름을 입력하세요.");
 
    return false;
  };

 

  var reg = /^[0-9]+/g; //숫자만 입력하는 정규식

  if (!reg.test(mtel.value)) {
    alert("전화번호는 숫자만 입력할 수 있습니다.");
  
    return false;
  }

  
  if (!female.checked && !male.checked) { //둘다 미체크시
	    alert("성별을 선택해 주세요.");
	 
	    return false;
	  }

  if (memail.value == "") {
    alert("이메일 주소를 입력하세요.");
  
    return false;
  }
  

		  
		  if (maddr.value == "") {
			    alert("주소를 입력하세요.");
			   
			    return false;
			  };

			  
			  if (myear.value == "") {
				    alert("출생연도를 입력하세요.");
				 
				    return false;
				  };
				  
				  if (mbirthday.value == "") {
					    alert("월/일을 입력하세요.");
					   
					    return false;
					  };
/*   if (!agree.checked) { //체크박스 미체크시
    alert("약관 동의를 체크하세요.");
    agree.focus();
    return false;
  }
 */
  //입력 값 전송
 document.forms.joinform.submit();  //유효성 검사의 포인트   
}

//아이디 중복체크 팝업창(현재 공백문서)
function id_check() {
  //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
  window.open("", "", "width=600, height=200, left=200, top=100");
}

//이메일 옵션 선택후 주소 자동 완성
function change_email() {
  var email_add = document.getElementById("email_add");
  var email_sel = document.getElementById("email_sel");

  //지금 골라진 옵션의 순서와 값 구하기
  var idx = email_sel.options.selectedIndex;
  var val = email_sel.options[idx].value;

  email_add.value = val;
}

//우편번호 검색 팝업창(현재 공백문서)
function search_address() {
  window.open("", "b", "width=600, height=300, left=200, top=100");
}

</script>

</body>

</html>