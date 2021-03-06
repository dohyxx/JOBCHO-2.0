<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset='utf-8'>
<title>JOBCHO 3.0</title>
<!-- fullcalendar CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js"></script>
<!-- fullcalendar locale CDN==================== -->
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment-with-locales.min.js"></script>
<!-- FullCalendar -->

<script src="https://kit.fontawesome.com/1628dac045.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>



<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	type="text/css">
<!-- 부가적인 테마 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    -->
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/codingBoostr.css">
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/sidebar-right.css">
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/sidebar-search.css">
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/sidebar-left.css">
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/content.css">
<link rel="stylesheet" type="text/css"
	href="/resources/main/css/team.css">
<link rel="stylesheet" type="text/css"
	href="/resources/chat/css/chat.css">
<link rel="stylesheet" type="text/css"
	href="/resources/chat/css/dragableChat.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/resources/main/css/sidebar-search.js"></script>
</head>
<body>
	<header>
		<div class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">JOBCHO</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a id="inviteSearch" href="#"
							role="button" data-target="#modal" data-toggle="modal"
							aria-haspopup="true" aria-expanded="false"><ion-icon
									name="person-add-outline" class="navbar-icon"></ion-icon>팀원초대</a></li>
					</ul>

				</div>
			</div>
		</div>

	</header>
    
    

	<!--왼쪽 사이드바-->
	<!--왼쪽 사이드바-->
	<!--왼쪽 사이드바-->

	<div class="l-navbar-left" id="navbar-left">
		<nav class="nav-left">
			<div>
				<div class="nav__brand-left">
					<ion-icon name="menu-outline" class="nav__toggle-left"
						id="nav-toggle-left"></ion-icon>
				</div>

				<!--프로필-->
				<div>
					<div class="nav-profile-image-left" style="background-image: url('/resources/board/gunsoo.png')"
						></div>
					<div class="nav-profile-content-left">
						<p>${team.team_name }</p>
						<p><sec:authentication property="principal.users.user_email"/></p>
						<p><sec:authentication property="principal.users.user_name"/></p>
					</div>
				</div>
				<!--프로필 끝-->
				
				<!-- =====게시판===== -->
				<div>
					
					<h3>토픽 
						<a href="#" class="collapse__sublink-left" id="createBoard" data-target="#boardModal" data-toggle="modal">
							<ion-icon name="add-outline"></ion-icon>
						</a>
					</h3>
					<!-- 게시판 -->
					<div class="nav__list-left nav__scroll-left" id="board">
						
						
						
					</div>	
					<!-- =====게시판 끝===== -->



					<!-- 풀커뮤니티 스크롤-->
					<!-- 풀커뮤니티 스크롤-->
					<h3>
						채팅 <a href="#" id="createChatRoom" class="collapse__sublink-left"
							onclick="onChatting(event)"><ion-icon name="add-outline"></ion-icon></a>
					</h3>
					<div id="chatRoomList" class="nav__list-left nav__scroll-left">

					</div>
					<!-- 풀커뮤니티 스크롤 끝-->
					<!-- 풀커뮤니티 스크롤 끝-->
				</div>

			</div>

			<a href="#" class="nav__link-left"  id="LogOutAction"> <ion-icon
					name="log-out-outline" class="nav__icon-left"></ion-icon> <span
				class="nav__name-left">Log Out</span>
			</a>
		</nav>
	</div>

	<!--왼쪽 사이드바 끝-->
	<!--왼쪽 사이드바 끝-->
	<!--왼쪽 사이드바 끝-->
	
	
	
	
	<!-- 게시글 시작 -->
	<div class="row" style="margin-top: 60px">

	
	</div>
<!-- 게시글 끝  -->



	
	

	
	
	
	
	

	<!--오른쪽 사이드바-->
	<!--오른쪽 사이드바-->
	<!--오른쪽 사이드바-->

	<div class="l-navbar-right navbar-font-right" id="navbar-right">
		<nav class="nav-right">
			<div>
				<div class="nav__brand-right">
					<ion-icon name="menu-outline" class="nav__toggle-right"
						id="nav-toggle-right"></ion-icon>
				</div>
				<div class="nav__list-right">
					<a href="#" id="toggle-key-home"
						class="nav__link-right active-right"> <ion-icon
							name="home-outline" class="nav__icon-right"></ion-icon> <span
						class="nav__name-right">Dashboard</span>
					</a> <a href="#" id="toggle-key" class="nav__link-right"> <ion-icon
							name="search-outline" class="nav__icon-right"></ion-icon> <span
						class="nav__name-right">Search</span>
					</a> <a href="#" id="toggle-key2" class="nav__link-right"> <ion-icon
							name="calendar-outline" class="nav__icon-right"></ion-icon> <span
						class="nav__name-right">ToDoList</span>
					</a> <a href="#" id="toggle-key3" class="nav__link-right"> <ion-icon
							name="football-outline" class="nav__icon-right"></ion-icon> <span
						class="nav__name-right">Files</span>
					</a> <a href="#" id="toggle-key-member" class="nav__link-right"> <ion-icon
							name="people-outline" class="nav__icon-right"></ion-icon> <span
						class="nav__name-right">Members</span>
					</a>
				</div>
			</div>

			<a href="#" class="nav__link-right" id="LogOutAction"> <ion-icon
					name="log-out-outline" class="nav__icon-right"></ion-icon> <span
				class="nav__name-right">Log Out</span>
			</a>
		</nav>
	</div>

	<!--오른쪽 사이드바 끝-->
	<!--오른쪽 사이드바 끝-->

	<!--오른쪽 사이드서치바-->
	<!--오른쪽 사이드서치바-->
	<!--오른쪽 사이드서치바-->
	<div class="search-navbar-right navbar-font-search" id="navbar-search">
		<nav class="nav-search">
			<div class="nav-search-title">검색</div>
			<div class="nav-search-content">
				<input type="text" class="form-control" placeholder="검색어 입력">
				<ul class="nav-search-category">
					<li>전체</li>
					<li>메시지</li>
					<li>할일</li>
					<li>투표</li>
					<li>파일</li>
				</ul>
				<ul class="nav-search-option">
					<SELECT NAME=sltSample SIZE=1> 토픽
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION> 채팅
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>

					</SELECT>
					<SELECT NAME=sltSample SIZE=1>
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>
					</SELECT>
					<SELECT NAME=sltSample SIZE=1>
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>
					</SELECT>
				</ul>
				<div class="nav-search-result-scroll">
					<div class="nav-search-result active-right">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					<div class="nav-search-result active-right">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					<div class="nav-search-result ">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					<div class="nav-search-result ">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					<div class="nav-search-result ">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					<div class="nav-search-result active-right">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!--오른쪽 사이드서치바 끝-->
	<!--오른쪽 사이드서치바 끝-->

	<!--오른쪽 사이드서치바2-->
	<!--오른쪽 사이드서치바2-->
	<!--오른쪽 사이드서치바2-->
	<div class="search-navbar-right navbar-font-search" id="navbar-search2">
		<nav class="nav-search">
			<div class="nav-search-title">할일</div>
			<div class="nav-search-content">
				<div id="createToDo" style="cursor:pointer">➕할일생성</div>
				<div id="selectTodoDeleteList" style="cursor:pointer">완료된 할일보기</div>
				<!-- <ul class="nav-todo-option">
					<SELECT NAME=sltSample SIZE=1> 토픽
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION> 채팅
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>

					</SELECT>
					<SELECT NAME=sltSample SIZE=1>
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>
					</SELECT>

				</ul> -->
				
				<div class="nav-search-result-scroll">
					<div class="job-todolist-wrap" style="cursor:pointer">
					<div class="nav-search-result active-right">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!--오른쪽 사이드서치바2 끝-->
	<!--오른쪽 사이드서치바2 끝-->

