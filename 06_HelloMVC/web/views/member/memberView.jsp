<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Member m=(Member)request.getAttribute("member");
	//session.getAttribute("loginMember");
	String hobby=m.getHobby();
	String[] checkhobby=new String[5];
	if(hobby!=null){
		for(String c : hobby.split(",")){
			switch(c){
				case "운동" : checkhobby[0]="checked";break;
				case "등산" : checkhobby[1]="checked";break;
				case "독서" : checkhobby[2]="checked";break;
				case "게임" : checkhobby[3]="checked";break;
				case "여행" : checkhobby[4]="checked";break;
			}
		}
	}
			


%>
<%@ include file="/views/common/header.jsp"%>
 <section id=enroll-container>
		<h2>회원 정보 수정</h2>
		<form id="memberFrm" method="post" >
			<table>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="userId" id="userId_" value="<%=m.getUserId()%>" readonly>
					</td>
				</tr>
<%-- 				<tr>
					<th>패스워드</th>
					<td>
						<input type="password" name="password" id="password_" value="<%=m.getPassword()%>" required>
					</td>
				</tr>
				<tr>
					<th>패스워드확인</th>
					<td>	
						<input type="password" id="password_2" value="<%=m.getPassword()%>" required><br>
					</td>
				</tr>   --%>
				<tr>
					<th>이름</th>
					<td>	
					<input type="text"  name="userName" id="userName" value="<%=m.getUserName()%>" required><br>
					</td>
				</tr>
				<tr>
					<th>나이</th>
					<td>	
					<input type="number" name="age" id="age" value="<%=m.getAge()%>"><br>
					</td>
				</tr> 
				<tr>
					<th>이메일</th>
					<td>	
						<input type="email" placeholder="abc@xyz.com" name="email" id="email" value="<%=m.getEmail()%>"><br>
					</td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td>	
						<input type="tel" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" value="<%=m.getPhone()%>" required><br>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>	
						<input type="text" placeholder="" name="address" id="address" value="<%=m.getAddress()%>" ><br>
					</td>
				</tr>
				<tr>
					<th>성별 </th>
					<td>
							<input type="radio" name="gender" id="gender0" value="M" <%=m.getGender().equals("M")?"checked":"" %>>
							<label for="gender0">남</label>
							<input type="radio" name="gender" id="gender1" value="F" <%=m.getGender().equals("F")?"checked":"" %>>
							<label for="gender1">여</label>
							
							<%-- <%if(m.getGender().equals("M")){ %>
								<input type="radio" name="gender" id="gender0" value="M" checked>
								<label for="gender0">남</label>
								<input type="radio" name="gender" id="gender1" value="F" >
								<label for="gender1">여</label>
							<%} else{%>
								<input type="radio" name="gender" id="gender0" value="M" >
								<label for="gender0">남</label>
								<input type="radio" name="gender" id="gender1" value="F" checked>
								<label for="gender1">여</label>
							<%} %> --%>
					</td>
				</tr>
				<tr>
					<th>취미 </th>
					<td>
						<input type="checkbox" name="hobby" id="hobby0" value="운동" <%=checkhobby[0] %> ><label for="hobby0">운동</label>
						<input type="checkbox" name="hobby" id="hobby1" value="등산" <%=checkhobby[1] %>><label for="hobby1">등산</label>
						<input type="checkbox" name="hobby" id="hobby2" value="독서" <%=checkhobby[2] %>><label for="hobby2">독서</label><br />
						<input type="checkbox" name="hobby" id="hobby3" value="게임" <%=checkhobby[3] %>><label for="hobby3">게임</label>
						<input type="checkbox" name="hobby" id="hobby4" value="여행" <%=checkhobby[4] %>><label for="hobby4">여행</label><br />
					</td>
				</tr>
			</table>
			<input type="button" onclick="fn_updatemember();" value="정보수정"/>
			<input type="button" onclick="fn_updatePassword();" value="비밀번호변경"/>
			<input type="button" onclick="" value="탈퇴"/>
		</form>
	</section>
	<script>
		function fn_updatemember(){
			//form을 전송!\
			$("#memberFrm").attr("action","<%=request.getContextPath()%>/memberUpdate").submit();
		}
		//새창을 열어서 비밀번호 변경하는 로직을 구성하기
		//창크기 400px,210px 요청주소 : /member/updatePassword
		function fn_updatePassword(){
			//윈도창 열기!
			//1. 주소
			const url="<%=request.getContextPath()%>/member/updatePassword?userId=<%=m.getUserId()%>";
			const status="width=400px,height=210px,top=200px,left=500px";
			open(url,"",status);
			
		}
	</script>
	
	
	
	
	
<%@ include file="/views/common/footer.jsp"%>











