<%@page import="com.todayTable.customerCenter.model.vo.Report"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Report r = (Report)request.getAttribute("r");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
	body {
		font-family: "Roboto", sans-serif;
	}

	#reportWrap{
		background-color: rgb(240, 225, 210);
		color: white;
		font-weight: 900;
	}
	table{
		text-align: center;
        width: 90%;
        height: auto;
        background-color: #e9ecef;;
	}

</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper" align="center">
            <br><br>
            <div id="reportWrap" align="center">
				<br>
				<h1 class="foot" align="center"><b>신고관리</b></h1>
				<hr>
				<p>- 신고받은 게시물 확인 및 신고 대상자 제재 처리</p>
				<br>
			</div>
            <br>
            
            <table>
                <thead>
                    <tr>
                        <th colspan="2"><%= r.getRepClsfc() %></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="50%" align="left"><b>신고자:</b> <%= r.getMemId() %></td>
                        <td width="50%" align="right"><b>신고일:</b> <%= r.getRepDate() %></td>
                    </tr>
                    <tr>
                        <th colspan="2" style="text-align: left;">신고내용</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                        	<textarea rows="10" style="width:70%; resize:none;" >
 								<%= r.getRepContents() %>
 								

 								<%= r.getRepUrl() %>                   
                       		</textarea>
                   		</td>
                    </tr>
                </tbody>
            </table>
		</div>
		
	</div>
</body>
</html>