<!--오른쪽 사이드서치바3-->
	<!--오른쪽 사이드서치바3-->
	<!--오른쪽 사이드서치바3-->
	<div class="search-navbar-right navbar-font-search" id="navbar-search3">
		<nav class="nav-search">
			<div class="nav-search-title">투표</div>
			<div class="nav-search-content">
				<div id="createVote">➕투표생성</div>
				<div id="end-vote-list">▶이전투표</div>
				<!-- <ul class="nav-todo-option">
					<SELECT NAME=sltSample SIZE=1> 토픽
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION> 채팅
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>

					</SELECT>
					<SELECT NAME=sltSample SIZE=1>
						<OPTION VALUE=1>1번 보기입니다.</OPTION>
						<OPTION VALUE=2>2번 보기입니다.</OPTION>
						<OPTION VALUE=3>3번 보기입니다.</OPTION>
						<OPTION VALUE=4 SELECTED>4번 보기입니다.</OPTION>
					</SELECT>

				</ul> -->
				<div class="nav-search-result-scroll">
				<div class="job-vote-wrap" style="cursor:pointer">
					<div class="nav-search-result active-right">
						<div class="result-container">
							<div class="result-image"
								style="background-image: url('99D279435B3D788602.jfif');"></div>
							<div>
								<p class="team-profile-name">최지훈</p>
								<p class="team-profile-email">2015/21/505</p>
								<p class="team-profile-email">이건또 어떻게</p>
								<p class="team-profile-email">공지사항</p>

							</div>
						</div>
					</div>
					<hr>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!--오른쪽 사이드서치바3 끝-->
	<!--오른쪽 사이드서치바3 끝-->



	<!-- 컨텐츠 시작-->
	<!-- 컨텐츠 시작-->
	<div class="body-content" id="body-pd-left">
		<div class="job-team-body2"></div>
		

		<div class="job-team-body">
			
		</div>
	</div>
	<!-- 컨텐츠 끝-->
	<!-- 컨텐츠 끝-->

	<!-- 로그아웃 -->
	<form action="/customLogout" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

	<!-- modal 모음-->
	
		<div class="modal" id="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						팀원초대
						<button id="inviteModalClose" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input type="text" id="inviteUserSearchbar" class="form-control"
							placeholder="이름 또는 이메일 입력" autocomplete='off'>
						<div class="modal-scroll">
							<ul id="invite-list-group" class="list-group">
								<li class="list-group-item">
									<div class="thumnail-profile"></div> Lorem
									<button class="badge">초대</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 팀원들의 개인정보 수정 -->
		<div class="modal" id="updataAdminModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						직책수정
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					
					<div id="profile_img">
						<input type="file" name='uploadFile' id="profile_img_upload">
						<button id="profile_img_upload_action">프로필 업로드</button>
						<img src="">
					</div>
					<div class="modal-body">
						<input type="text" class="form-control updatePosition"
							placeholder="직책 입력"> <input id="updateMemberAction"
							type="button" class="btn btn-info" value="수정">
						<div class="modal-scroll">
							<ul class="list-group">

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 팀원용 개인정보 수정 -->
		<div class="modal" id="updataModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						정보수정
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input id="deleteMemberAction" type="button"
							class="btn btn-danger" value="탈퇴">
						<div class="modal-scroll">
							<ul class="list-group">

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 팀장용 팀관리 수정 -->
		<div class="modal" id="updataTeamModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						팀설정
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input type="text" class="form-control updatePosition"
							placeholder="직책 입력"> <input id="updateMemberAction"
							type="button" class="btn btn-info" value="수정">
						<div class="modal-scroll">
							<ul class="list-group">

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 오늘의 할일 생성 모달 -->
		<div class="modal" id="insertTodoListInfoModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						오늘의 할일 생성
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">

						오늘의 할일<input id="todo_title" type="text" class="form-control">
						내용<input id="todo_description" type="text" class="form-control">
						마감날짜<input id="todo_endDate" type="date" class="form-control">
						<input id="member_num" type="hidden" class="form-control" value="${param.member_num}"> 
						<input id="team_num" type="hidden" class="form-control" value="${param.team_num}">
						<input id="insertTeamAction" type="button" class="btn btn-primary" onclick="insertTodoListAction();" value="생성">

					</div>
				</div>
			</div>
		</div>
		<!-- 오늘의 할일 수정 모달 -->
		<div class="modal" id="updateTodoListInfoModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						오늘의 할일 수정
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">

						<input id="updateTodoNum" type="hidden"> 
						오늘의 할일<input id="updateTodoTitle" type="text" class="form-control"> 
						내용<input id="updateTodoDescription" type="text" class="form-control">
						마감날짜<input id="updateTodoEnd" type="date" class="form-control">
						<input id="updateTodoAction" type="button" class="btn btn-info" value="수정"> 
						<input id="deleteTodoAction" type="button" class="btn btn-danger" value="삭제">
					</div>
				</div>
			</div>
		</div>
		
		<!-- 달력 모달 -->
		<!-- calendar  -->
		<!-- Calendar Modal -->
		<div class="modal calendar_modal" id="CalModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						Calendar
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input type="hidden" class="form-control" id="cal_num"
							name="cal_num" value="cal_num"> 일정<br> <input
							type="text" class="form-control" id="title" name="일정" value="">
						일정 시작 시간<input type="date" class="form-control" id="starts"
							name="일정시작시간" value=""> 일정 종료 시간<input type="date"
							class="form-control" id="ends" name="일정 종료 시간" value="">
						하루종일<input type="text" class="form-control" id="allday"
							name="하루종일 true = 1 or false = 0" value=""> <br> <input
							type="button" class="btn btn-success" onclick="newEvent()"
							value="생성" id="saveBtn">
						<div class="modal-scroll">
							<ul class="list-group">

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Calendar End -->
		
		<!-- 채팅방 추가 모달 -->
		<div class="modal" id="insertChatRoomModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						채팅방 생성
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input id="insertChatRoomName" type="text" class="form-control"
							placeholder="채팅방이름">
						<hr>
						<input type="text" id="inviteChatMemberSearchbar"
							class="form-control" placeholder="초대할 멤버 이름 또는 이메일 입력">
						<div class="modal-scroll">
							<ul id="invite-chat-list" class="list-group">
							</ul>
						</div>
						<hr>
						초대멤버
						<div class="modal-scroll">
							<ul id="invite-wait-list" class="list-group">
							</ul>
						</div>
						<input id="createRoomAction" type="button" class="btn btn-primary"
							value="생성">
					</div>
				</div>
			</div>
		</div>
		<!-- 채팅방 추가 모달 끝-->
		
		<!-- 채팅멤버 추가 모달 -->
		<div class="modal" id="inviteMemberModal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						채팅방 초대
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input type="text" id="inviteChatMemberSearchbar2"
							class="form-control" placeholder="초대할 멤버 이름 또는 이메일 입력">
						<div class="modal-scroll">
							<ul id="invite-chat-list2" class="list-group">
							</ul>
						</div>
						<hr>
						초대멤버
						<div class="modal-scroll">
							<ul id="invite-wait-list2" class="list-group">
							</ul>
						</div>
						<input id="createRoomAction2" type="button" class="btn btn-success"
							value="초대">
					</div>
				</div>
			</div>
		</div>
		<!-- 채팅멤버 추가 모달 끝-->
		
		<!-- 게시판 생성 모달창 -->
      <div class="modal" id="boardModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">게시판 등록</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
               		<label>게시판 이름</label> 
                	<input class="form-control" name='board_name' value=''>
              </div>      
              <div class="form-group">
                	<label>게시판 정보</label> 
                	<input class="form-control" name='board_info' value=''>
              </div>
            </div>
            
			<div class="modal-footer">
        		<button id='modalRegisterBtn' type="button" class="btn btn-primary">등록</button>
        		<button id='modalCloseBtn' type="button" class="btn btn-default">취소</button>
       		</div>
	</div>
  </div>
