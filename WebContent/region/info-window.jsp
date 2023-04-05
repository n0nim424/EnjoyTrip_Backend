<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="width:350px; height: 170px;">
	<div style="height: 20%;" class="row mt-1 ms-2 fw-bold">
		${data.title}
	</div>
	<div style="height: 80%;" class="row m-1 d-flex">
		<div style="width: 40%;">
			<img style="width: 100%; height; 100px;" src="${data.first_image}"/>
		</div>
		<div style="width: 60%;">
			<p style="font-size: 10pt; margin 1px" class="fw-bold">주소</p>
			<p style="font-size: 10pt; margin 1px" class="fw-bold">${data.addr1} + "\n" + ${data.addr2}</p>
		</div>
	</div>
	<div>
	</div>
</div>