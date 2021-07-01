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
   






function content_callback(data) {
	var view="<table class=recommendTable>";
	view+="<tr class=recommendTr>"; //동적으로 붙히기때문에 여기서부터는 +를 붙힘
	view+="<td>번호</td>";
	view+="<td>제목</td>";
	view+="<td>작성자</td>";
	view+="</tr>";
	$.each(data, (index, obj)=> {
		view+="<tr>";
		view+="<td id='content_idx"+index+"'>"+obj.content_idx+"</td>";
		view+="<td><a class=content_a href='javascript:contentFn("+index+")'>"+obj.title+"</a></td>";
		view+="<td>"+obj.user_id+"</td>";
		view+="</tr>";	
	});
 	view+="<tr>";
 	view+="<td colspan='3' style='background-color: white;'>";
 	view+="<input type='button' value='글쓰기' class='contentFirstBtn' onclick='btnWrite()'/>";
 	view+="</td>";
 	view+="</tr>";
	view+="</table>";
	$("#content_id").html(view);
}

function writeFn() {
	var formdata=$("#frm").serialize(); //boardForm에 form아이디를 불러옴 serialize란 폼안에 있는 모든 데이터를 읽어올 수 있다.
	//alert(data);
	$.ajax({
		url : "ajaxregister.do",
		type : "post",
		data :formdata ,
		success : content_list,
		error : function () {alert("error");}					
	});
}



function contentFn(index) {
	var idx=$("#content_idx"+index).text();
$.ajax({
	  url : "ajaxcontent.do",
	  type : "get",
	  data : {"content_idx" : idx},
	  datatype : "json",
	  success : callContent, //콜백
	  error : function () {alert("error");}			
});
	
}
function resetFn() {
	var idx=$("#content_idx").val();  //cidx를 가지고와서 취소버튼을 눌렀을때 원래대로 
$.ajax({
	  url : "ajaxcontent.do",
	  type : "get",
	  data : {"idx" : idx},
	  datatype : "json",
	  success : callContent, //콜백
	  error : function () {alert("error");}			
});
}

function callContent(data) {  //위에 callContent callback 함수 만들기
	$("#bc").css("display", "block"); 
	$("#bf").css("display", "none");
	var content_idx=data.content_idx;
	var title=data.title;
	var contents=data.contents;
	var user_id=data.user_id;
	$("#ccontent_idx").val(content_idx);
	$("#ctitle").val(title);
	$("#ccontents").val(contents);
	$("#cuser_id").val(user_id);
}

function delbtn(content_idx) {
	if(confirm("정말로 삭제하시겠습니까?")==true){
	$.ajax({ 
		url : "delete.do",
		type : "get",
		data : {"content_idx": content_idx},
		success : content_list,
	    error : function() {alert("error");}
	});
 }else{
	return false;
 }
}
function closeFn() {
	$("#bc").css("display", "none");
	$("#bf").css("display", "none");
	$("#content_id").css("display","inline-table")
}
function updateFn() {
	var formdata=$("#ufrm").serialize();
	//alert(formdata);
	$.ajax({
		url : "ajaxupdate.do",
		type : "post",
		data :formdata ,
		success : list,
		error : function () {alert("error");}					
	});
}