</div><!--  게시판 생성모달 끝-->

		<!-- 투표 생성 모달 -->
	<div class = "modal" id ="insertVoteModal" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 생성
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
						
						투표 제목<input id="vote_name" type="text" class="form-control"> 
						투표 내용1<input id="vote_content1" type="text" class="form-control">
						투표 내용2<input id="vote_content2" type="text" class="form-control">
						투표 내용3<input id="vote_content3" type="text" class="form-control">
						투표 내용4<input id="vote_content4" type="text" class="form-control">
						투표 내용5<input id="vote_content5" type="text" class="form-control">
						<input id="member_num" type="hidden" class="form-control" value="${param.member_num}">
						<input id="team_num" type="hidden" class="form-control" value="${param.team_num}">
 						<input id="insertVoteAction" type="button" class="btn btn-primary" value="투표 생성">
						
					</div>
				</div>
			</div>
	</div>	
	<!-- 투표 생성 모달 끝 -->
	
	<!-- 투표창 확인 모달 -->
	<div class = "modal" id ="voting" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 확인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-result-wrap" style="cursor:pointer">	
						
						
					</div>
				</div>
			</div>
	</div>
	</div>	
	<!-- 투표창 확인 모달 끝 -->
	
	<!-- 투표결과 확인 모달 -->
	<div class = "modal" id ="voteResult" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 결과
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-result-view-wrap" style="cursor:pointer">	
						
						
					</div>
				</div>
			</div>
	</div>	
	</div>
	<!-- 투표결과 확인 모달 끝 -->
	
	
	<!-- 투표결과 멤버확인 모달 끝 -->
	
		<!-- 투표 완료확인 모달 -->
	<div class = "modal" id ="end-list-vote-modal" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 결과
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-end-view-wrap" style="cursor:pointer">	
						
						
					</div>
				</div>
			</div>
	</div>	
	</div>
	<!-- 투표결과 완료확인 모달 끝 -->
	
			<!-- 완료된 투표 확인 모달 -->
	<div class = "modal" id ="end-list-vote-result-modal" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 결과
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-end-result-view-wrap" style="cursor:pointer">	
						
						
					</div>
				</div>
			</div>
	</div>	
	</div>
	<!-- 완료된 투표 확인 모달 끝 -->
	
		<!-- 투표결과 멤버확인 모달 -->
	<div class = "modal" id ="voteResultMember" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						투표 결과
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-result-member-view-wrap" style="cursor:pointer">	
						
						<div class="jo"></div>
						
					</div>
				</div>
			</div>
		</div>	
	</div>
	
	<!--삭제된 오늘의 할일 모달 -->
	<div class = "modal" id ="selectTodoDeleteListModal" tabindex = "-1">
		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						완료된 오늘의 할일
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="vote-modal-body">
					<div class="job-vote-result-member-view-wrap" style="cursor:pointer">	
						<div class="job-todoDeletelist-wrap" style="cursor:pointer">
							
					</div>
				</div>
			</div>
		</div>	
	</div>
	<!--삭제된 오늘의 할일 모달 끝 -->

	</div> <!-- 전체모달 div마지막 -->
		
		
		<!-------- 댓글 Modal --------->
      <div class="modal fade" id="reply-Modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">댓글 작성</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>댓글 내용</label> 
                <input class="form-control" name='reply_contents' value=''>
              </div>      
              <div class="form-group">
                <label>작성자</label> 
                <input class="form-control" type="text"  name='reply_writer' value=<sec:authentication property="principal.users.user_name"/> readonly="readonly">
              </div>
              <div class="form-group">
                <label>작성 시간</label> 
                <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
              </div>
            </div>
            
			<div class="modal-footer">
        		<button id='replyModBtn' type="button" class="btn btn-info">수정</button>
        		<button id='replyRemoveBtn' type="button" class="btn btn-danger">삭제</button>
        		<button id='replyRegisterBtn' type="button" class="btn btn-primary">등록</button>
        		<button id='replyCloseBtn' type="button" class="btn btn-default">닫기</button>
      		</div>
		</div>
	</div>
</div>
		


	
	<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
	<script src="/resources/main/css/sidebar-right.js"></script>
	<script src="/resources/main/css/sidebar-left.js"></script>
	<script src="/resources/members/js/todoList.js"></script>
	<script src="/resources/chat/js/onchat.js"></script>
	<script src="/resources/chat/js/dragable.js"></script>
	<script src="/resources/board/board.js?version=20211206"></script>
	<script src="/resources/post/post.js?version=20211216"></script>
	<script src="/resources/board/reply.js?version=20211217"></script>
	<script src="/resources/members/js/vote.js"></script>
	<script src="/resources/members/js/memberProfile.js"></script>
	<!-- 외부js에 변수 전달 -->
	<input type="hidden" id="userName"
		value="<sec:authentication property="principal.users.user_name"/>">
	<input type="hidden" id="user_name"
		value="<sec:authentication property="principal.users.user_name"/>">

	<input type="hidden" id="userNum"
		value="<sec:authentication property="principal.users.user_num"/>">

	<input type="hidden" id="teamNum" value=${param.team_num }>

	<input type="hidden" id="memberNum" value=${param.member_num }>



