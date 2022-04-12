//tag는 넣으면 안됨.

$('document').ready(function() {
		
		/*
			최초 실행시 show함수 호출
		*/
		show("20220101");
		
		//조회버튼을 클릭했을 경우 실행.
		$('#search').click(function() {
			var date = $('#date').val();
			if($('#date').val() == ""){
				alert("날짜를 입력해주세요");
				$('#date').focus();
			} else{
				//alert($('#date').val());
				//show($('#date').val());
				show(date);
				
			}
		});
		
		/*
		$.getJSON("url",function(json_data){json_data를 출력하는 형식});
		*/
		//이걸 위의 click 이벤트와 연결하는 방법.
		//1) 아래 부분을 저 else 안에 넣기
		//2) 각각의 기능을 맡은 function을 저장하고 필요할 때마다 호출해서 사용.
		
		function show(date){
		//var date = "20220101";
		var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" 
				+ date;
		$.getJSON(url,
				function(kobis){ //kobis 역할을 data가 해주는 것임.
					//alert(data);
					//alert(kobis.boxOfficeResult.boxofficeType);	
					//이 kobis는 local 변수라서 여기에서 해야할 일 진행을 해야.
								
					var output = "<div id='result'>";
					output += "<h3>["+ kobis.boxOfficeResult.showRange +" " + kobis.boxOfficeResult.boxofficeType +"]</h3>";
					output += "<table border=1>";
					output += "<tr>";
					output += "<th>순위</th><th>제목</th><th>개봉일</th><th>누적관객수</th>";
					output += "</tr>";
					
					var list = kobis.boxOfficeResult.dailyBoxOfficeList;
					for(var i in list){
						output += "<tr>";
						output += "<td>" + list[i].rank + "</td>"; 
						output += "<td>" + list[i].movieNm + "</td>"; 
						output += "<td>" + list[i].openDt + "</td>"; 
						output += "<td>" + list[i].audiAcc + "명</td>"; 
						output += "</tr>";
					}
					
					output += "</table>"; 
					output += "</div>";
					
					$('div#result').remove();
					$('body').append(output);
					
		});
		}; //show의 끝
		
	});