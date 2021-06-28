<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>카페</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="./Resources/js/all.js" crossorigin="anonymous"></script>
        <!-- ./Resources/js/all.min.js -->
        <!-- Google fonts-->
        <link href="stylesheet" rel="stylesheet" />
        <link href="stylesheet" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./Resources/css/styles.css" rel="stylesheet" />

<style>
td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: rgba(230, 167, 86, 0.9);
}
</style>

</head>
    <body>
        <header>
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
                <span class="site-heading-upper text-primary mb-3">A Free Bootstrap Business Theme</span>
                <span class="site-heading-lower">Business Casual</span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.html">카페</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                    
                        <jsp:include page="menu.jsp">
							<jsp:param name="pageSelection" value="6" />
						</jsp:include>
						
                    </ul>
                </div>
            </div>
        </nav>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <div class="cta-inner bg-faded text-center rounded">
             			 <!-- 자유게시판 내용 들어가는 곳 -->
             			 <div class="sh_group">
									<div class="sh_header">
										<h2>자유게시판</h2>
									</div>
									<div class="sh_content">
										<dl class="sh_lst2">
											<table class=recommendTable>
												<tr class=recommendTr>
													<th >번호</th>
													<th>제목</th>
													<th>작성자</th>
												</tr>
												<tr>
													<th>1</th>
													<td>추천받은 원두 정말 잘 맞아요</td>
													<td>준짱</td>
												</tr>
											</table>
										</dl>
									</div>
									<div>
										<p class="btn_area_btm1">
											<button type="button" onclick=")"
													style="background-color: #e6a756; color: rgba(47, 23, 15, 0.9); border-radius: 15px;">
													글쓰기</button>
										</p>
									</div>
								</div>
             			 
             			 
             			 
             			 
             			 
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./Resources/js/scripts.js"></script>
    </body>
</html>