<script type="text/javascript">
	
	//security ajax를 사용하면 403에러가 발생하기 때문에 아래와 같은 코드를 작성해야됨 
	var csrfToken = $("meta[name='_csrf']").attr("content");

	$.ajaxPrefilter(function(options, originalOptions, jqXHR){
		if (options['type'].toLowerCase() === "post") {
	    	jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
		}
		});
	
	
	//오늘의 할일 추가 모달 이벤트 
	$(document).on("click","#createToDo" ,function(e){
		e.preventDefault();
		console.log("클릭");
		$("#insertTodoListInfoModal").modal("show");
		updataMemberNum = this.value
	});
	
	
	//로그아웃 클릭시 로그아웃 되도록  
	$(document).on("click","#LogOutAction" ,function(e){
		e.preventDefault();
		console.log("클릭");
		alert("로그아웃되었습니다.")
		$('#logoutForm').submit();
	});
		
	</script>


	<script>
	//멤버리스트와 수정모달
        $(document).ready(function(){
        	//초대할 유저 검색 리스트
        	var searchUserList = null;
        	
        	//현재 팀 넘버
        	var team_num=${param.team_num}; 
        	
        	//로그인한 유저 넘버
        	var user_num=$("#userNum").val();
        	
        	//컨텐츠바디에 현재팀의 멤버리스트 출력
        	function showMemberList(result){
        		str=""
        		console.log("멤버리스트 출력")
        		var teamMaster = result[0].team.user_num;
        		console.log(user_num+"and"+teamMaster)
        		//팀장일때
        		if(user_num==teamMaster){
        			result.forEach(function(item){
	                    if(item.user.user_num==user_num){
	                    	str =`<div class="job-container">
                                <div class="team-profile-image" style="background-image: url('/display?filename=`+item.profile_name+`');"></div>
                                <div class="team-profile-info">
                                    <p class="team-profile-name">`+item.user.user_name+`</p>
                                    <p class="team-profile-email">`+item.user.user_email+`</p>
                                    <p class="team-profile-email">`+item.user.user_phoneNum+`</p>
                                    <p class="team-profile-email">`+item.member_position+`</p>
                                </div>
                                <div class="team-btn">
                                    <button class="updataAdminModal" value="`+item.member_num+`">수정</button>
                                    <button class="updataTeamModal" value="`+item.member_num+`">팀설정</button>
                                </div>
                            </div>`+str;
                         
	                    }else{
	                    	str +=`<div class="job-container">
                                <div class="team-profile-image" style="background-image: url('/display?filename=`+item.profile_name+`');"></div>
                                <div class="team-profile-info">
                                    <p class="team-profile-name">`+item.user.user_name+`</p>
                                    <p class="team-profile-email">`+item.user.user_email+`</p>
                                    <p class="team-profile-email">`+item.user.user_phoneNum+`</p>
                                    <p class="team-profile-email">`+item.member_position+`</p>
                                </div>
                                <div class="team-btn">
                                    <button class="updataAdminModal" value="`+item.member_num+`">수정</button>
                                </div>
                            </div>`;
	                    }
	                    
	          
	                });
	                $(".job-team-body").html(str);
	            //팀원일때
        		}else{
        			result.forEach(function(item){
        				if(item.user.user_num==user_num){
	                    	str =`<div class="job-container">
                                <div class="team-profile-image" style="background-image: url('/display?filename=`+item.profile_name+`');"></div>
                                <div class="team-profile-info">
                                    <p class="team-profile-name">`+item.user.user_name+`</p>
                                    <p class="team-profile-email">`+item.user.user_email+`</p>
                                    <p class="team-profile-email">`+item.user.user_phoneNum+`</p>
                                    <p class="team-profile-email">`+item.member_position+`</p>
                                </div>
                                <div class="team-btn">
                                    <button class="updataModal" value="`+item.member_num+`">수정</button>
                                </div>
                            </div>`+str;
	                    }else{
	                    	str +=`<div class="job-container">
                                <div class="team-profile-image" style="background-image: url('/display?filename=`+item.profile_name+`');"></div>
                                <div class="team-profile-info">
                                    <p class="team-profile-name">`+item.user.user_name+`</p>
                                    <p class="team-profile-email">`+item.user.user_email+`</p>
                                    <p class="team-profile-email">`+item.user.user_phoneNum+`</p>
                                    <p class="team-profile-email">`+item.member_position+`</p>
                                </div>
                            </div>`;
	                    }
	          
	                })
	                $(".job-team-body").html(str);
        		};
            };   
            //현재 팀의 멤버 리스트 재출력
            function reloadMemberList(){
            	$.ajax({
                    url:'/team/'+team_num+'/member',
                    type:'Get',
                    processData:false,
                    contentType:'application/json',
                    dataType:'json',
                    success:function(result){
                        
                        console.log(result);
                        
                        showMemberList(result);

                    }
                });
            };
			
            //초대할 수 있는 유저 리스트 보여줌
            function showUserSearchList(result){
            	str=""
                    result.forEach(function(item){
                        
                        str +=`<li class="list-group-item">
                                        <div class="thumnail-profile"></div>
                                        `+item.user_name+"__"+item.user_email+`<button id="inviteMember" class="badge " value="`+item.user_num+`">초대</button>
                                    </li>`
              
                    })
                    $("#invite-list-group").html(str);
            }    
            
            //초대할 수 있는 유저 리스트를 불러옴
            function showUserSearchListAction(){
            	$.ajax({
                    url:'/team/'+team_num+'/member/withoutmember',
                    type:'Get',
                    processData:false,
                    contentType:'application/json',
                    
                    dataType:'json',
                    success:function(result){
                    	searchUserList= result
                        console.log(result);
                        showUserSearchList(result);
                    }
                });//$.ajax
            }
            
            $("#toggle-key-member").on("click",function(){
            	//처음 페이지 로드 시 멤버 리스트 호출
            	reloadMemberList();
            })
            
            
            //수정하고싶은 멤버의 번호 초기화
            var updataMemberNum=0;
            
            //팀장의 멤버 정보 수정 모달 호출
            $(document).on("click",".updataAdminModal" ,function(e){
            	$("#updataAdminModal").modal("show");
            	updataMemberNum = this.value
            });
            
            //팀원의 멤버 정보 수정 모달 호출
            $(document).on("click",".updataModal" ,function(e){
            	$("#updataModal").modal("show");
            	updataMemberNum = this.value
            });
            
            //팀장의 팀 정보 수정 모달 호출
            $(document).on("click",".updataTeamModal" ,function(e){
            	$("#updataTeamModal").modal("show");
            	updataMemberNum = this.value
            });
            
            //멤버 정보 수정 모달에서 수정엑션
            $("#updateMemberAction").on("click", function(e){
            	console.log({"member_position":$(".updatePosition").val()})
            	var position = $(".updatePosition").val()

            	$.ajax({
                    url:'/team/'+team_num+'/member/'+updataMemberNum,
                    type:'put',
                    
                    contentType:'application/json',
                    data: JSON.stringify({"member_position":position}),
                    dataType: 'json',
                    success:function(result){
                    	alert("수정완료")
                    	$("#updataAdminModal").modal("hide");
                        console.log(result);
                        reloadMemberList();
                    }
                });
            	
            	
            });
            
            $("#updateMemberAction").on("click", function(e){
            	var file = $(this).parent().parent().find("input[name='uploadFile']")[0].files;
            	console.log($(this).parent().parent().find("input[name='uploadFile']")[0].files)
    			$(this).parent().find("input[name='uploadFile']").clone();
    			
    			  console.log( file)
    			  var formData = new FormData();
    			  for(var i = 0; i<file.length; i++){
    				  formData.append("uploadFile", file[i])
    			  }
            	$.ajax({
			        url:'/team/'+team_num+'/member/'+updataMemberNum+'/uploadprofile',
			        type:'Post',
			        processData:false,
			        contentType:false,
			        data:formData,
			        success:function(result){
			        	console.log(result)
			        	console.log("upload succss");
			        	
			        }
		  		});// $.ajax
            });
            
            //초대할 유저검색 모달 호출
            $("#inviteSearch").on("click", function(){
            	showUserSearchListAction();
            });
            
            //멤버 초대 모달에서 유저를 멤버로 초대 
            $(document).on("click","#inviteMember",function(){
            	console.log("초대 실행")
            	$.ajax({
                    url:'/team/'+team_num+'/member/invite',
                    type:'Post',
                    processData:false,
                    contentType:'application/json',
                    data:JSON.stringify({"member_position": "",
                        "team_num": team_num,
                        "user_num": this.value}),
                    dataType:'json',
                    success:function(result){
                        
                        console.log(result);
                        alert("초대완료")
                        searchUserList = result;
                        showUserSearchListAction();
                        
                    }
                });//$.ajax
            	
            });
            
            //멤버초대 모달 닫기 + 현재 팀의 멤버 리스트 재출력
            $("#inviteModalClose").on("click",function(){
            	console.log("모달 닫음")
            	reloadMemberList();
            });
            
            //멤버 초대 모달의 검색바에서 검색어와 일치하는 유저 검색
            $('#inviteUserSearchbar').keyup(function(){
    			var keyword = $(this).val()
    			var str=""
    			searchUserList.forEach(function(user,index){
    				console.log(index);
    				console.log(user);
    				console.log();
    				if(((keyword==user.user_email.substr(0,keyword.length))||(keyword==user.user_name.substr(0,keyword.length)))&& keyword.length!=0){
    					str +=`<li class="list-group-item">
                            <div class="thumnail-profile"></div>
                            `+user.user_name+"__"+user.user_email+`<button id="inviteMember" class="badge " value="`+user.user_num+`">초대</button>
                        </li>`
                        
    				};
    			});
    			
    			$("#invite-list-group").html(str);
    		});
            
            //멤버탈퇴
            $('#deleteMemberAction').on('click', function(){
            	
            	var msg = "팀을 탈퇴하시겠습니까?"

            	var flag = confirm(msg);
				
            	if(flag){
            		$.ajax({
                        url:'/team/'+team_num+'/member/'+updataMemberNum,
                        type:'delete',
                        dataType:'json',
                        success:function(result){
                            console.log(result);
                            alert("탈퇴되었습니다") 
                        }
                    });//$.ajax
            	}	
            });
        });//끝
    </script>
    
    
    
  <!-- 게시판 스크립트 부분 -->
 <script>
