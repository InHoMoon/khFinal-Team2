<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../../layout/header.jsp" />

<style type="text/css">
.info span { padding-right: 15px; }

.all {
	width: auto;
    padding: 57px 34px 0px;
}

.post_info{
	font-size: 13px;
    color: #a7a7a7;
}

.text_bar{
	margin: 0 9px 0 5px;
	display: inline-block;
    width: 1px;
    height: 9px;
    background-color: #ebebeb;
}

.title_area {
	margin: 0 0 30px;
    padding-bottom: 15px;
    border-bottom: 1px solid #efefef;
}

.view_area{
	color: #5c5c5c;
    word-wrap: break-word;
}

.comm_box{
	padding: 20px;
    border-top: 1px solid #e8e8e8;
    background-color: #fafafa;
    position: relative;
}

.write_area{
	position: relative;
    padding: 7px 12px;
    border: 1px solid #e8e8e8;
    background-color: #fff;
}

.like_list{
	padding: 35px 0;
    position: relative;
    clear: both;
}

.btnList{
    width: 80px;
    height: 32px;
    padding: 0;
    border: 1px solid rgba(185,185,185,.5);
    border-radius: 16px;
    line-height: 30px;
    color: inherit;
    box-sizing: border-box;
    background: none;
}

.like{
	float: left;
    padding: 0 9px;
    border-radius: 16px;
    border: 1px solid #959595;
    border-color: rgba(185,185,185,0.5);
    width: 80px;
    height: 32px;
    margin-right: 10px;
}

.heart {
	width: 20px;
    height: 20px;
    position: relative;
    left: 18px;
    top: 4px;
}


#comm{
	width: 100%;
    height: 70px;
    border: none;
    font-size: 13px;
    resize: none;
    box-sizing: border-box;
}

.comm_btn{ float: right; margin-top: 10px; }

#commBtn{
	float: left;
    width: 71px;
    height: 36px;
    border-radius: 18px;
    font-size: 13px;
    border: none;
    background-color: #6bacce;
    color: #fff;
}
</style>


<script type="text/javascript">
$(document).ready(function(){
	$(".like").click(function(){
		console.log("좋아요 클릭");
// 		$(".heart").attr("src", "https://cdn-icons-png.flaticon.com/512/7757/7757506.png");
		
		if ( $(".heart").attr("src") == "https://cdn-icons-png.flaticon.com/512/8719/8719659.png")  {
			$(".heart").attr("src", "https://cdn-icons-png.flaticon.com/512/7757/7757506.png");
			console.log("좋아요 클릭");
		} else {
			$(".heart").attr("src", "https://cdn-icons-png.flaticon.com/512/8719/8719659.png"); 
			console.log("좋아요 취소");
		}
	})
	
	$(".btnList").click(function() {
		location.href = "/community/free/list"
	})
})
</script>

<div class="all">

	<div class="title_area">
	
			<h3>${fboard.title }</h3>
			
			<span class="post_info">${fboard.userid }</span>
			<span class="text_bar"></span>
			<span class="post_info"><fmt:formatDate value="${fboard.writeDate }" pattern="yyyy.MM.dd HH:mm"/></span>
			<span class="text_bar"></span>
			<span class="post_info">조회 ${fboard.hit }</span>
		
	</div> <!-- title_area -->
	
	<div class="view_area">
	
		<div class="view">
				<p>${fboard.content }</p>
		</div>
	</div> <!-- view_area -->
		
	<div class="like_list">
	
		<div class="like">
			<img src="https://cdn-icons-png.flaticon.com/512/8719/8719659.png" class="heart">
<!-- 				<span class="heart"><img src="https://cdn-icons-png.flaticon.com/512/7757/7757506.png"></span> -->
		</div>
		
		<div class="list">
			<button class="btnList">목록</button>
		</div>
		
	</div> <!-- like_list -->
		
	<div class="file-area">
		<a href="/community/free/download?fFileno=${fboardFile.fFileno }">${fboardFile.originName }</a>
	</div>
	
<div class="text-center">
	<button id="btnList" class="btn btn-default">목록</button>
	
	<c:if test="${userid eq fboard.userid }">
		<button id="btnUpdate" class="btn btn-primary">수정</button>
		<button id="btnDelete" class="btn btn-danger">삭제</button>
	</c:if>
</div><!-- text-center -->
		
	
</div> <!-- all -->



<!-- 댓글입력창 -->
<div class="comm_area" style="padding: 0 34px 0;">
	<div class="comm_box">
		<div class="writer_info" style="margin-bottom: 5px;">
			<span>${userid }</span>
		</div>
		
		<div class="write_area">
			<textarea id="comm" name="comm" placeholder="댓글을 입력해주세요"></textarea>
		</div>
		
		<div class="comm_btn">
			<button id="commBtn">등록</button>
		</div>
	</div> <!-- comm_box -->
</div> <!-- comm_area -->

<c:import url="../../layout/footer.jsp" />