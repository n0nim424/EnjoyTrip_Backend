let areaUrl = "/enjoytrip_backend_S15_team/region?action=get-sido";
fetch(areaUrl)
  .then((response) => response.json())
  .then((data) => makeArea(data));

function makeArea(data) {
  let sel = document.getElementById("search-area");
  data.forEach(function (area, i) {
	
    let opt = document.createElement("option");
    opt.setAttribute("value", area.sidoCode);
    opt.appendChild(document.createTextNode(area.sidoName));
    sel.appendChild(opt);
  });
}

document.getElementById("search-area").onchange = function () {
  let sel = document.getElementById("search-area");
  let areaCode = sel.value;
  let sigunguUrl = "/enjoytrip_backend_S15_team/region?action=get-gugun&sido=" + areaCode;
  
  let selSigungu = document.getElementById("search-sigungu");
  selSigungu.replaceChildren();
  let init = document.createElement("option");
  init.setAttribute("value", 0);
  init.appendChild(document.createTextNode("시/군/구"));
  selSigungu.appendChild(init);

  fetch(sigunguUrl)
    .then((response) => response.json())
    .then((data) => {
    	console.log(data);
      data.forEach((sigungu) => {
        let opt = document.createElement("option");
        opt.setAttribute("value", sigungu.gugunCode);
        opt.appendChild(document.createTextNode(sigungu.gugunName));
        selSigungu.appendChild(opt);
      });
    });
};

function makeMap(data) {
  console.log(data);
  let startX = data[0].latitude;
  let startY = data[0].longitude;

  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
    mapOption = {
	  center: new kakao.maps.LatLng(Number(startX), Number(startY)), // 지도의
																		// 중심좌표.
      level: 7, // 지도의 확대 레벨
    };

  // 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
  map = new kakao.maps.Map(mapContainer, mapOption);

  for (var i = 0; i < data.length; i++) {
	// console.log(data[i]);
    let mapX = data[i].latitude;
    let mapY = data[i].longitude;
    let latlng = new kakao.maps.LatLng(Number(mapX), Number(mapY));
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
      map: map, // 마커를 표시할 지도
      position: latlng, // 마커를 표시할 위치
      title: data[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
    });

    // 마커에 표시할 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
      content: 
    	  "<input type=\"hidden\" name=\"data\" value=" + data[i] + "/>" +
    	  "<div style=\"width:350px; height: 170px\">" +
            "<div style=\"height:20%;\" class=\"row mt-1 ms-2 fw-bold\">" +
                data[i].title +
            "</div>" +
            "<div style=\"height:80%;\" class=\"row m-1 d-flex\">" +
                "<div style=\"width:40%;\">" +
                    "<img style=\"width:100%; height:100px;\" src=" + data[i].first_image + " />" +
                "</div>" +
                "<div style=\"width:60%;\">" +
                    "<p style=\"font-size: 10pt; margin: 1px\" class=\"fw-bold\">주소</p>" +
                    "<p style=\"font-size: 10pt; margin: 1px\">" +
                      data[i].addr1 + "\n" + data[i].addr2 +
                    "</p>" +
                "</div>" +
            "</div>" +
        "</div>", // 인포윈도우에 표시할 내용
        removable: true,
    });
    
    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, "mouseover", makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, "mouseout", makeOutListener(infowindow));
    kakao.maps.event.addListener(marker, "click", addTourPlan(data[i]));
  }
}

function addTourPlan(data){
	return function(){
		let mlist = document.getElementById("my-list");
		
	    let li = document.createElement("li");
	    let content = `<div class="m1" style="width: 100%;">
	    					<hr/>
		    				<h5>${data.title}</h5>
		    				<hr/>
		    				<div>
		        				<img style="width: 50%;" src="${data.first_image}" onerror="this.src='https://cdn-icons-png.flaticon.com/512/4944/4944051.png'" />
		        				<br/>
		        				<span>주소 : ${data.addr1}</span> <span>${data.addr2}</span>
		    				</div>
	    				</div>`
	    li.innerHTML = content;
	    mlist.appendChild(li);
	}
}

//인포윈도우를 표시하는 클로저를 만드는 함수입니다
function makeOverListener(map, marker, infowindow) {
  return function () {
    infowindow.open(map, marker);
  };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다
function makeOutListener(infowindow) {
  return function () {
    infowindow.close();
  };
}


// 지역, 관광지 유형, 검색어 입력 후 검색 버튼 클릭.
document.getElementById("btn-search").addEventListener("click", function (event) {
  event.preventDefault();
  let form = document.getElementById("search-form");
  let areaCode = document.getElementById("search-area").value;
  let sigunguCode = document.getElementById("search-sigungu").value;
  let contentTypeId = document.getElementById("search-content-id").value;

  let searchUrl = "/enjoytrip_backend_S15_team/region?action=search&sido="
	  				+ areaCode + "&gugun=" + sigunguCode + "&content_type_id=" + contentTypeId;  
  fetch(searchUrl)
    .then((response) => response.json())
    .then((data) => {
	  try {
	    makeMap(data);
	  } catch (e) {
	    alert("검색 결과가 없습니다.");
	    console.log(e);
	  }
    });

  return false	;
});