$(document).ready(function(){	
	var member_num = ${param.member_num };
	var team_num =$("#teamNum").val();
	var boardUL = $("#board"); //게시판 리스트 들어가는 부분
	var user_num = $("#userNum").val();
	var user_name = $("#user_name").val(); //현재 로그인한 user_name
	
	console.log("유저번호: " + user_num)
	
	//게시판 목록 호출
	showList(); 
	
	function showList(){
		
		listBoard.getListBoard({team_num:team_num}, function(board){ //board.js 호출
			
			console.log("게시판 목록 callback: " +team_num );
			var str ="";
			
			for(var i = 0; i < board.length; i++){
                str +="<a href='"+board[i].board_num+"' class='nav__link-left'>"; //board_num 유지,전달
                str +="<ion-icon name='home-outline' class='nav__icon-left'></ion-icon>";
				str +="<span class='nav__name-left'>"+board[i].board_name+"</span>"; //게시판이름 출력
				str +="</a>"; 
				
			}
			boardUL.html(str); 
		});
	}
	
//==========Modal==========
	//모달창에 입력한 데이터 값 저장
    var boardModal = $("#boardModal");
    var modalInputBoardName = boardModal.find("input[name='board_name']");
    var modalInputBoardInfo = boardModal.find("input[name='board_info']");
    
    var modalRegisterBtn = $("#modalRegisterBtn");
    var modalModBtn = $("#modalModBtn");
 
	//모달창 닫기 버튼
    $("#modalCloseBtn").on("click", function(e){
    	
    	boardModal.modal('hide');
    });

	//게시판 생성 버튼 + 클릭시 모달창을 보여준다.
	 $("#createBoard").on("click", function(e){
		
		console.log("게시판 생성 모달창")
		e.preventDefault(); // a태그 기본이벤트 삭제
		
		boardModal.find("input").val("");
	     /* modalInputReplyDate.closest("div").hide(); */
	      boardModal.find("button[id !='modalCloseBtn']").hide(); //Close버튼이 아니면 숨기기
	      
	     modalRegisterBtn.show();
	     /* modalInputReplyDate.show();*/
	      
		$("#createBoard").modal("show");
		
		}); // end createBoard 
	
	 
		//게시판 생성
		modalRegisterBtn.on("click", function(e){
			
			//모달에 입력받은 값 저장
			var board = {
					board_name: modalInputBoardName.val(),
					board_info: modalInputBoardInfo.val(),
					member_num: member_num
			};
			console.log("게시판 생성!: "+team_num );
			
			listBoard.insertBoard(board,{team_num:team_num},  function(result){ //board.js 호출
				alert("게시판이 생성되었습니다.");
	
				boardModal.modal("hide");
				
				showList(); //생성 후 다시 목록 갱신
			});
		});
		
		//======게시판 데이터 저장=======
		var boardNum = ""; //ok
		var boardName =""; //ok
		var boardInfo =""; //ok
		var pageNum = "";
		var postNum = "";
		
		//게시글 목록 메서드
		function getListPost(cri){
			
			//post.js- getListPost 메서드 호출
			listPost.getListPost(cri, {team_num:team_num, board_num:boardNum}, function(map){ //map으로 리턴받는다.
				
				console.log("게시글 목록 callback!!: " +map.pageMaker.total );
				boardName = map.board.board_name;
				boardInfo = map.board.board_info;
				var str ="";
				var str1="";
				var str4="";
				
				//게시글 기본틀 출력하는 부분
				str1 = `<div class="row" style="margin-top: 60px">
							<div class="col-sm-7" style="margin-left: 450px">
							<h1 class="page-header">`+map.board.board_name+`</h1>
							</div>
							</div>
						<div class="col-sm-7" style="margin-left: 450px">
						  <div class="panel panel-default">
						  <div class="panel-heading">`+map.board.board_info+`
						<button id='regBtn' type="button" class="btn btn-primary btn-xs pull-right">글쓰기</button>
						</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="post-list">
							
							</tbody>
						</table>
						<div class='row'>
						<div class="col-sm-7">
								<select name='type' id='type'>
									<option value=''>--</option>
									<option value='T'>제목</option>
									<option value='C'>내용</option>
									<option value='W'>작성자</option>
								</select> 
								<input type='text' id='keyword' value="" />
								<button class='btn btn-default' id='search'>검색</button>
					</div>
						<div class='pull-right' style="margin-right: 20px">
						<ul class="pagination" id="page">
								
						</ul>
						</div> 
					</div>
					</div>
					</div>`+str1;
				
				//게시글 목록 출력하는 부분
				if(!map.pageMaker.total == 0){ //게시판에 게시글이 존재하지 않으면 실행하지 않는다.
					for(var i = 0; i < map.getListPost.length; i++){
						str +="<tr><td>"+map.getListPost[i].post_num+"</td>";
						str +="<td>";
						str +="<a class='move' href='"+map.getListPost[i].post_num+"'>"+map.getListPost[i].post_title+"<b>["+map.getListPost[i].replycnt+"]</b></a>";	
						str +="</td>";
						str +="<td>"+map.getListPost[i].writer+"</td>";
						str +="<td>"+map.getListPost[i].post_date+"</td>";
						str +="</tr>";	
					}
				}
				
				//게시글 페이지 처리
				var prev = map.pageMaker.startPage -1;
				var next = map.pageMaker.endPage +1;
				
				if(map.pageMaker.prev){
					str4 = `<li class="paginate_button previous"><a href=`+prev+`>이전</a></li>`+str4;
					console.log("prev if문 실행: "+ str4);
				}
			
				//클릭한 페이지 번호 표시하기	
				for(var num = map.pageMaker.startPage; num <= map.pageMaker.endPage; num++){
		
					if(map.pageMaker.cri.pageNum == num){
						console.log("페이지 번호 표시");
						str4 += "<li class='paginate_button active'>"; 
						str4 +=	"<a href='"+num+"''>"+num+"</a>";
			   			str4 +="</li>";
					}else{
						str4 += "<li class='paginate_button'>"; 
						str4 +=	"<a href='"+num+"''>"+num+"</a>";
			   			str4 +="</li>";
					}
				}
				
				if(map.pageMaker.next){
					str4 += "<li class='paginate_button next'><a href='"+next+"'>이후</a></li>";
					console.log("next if문 실행: "+ next);
				}
				
				$(".row").html(str1);
				$("#post-list").html(str);
				$("#page").html(str4);
			});
			
		} //end getListPost 
		
		
		
		//게시판 이름 클릭시 게시글 출력(비동기식 전환)
		$("#board").on("click", "a", function(e){
			
			//클릭한 게시판 번호저장
			boardNum = $(this).attr("href");
			
			//기본 이벤트 삭제
			e.preventDefault();
			
			//페이지 정보
			var cri = {};
			
			//게시글 목록 불러오기
			getListPost(cri);
		});
		
		
		// 검색 시 해당 키워드와 타입으로 리스트를 불러온다.
		$(".row").on("click", "#search", function(e){
				
			var name = document.getElementById('type'); 
			var type = name.options[name.selectedIndex].value; //option type 저장
			var keyword = document.getElementById('keyword').value; //input keyword 저장
			
    		console.log('선택된 옵션 value 값=' + type);
    		console.log('선택된 옵션 keyword 값=' + keyword);
    		
    		//검색종류 선택안하고 검색버튼 클릭 시
    		if(!type){
    			alert("검색 종류를 선택해주세요!");
    			console.log("검색 종류 입력X");
    			return false;
    		}
    		
    		//키워드 선택안하고 검색버튼 클릭 시
    		if(!keyword){
    			alert("키워드를 입력해주세요!");
    			console.log("키워드 입력X");
    			return false;
    		}
    		
    		var cri = {
    				type: type,
    				keyword: keyword
    		}
    		
    		//게시글 목록 불러오기
    		getListPost(cri);
		});
		
		
		//페이지 번호 클릭 시 이벤트 처리
		$(".row").on("click", ".paginate_button a", function(e){
	
			pageNum = $(this).attr("href");
			console.log("페이지 이벤트 적용: "+pageNum);
			
			//기본 이벤트 삭제
			e.preventDefault();
			
			//페이지 정보
			var cri = {
				pageNum: pageNum,
				amount: 10
			};
			
			//게시글 목록 불러오기
			getListPost(cri);
			
		});
		
		
		
		//게시글 상세조회
		$(".row").on("click", ".move", function(e){
			
			//클릭한 게시글 번호 저장
			postNum = $(this).attr("href");
			console.log("리스트에서 상세조회로 전달: " +boardName);
			
			//기본 이벤트 삭제
			e.preventDefault();
			
			//post.js- getPost 메서드 호출
			listPost.getPost({team_num:team_num, board_num:boardNum, post_num:postNum}, function(post){
				console.log("게시글 상세조회 callback: " +post.post_title );
				var str ="";
				var str5 ="";
				
				str = `	<div class="row" style="margin-top: 60px">
					  		<div class="col-sm-7" style="margin-left: 450px">
					   	 	<h1 class="page-header">`+boardName+`</h1>
					  		</div>
							</div>
					     <div class="col-sm-7" style="margin-left: 450px">
				   	 	<div class="panel panel-default">
				      	<div class="panel-heading">`+boardInfo+` </div>
				      	<div class="panel-body">
				          <div class="form-group">
				          <label>글 번호</label> <input class="form-control" name='post_num'
				            value=`+post.post_num+` readonly="readonly">
				        </div>
				        <div class="form-group">
				          <label>제목</label> 
				          <textarea class="form-control" rows="1" name='post_title'
					            readonly="readonly"> `+post.post_title+` </textarea>
				        </div>
				        <div class="form-group">
				          <label>내용</label>
				          <textarea class="form-control" rows="3" name='post_contents'
				            readonly="readonly"> `+post.post_contents+` </textarea>
				        </div>
				        <div class="form-group">
				          <label>작성자</label> <input class="form-control" name='writer'
				            value= `+post.writer+` readonly="readonly">
				        </div>
							<div id='modify'>
							
							</div>
							<br><br><br><br>
							<div class='row'>
							<div class="col-lg-12">
							<div class="panel panel-default">
							<div class="panel-heading">
							<i class="fa fa-comments fa-fw"></i> 댓글
							<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>댓글 쓰기</button>
							</div>      
							<div class="panel-body">
							       <ul class="chat">
							       
							      </ul>
							</div>
							<div class="panel-footer"></div>
							</div>
							</div>
							</div>
						</div>
				    		</div>
				  		</div>`+str;
				  		
				  		if(user_name == post.writer){
				  			str5 = `<button data-oper='modify' class="btn btn-info">수정</button>
				  						<button data-oper='list' class="btn btn-default">목록</button>`+str5;
				  						console.log("이름이 같으니까 수정버튼 보여주기!");
				  		}else{
				  			str5 =`<button data-oper='list' class="btn btn-default">목록</button>`
				  		}
				  		
				  		$(".row").html(str);
				  		$("#modify").html(str5);
				  		getListReply();	//댓글 리스트 호출
			});
		}); // end getPost
		
		
		//---------댓글 리스트 불러오기---------
		function getListReply(){

			replyService.getListReply({pno:postNum}, function(list){ //reply.js 호출
				var str ="";
				console.log("댓글리스트 호출");
				//댓글이 없을 경우
				if(list == null || list.length == 0){
					$(".chat").html("");
					return;
				}
				for (var i = 0, len = list.length || 0; i < len; i++) {
			           str +="<li class='left clearfix' id='replyUpdate' data-reply_num='"+list[i].reply_num+"'>";
			           str +="  <div><div class='header'><strong class='primary-font'>"+list[i].reply_writer+"</strong>"; 
			           str +="    <small class='pull-right text-muted'>"+replyService.replyTime(list[i].reply_date)+"</small></div>";
			           str +="    <p>"+list[i].reply_contents+"</p></div></li>";
			         }
				$(".chat").html(str);
			});
		}//end getListReply
		
			
		//상세조회에서 목록버튼 클릭 시 다시 리스트로 돌아간다.
		$(".row").on("click", "button[data-oper='list']", function(e){
			
			//페이지 번호를 클릭하지 않은채 목록으로 갈때 오류해결
			if(!pageNum){
				var cri = {pageNum:1, amount: 10};
				console.log("페이지번호 없음");
			}else{
				var cri = {pageNum:pageNum, amount: 10};				
			}	
			
			//게시글 목록 불러오기
			getListPost(cri);
		});
		
		
		// '글쓰기' 버튼 클릭 시 작성폼 띄우기
		$(".row").on("click", "#regBtn", function(e){
			var str="";
			console.log("글쓰기 버튼 클릭");
			
			 		str = `<div class="row" style="margin-top: 60px">
							<div class="col-sm-7" style="margin-left: 450px">	
							<h1 class="page-header">`+boardName+`</h1>
							</div>
							</div>
							<div class="col-sm-7" style="margin-left: 450px">
		    				<div class="panel panel-default">
		    				<div class="panel-heading">`+boardInfo+`</div>
		      				<div class="panel-body">
       						<div class="form-group">
         					<label>제목</label> <input class="form-control" id="form-control1" name='post_title'>
       						</div>
       						<div class="form-group">
         					<label>내용</label>
         					<textarea class="form-control" id="form-control2" rows="7" name='post_contents'></textarea>
       						</div>
       						<div class="form-group">
         					<label>작성자</label> <input class="form-control" id="form-control3" type="text" name='writer' value= <sec:authentication property="principal.users.user_name"/> readonly="readonly">
       						</div>
       						<button id='submit' class="btn btn-primary">등록</button>
       						<button id='reset' type="reset" class="btn btn-default">취소</button>
 							</div>
 							</div>
							</div>`+str;
					
					$(".row").html(str);
		 					
		 					
		 	});
		
		
		// 게시글 생성. 작성한 폼 Ajax요청
		$(".row").on("click", "#submit", function(e){
			
			var post_title =  document.getElementById('form-control1').value;
			var post_contents = document.getElementById('form-control2').value;
			var writer = document.getElementById('form-control3').value;
			
			console.log("게시글 생성" + post_title);
			
			var post = {
					post_title: post_title,
					post_contents: post_contents,
					member_num: member_num,
					writer: writer
			};
			
			//post.js-insertPost 호출
			listPost.insertPost(post, {team_num:team_num, board_num:boardNum}, function(result){
				console.log("게시글 생성 callback" + result);
				
				if(result == "success"){
					alert("게시글이 등록되었습니다.");
				}
				
				//페이지 정보
				var cri = {pageNum:1, amount: 10};
				
				//게시글 목록 불어오기
				getListPost(cri);
				
			}); // end insertPost
		}); // end event
		
		
		
		//글쓰기에서 취소버튼 클릭 시 다시 리스트로 돌아간다.
		$(".row").on("click", "#reset", function(e){
				console.log("글쓰기에서 다시 리스트로");
			
			//페이지 번호를 클릭하지 않은채 목록으로 갈때 오류해결
			if(!pageNum){
				var cri = {pageNum:1, amount: 10};
				console.log("페이지번호 없음");
			}else{
				var cri = {pageNum:pageNum, amount: 10};				
			}	
			
			//게시글 목록 불어오기
			getListPost(cri);
			
		}); //end 글쓰기에서 리스트
		
		
		// 상세조회에서 수정버튼 클릭 시 수정폼으로 이동
		$(".row").on("click", "button[data-oper='modify']", function(e){
				console.log("게시글 수정폼으로 이동: " + postNum);
				
				//수정 전 게시글 번호에 해당하는 게시글을 가져와 보여준다.
				listPost.getPost({team_num:team_num, board_num:boardNum, post_num:postNum}, function(post){
					
					var str ="";
					str = `<div class="row" style="margin-top: 60px">
								<div class="col-sm-7" style="margin-left: 450px">
								<h1 class="page-header">`+boardName+`</h1>
								</div>
								</div>
								<div class="col-sm-7" style="margin-left: 450px">
								<div class="panel panel-default">
								<div class="panel-heading">게시글 수정</div>
								<div class="panel-body">
									<div class="form-group">
										<label>글 번호</label> 
										<input class="form-control" name='post_num' value=`+post.post_num+` readonly="readonly">
									</div>
									<div class="form-group">
										<label>제목</label> 
										<textarea class="form-control" id="post_title" rows="1" name='post_contents'>`+post.post_title+`</textarea>
									</div>
									<div class="form-group">
										<label>내용</label>
										<textarea class="form-control"  id="post_contents" rows="3" name='post_contents'>`+post.post_contents+`</textarea>
									</div>
									<div class="form-group">
										<label>작성자</label> 
										<input class="form-control" name='writer' value=<sec:authentication property="principal.users.user_name"/>  readonly="readonly">
									</div>
									<div class="form-group">
										<label>작성일</label> 
										<input class="form-control" name='post_date' value=`+post.post_date+` readonly="readonly">
									</div>
									<button data-oper='modify2' class="btn btn-info">수정</button>
									<button data-oper='remove' class="btn btn-danger">삭제</button>
									<button data-oper='list' class="btn btn-default">취소</button>
							</div>
							</div>
							</div>` +str;
							
							$(".row").html(str);
				});
		}); // end 수정폼이동
		
		
		
		//수정폼에서 수정버튼을 클릭하면 변경된 데이터 Ajax 요청
		$(".row").on("click", "button[data-oper='modify2']", function(e){
		
			if(!confirm("게시글을 수정하시겠습니까?")){
	   			alert("취소되었습니다!");
	   		 	return false;
	   		}
			else {alert("게시글이 수정되었습니다!")};
			
			var post_title = document.getElementById('post_title').value;
			var post_contents = document.getElementById('post_contents').value;
			
			//변경된 input 값 post객체에 담아서 전달
			var post = {
				post_title: post_title,
				post_contents: post_contents
			}
			
			//post.js update Ajax요청
			listPost.updatePost(post,{team_num:team_num, board_num:boardNum, post_num:postNum}, function(result){
				
				console.log("게시글 수정 callback");
				
				//페이지 번호를 클릭하지 않은채 목록으로 갈때 오류해결
				if(!pageNum){
					var cri = {pageNum:1, amount: 10};
					console.log("페이지번호 없음");
				}else{
					var cri = {pageNum:pageNum, amount: 10};				
				}	
				
				//게시글 목록불러오기
				getListPost(cri);
				
			});//updatePost
		}); //end update
		
		
		
		//수정폼에서 '삭제' 버튼을 클릭하면 delete 요청
		$(".row").on("click", "button[data-oper='remove']", function(e){
		
			if(!confirm("정말 게시글을 삭제하시겠습니까?")){
	   			alert("취소되었습니다!");
	   		 	return false;
	   		}
			else {alert("게시글이 삭제되었습니다!")};
			
			//post.js delete Ajax요청
			listPost.deletePost({team_num:team_num, board_num:boardNum, post_num:postNum}, function(result){	
				
				//페이지 번호를 클릭하지 않은채 목록으로 갈때 오류해결
				if(!pageNum){
					var cri = {pageNum:1, amount: 10};
					console.log("페이지번호 없음");
				}else{
					var cri = {pageNum:pageNum, amount: 10};				
				}	
				
				//게시글 목록불러오기
				getListPost(cri);
				
			});//end deletePost
		}); //end delete
		
	
		//--------------게시글 댓글 스크립트-------------
		var replyModal = $("#reply-Modal");
		var modalInputReply = replyModal.find("input[name='reply_contents']");
		var modalInputReplyer = replyModal.find("input[name='reply_writer']");
		var modalInputReplyDate = replyModal.find("input[name='replyDate']");

		var replyModBtn = $("#replyModBtn"); //수정버튼
		var replyRemoveBtn = $("#replyRemoveBtn");//삭제버튼
		var replyRegisterBtn = $("#replyRegisterBtn");//등록버튼
		
		//댓글 모달 닫기 버튼
		$("#replyCloseBtn").on("click", function(e){
			replyModal.modal('hide');	
		});

		//댓글 등록 버튼 클릭 시 모달 show
		$(".row").on("click", "#addReplyBtn", function(e){
			console.log("댓글 생성 모달창");
			
			modalInputReplyDate.closest("div").hide();
			replyModal.find("button[id !='replyCloseBtn']").hide();
			replyModal.find("input[name !='reply_writer']").val(""); //입력항목 비우고 
			replyModal.find("input[name ='reply_writer']").val(user_name);
			replyRegisterBtn.show();
			
			replyModal.modal("show");
			getListReply();
		});
		
		//댓글 입력한 데이터 등록
		replyRegisterBtn.on("click", function(e){
			console.log("댓글 등록");
			var reply = {
					reply_contents: modalInputReply.val(),
					member_num: member_num,
					post_num: postNum,
					reply_writer : modalInputReplyer.val()
			};
			
			replyService.insertReply(reply, function(result){ //reply.js 호출
				
				alert("댓글이 등록되었습니다!");
				replyModal.find("input").val(""); //입력항목 비우고 
				replyModal.modal("hide");	//모달창 닫기
				getListReply(); //댓글등록 후 목록 갱신 
				});
			}); 
		
		
		//동적으로 생성된 댓글 이벤트 위임, 특정댓글 보기
		$(".row").on("click", "#replyUpdate", function(){
			
			var reply_num = $(this).data("reply_num");
			console.log("댓글 이벤트 위임" +reply_num);
			
			//reply.js 호출
			replyService.getReply(reply_num, function(reply){  //callback함수
				
				var reply_writer = reply.reply_writer; //유저,댓글 작성자 비교
				
				modalInputReply.val(reply.reply_contents);
				modalInputReplyer.val(reply.reply_writer);
				modalInputReplyDate.val(replyService.replyTime(reply.reply_date)).attr("readonly", "readonly");
				replyModal.data("reply_num", reply.reply_num);
				
				replyModal.find("button[id != 'replyCloseBtn']").hide();
				
				console.log("댓글 작성자 비교: " + reply_writer );
				console.log("유저  비교: " + user_name );
				
				replyModBtn.show(); //수정버튼 활성화 
				replyRemoveBtn.show();//삭제버튼 활성화
				
				//로그인한 유저와 댓글 작성자가 같으면 모달 보여주기
				if(reply_writer == user_name){
				replyModal.modal("show");
				}
			});
		});
		
		//댓글 삭제 
	   	replyRemoveBtn.on("click", function (e){
	   		
	   		if(!confirm("정말 삭제하시겠습니까?")){
	   			alert("취소되었습니다!")
	   			replyModal.modal("hide");
	   		}
	   	  var reply_num = replyModal.data("reply_num");
	   	  	
	   		//reply.js 호출
	   	 	 replyService.deleteReply(reply_num, function(result){
	   		  
	   	    alert("댓글이 삭제되었습니다!");
	   	   	replyModal.modal("hide");
	   	   	
	   	 	getListReply(); //댓글 삭제 후 댓글목록 갱신
	   	 	
	   	 	console.log("댓글 삭제");
	   	  });
	 });
		
		//특정 댓글 수정
		replyModBtn.on("click", function(){
			
			var reply = {reply_num: replyModal.data("reply_num"), reply_contents: modalInputReply.val() };
			console.log("댓글 수정내용: "+modalInputReply.val());
				
				//reply.js 호출
				replyService.updateReply(reply, function(result){
				
				if(!confirm("정말로 수정하시겠습니까?")){
		   			alert("댓글이 수정되었습니다!")
		   			replyModal.modal("hide");
		   		}
			 	
				alert("댓글이 수정되었습니다!");
				replyModal.modal("hide");
				
				getListReply(); //댓글 수정 후 댓글목록 갱신
				console.log("댓글 수정");
			});
		});


		//사용자 이미지 관련
		$.ajax({
				url:"/team/"+team_num+"/member/"+user_num,
		        type:'Get',
		        dataType:'json',
		        success:function(result){
		        	console.log("result결과입니다 : "+ result);
		        	showProfile(result);
		        }
			})
		
			//사용자 이미지 관련
			function showProfile(result){
				console.log("실행");
					if(result.profile_name!=null){
						console.log("실행2");
						$('.nav-profile-image-left').css('background-image', "url('/display?filename="+result.profile_name+"')"); 
						
					}
				console.log("실행3");
			}//end showProfile

}); //end document.ready1
</script>


