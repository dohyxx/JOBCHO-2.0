console.log("post.js 호출");


var listPost = (function() {
	

	//게시글 전체 목록 가져오기
	function getListPost(param,callback, error) {
		console.log("게시글 목록 가져오기: "+ param.board_num); //21
	
		$.ajax({
			type : 'get', 
			url : "/team/" +param.team_num+ "/board/" +param.board_num+ "/post", //Controller 호출
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) { // Ajax 실행결과에 따라 Callback 함수 실행
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	//게시글 상세조회
	function getPost(param,callback, error) {
		console.log("게시글 상세조회: "+ param.post_num); 
	
		$.ajax({
			type : 'get', 
			url : "/team/" +param.team_num+ "/board/" +param.board_num+ "/post/" +param.post_num, //Controller 호출
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) { // Ajax 실행결과에 따라 Callback 함수 실행
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	
	
	
	
	
	
	
	
	//게시판 생성
	function insertBoard(board, param, callback, error) {
		var team_num = param.team_num;
		console.log("게시판 생성: "+team_num );
		
		if(!board.board_name){ //게시판 이름 작성 안했을 시
			alert("게시판 이름을 작성해주세요.");
			return false;
		}
		if(!board.board_info){//게시판 정보 작성 안했을 시
			alert("게시판 정보를 작성해주세요.");
			return false;
		}
		
		$.ajax({
			type : 'post',
			url : "/team/"+ team_num +"/board/new", //team번호 전달
			data : JSON.stringify(board), //board객체 전달
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	
	
	
	//게시판 삭제
	function deleteBoard(param, callback, error) {
		
		$.ajax({
			type : 'delete',
			url : '/team/' + param.team_num+'/board/' +param.board_num,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	
	
	
	
	

	return {  //객체로 리턴 (변수에 함수를 넣음)
		
		getListPost : getListPost,
		getPost : getPost
	};

})(); //end listPost



