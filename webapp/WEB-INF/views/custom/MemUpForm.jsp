<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/member.css">
<script src="/jquery/jquery-3.7.0.min.js"></script>
<script src="/script/member.js"></script>
<script src="/script/zipCheck.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="member">
	<form action="memUpProc" name="topForm1" method="post">
		<table>
			<thead>
				<tr>
					<th colspan="2">정보수정</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="col1">아이디</td>
					<td class="col2">
						<input type="text" name="mem_id" value="${mdto.mem_id}"></td>
				</tr>
				<tr>
					<td class="col1">패스워드</td>
					<td class="col2">
						<input type="password" id="check1" name="m_passwd" class="chk1" title="패스워드" placeholder="패스워드를 입력하세요." value="${mdto.m_passwd}">
						<font id="check" size="2" color="green"></font></td>
				</tr>
				<tr>
					<td class="col1">패스워드확인</td>
					<td class="col2">
						<input type="password" id="check2" name="m_repasswd" class="chk1" title="패스워드" placeholder="패스워드를 확인하세요." value="${mdto.m_passwd}">
					</td>
				</tr>
				<tr>
					<td class="col1">이름</td>
					<td class="col2">
						${mdto.m_name}</td>
				</tr>
				<tr>
					<td class="col1">이메일</td>
					<td class="col2">
						<input type="text" name="m_email" placeholder="aaa@himedia.co.kr" value="${mdto.m_email}">
					</td>
				</tr>
				<tr>
					<td class="col1">전화번호</td>
					<td class="col2">
						<input type="text" name="m_phone" class="chk1" title="전화번호" placeholder="전화번호(010-1111-1234)" value="${mdto.m_phone}">
					</td>
				</tr>
				<tr>
					<td class="col1">우편번호</td>
					<td class="col2">
						<input type="text" name="zipcode" id="sample6_postcode" class="chk1" readonly="readonly" placeholder="우편번호를 검색하세요." value="${mdto.zipcode}">
						<button type="button" onclick="zipCheck()">우편번호찾기</button>
					</td>
				</tr>
				<tr>
					<td class="col1">주소</td>
					<td class="col2">
						<input type="text" name="address" class="chk1" title="주소" readonly="readonly" id="sample6_address" placeholder="주소" value="${mdto.address}"><br>
						<input type="text" name="address2" class="chk1" title="상세주소" id="sample6_detailAddress" placeholder="상세주소" value="${mdto.address2}">
						<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					</td>
				</tr>
				<tr>
					<td class="col11">직업</td>
					<td class="col22">
						<select name="m_job" id="m_job">
							<option value="">선택하세요.</option>
							<option value="회사원">회사원</option>
							<option value="기술사">기술사</option>
							<option value="연구전문직">연구전문직</option>
							<option value="학생">학생</option>
							<option value="교수">교수</option>
							<option value="일반자영업">일반자영업</option>
							<option value="공무원">공무원</option>
							<option value="의료인">의료인</option>
							<option value="전문직">전문직(법률,회계)</option>
							<option value="종교,언론,예술인">종교,언론,예술인</option>
							<option value="농,축,수산,광업인">농,축,수산,광업인</option>
							<option value="주부">주부</option>
							<option value="무직">무직</option>
							<option value="기타">기타</option>
						</select>
						<script type="text/javascript">
							$("#m_job").val('${mdto.m_job}')
						</script>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2" class="tableBtn">
						<button id="btn2" class="submit1" type="button">회원정보수정</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
</body>
</html>