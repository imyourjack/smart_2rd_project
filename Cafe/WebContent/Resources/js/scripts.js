/*!
* Start Bootstrap - Business Casual v7.0.1 (https://startbootstrap.com/theme/business-casual)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-business-casual/blob/master/LICENSE)
*/
// Highlights current date on contact page



function registerFn() {
    var user_id = $("#user_id").val();
    var password = $("#password").val();
    var nickname = $("#nickname").val();
    $.ajax({
       type : "post",
       data : {
          "user_id" : user_id,
          "password" : password,
          "nickname" : nickname
       }, //"파라메터":벨류값
       success : function(data) {
          if (data == "NO") {
             alert("회원 가입에 실패하였습니다.");
          } else {
             location.href = "login.jsp"; //로그인 성공하면 메인화면으로
          }
       }, //처리가 성공하면 바로 list를 뽑아준다
       error : function() {
          alert("error");
       }
    });
 }
      function pageQuery() {

          // window 객체의 location.search 속성으로 쿼리스트링 가져오기
          var sQuery = location.search;

            // 쿼리스트링이 있는지 조건문으로 체크
            if ( sQuery ) {
              document.getElementById('chk_info1').innerHTML = sQuery;
            } else {
              document.getElementById('chk_info1').innerHTML = '현재 페이지 URL에 쿼리정보가 없습니다.';
            }
         }
      function loginFn() {
         var user_id = $("#user_id").val(); //id하나만 가지고 오기위해서 val을 씀
         var password = $("#password").val(); //serialize는 다 가져오는것              
         $.ajax({
            url : "ajaxlogin.do", //글쓰기 버튼을 누르면 serialize을 가지고ajaxregister여기로 연결해서 처리해주고
            type : "post",
            data : {
               "user_id" : user_id,
               "password" : password
            }, //"파라메터":벨류값
            success : function(data) {
               if (data == "NO") {
                  alert("회원 인증에 실패했습니다");
               } else {
                  location.href = "index.jsp"; //로그인 성공하면 메인화면으로
               }
            }, //처리가 성공하면 바로 list를 뽑아준다
            error : function() {
               alert("error");
            }
         });

      }
      function logoutFn() {
         if(confirm ("로그아웃 하시겠습니까?")==true){
         $.ajax({
            url : "ajaxlogout.do",
            type : "get",
            success : function name() {
               location.href = "index.jsp";
            },
            error : function() {
               alert("error");
            }
         });
         }
      }
      
      function mypageFn() {
      if (confirm("로그인이 필요한 페이지입니다. 로그인을 하시겠습니까?") == true) {
         $.ajax({
            url : "ajaxlogin.do",
            type : "get",
            success : function name() {
               location.href = "login.jsp";
            },
            error : function() {
               alert("error");
            }
         });
      } else{
         $.ajax({
            url : "ajaxlogin.do",
            type : "get",
            success : function name() {
               location.href = "index.jsp";
            },
            error : function() {
               alert("error");
            }
         });
      }

   }
   