<!-- Calendar Script -->
<script>
					console.log("캘린더 불러오기");      
     document.addEventListener("DOMContentLoaded", function() {
    			var calendarEl = document.getElementById("calendar");
    			
    			var calendar = new FullCalendar.Calendar(calendarEl, {
    				headerToolbar : {
    					left : "",
    					center : "title",
    					right : "dayGridMonth,timeGridWeek,timeGridDay",
    				},
    				locale : "ko",
    				timeZone : "local",
    				navLinks : true, 
    				selectable : true,
    				selectMirror : true,
    				select : function() {
    					// Display the modal.
    					// You could fill in the start and end fields based on the parameters
    					$('#CalModal').modal('show');
    					
    					
    						var title = prompt('Event Title:');
    						var start = prompt('Event startDate:');
    						var end = prompt('Event endDate:');
    						var allDay = prompt('Event allDay:');
    						if (title) {
    							calendar.addEvent({
    								title: title,
    								start: start,
    								end: end,
    								allDay: allDay
    							})
    						}
    							calendar.unselect()
    							console.log("화면 이벤트 출력 성공");
    						

    				},//select end
    				events:[ 
    					{
    						title : "채팅기능 개발일정",
    						start : "2021-12-03",
    						end 	: "2021-12-06"
    					},
    					{
    						title : "이벤트 추가",
    						start : "2021-12-03",
    						end 	: "2021-12-08"
    					},
    					{
    						title : "ToDo 리스트 개발",
    						start : "2021-12-17",
    						end 	: "2021-12-25"
    					},
    					{
    						title : "댓글 추가기능 개발",
    						start : "2021-12-04",
    						end 	: "2021-12-11"
    					},
    					{
    						title : "JSP 비동기화 작업",
    						start : "2021-12-03",
    						end 	: "2021-12-09				"
    					},
    					{
    						title : "MVC2 작업중",
    						start : "2021-12-03",
    						end 	: "2021-12-10"
    					}
    					
    				],
    				eventClick : function(arg) {
    					console.log("일정등록 이벤트 삭제");
    					console.log(arg.events);
    					if (confirm("일정을 삭제하시겠습니까?")) {
    						arg.event.remove();
    					}
    				},
    				editable : true,
    				dayMaxEvents : true,
    			});
    			calendar.render();
    		});
     

    		//일정 추가 밸류값
    		function newEvent() {
    			var calTitle = document.getElementById('title').value;
    			var calStarts = document.getElementById('starts').value;
    			var calEnds = document.getElementById('ends').value;
    			var calallday = document.getElementById('allday').value;
    			
    			//date format
    			calStarts = moment(starts).format('YYYY-MM-DD'); //date 날짜형식
    			calEnds = moment(ends).format('YYYY-MM-DD'); //date 날짜형식

    			//일정 추가 Ajax
    			$.ajax({
    				url : "/calendar/new",
    				type : "post",
    				dataType : "json",
    				contentType : "application/json",
    				data : JSON.stringify({
    					"title" : calTitle,
    					"starts" : calStarts,
    					"ends" : calEnds,
    					"allday" : calallday
    				}),
    				success : function(data) {
    					alert("등록 완료");
    					$('#CalModal').modal('hide');
    					console.log(calTitle);
    					console.log(calStarts);
    					console.log(calEnds);
    					console.log(calallday);
    				},
    				error : function() {
    					alert("등록되었습니다.");
    					//$('.modal').modal('hide');
    					console.log(calTitle);
    					console.log(calStarts);
    					console.log(calEnds);
    					console.log(calallday);
    				}
    			});
    		}; //newEvent end
</script>
<!-- Calendar Script End -->
<style>
#selectTodoDeleteListModal .modal-body{
height: 400px;
overflow-y : scroll;
}

.vote-modal-body{
height : 400px;
overflow-y : scroll;
}

.chat {
  margin: 0;
  padding: 0;
  list-style: none;
}
.chat li {
  margin-bottom: 10px;
  padding-bottom: 5px;
  border-bottom: 1px dotted #999999;
}
.chat li.left .chat-body {
  margin-left: 60px;
}
.chat li.right .chat-body {
  margin-right: 60px;
}
.chat li .chat-body p {
  margin: 0;
}
.panel .slidedown .glyphicon,
.chat .glyphicon {
  margin-right: 5px;
}
.chat-panel .panel-body {
  height: 350px;
  overflow-y: scroll;
}
</style>

</body>
</html>