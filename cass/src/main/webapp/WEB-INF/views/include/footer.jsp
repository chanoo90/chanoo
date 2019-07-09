<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
</div>

<!-- ace settings handler -->
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/garam-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/html5shiv.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/respond.js"></script>
<![endif]-->

<!--[if IE]>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/jquery1x.min.js"></script>
<![endif]-->

<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts start -->
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/jquery.ui.touch-punch.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/bootbox.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/jquery-cookie/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/date-time/locales/bootstrap-datepicker.kr.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/jquery.gritter.min.js"></script>
<script src='<%=request.getContextPath()%>/resources/common/scripts/index.js' type="text/javascript"></script>

<!-- jQuery Validation defaults -->
<script src="<%=request.getContextPath()%>/resources/common/libs/jquery-validation/jquery.validate.defaults.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/jquery-qtip2/2.2.1/jquery.qtip.min.js"></script>

<!-- page specific plugin scripts end -->
<!-- ace scripts -->
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/garam-elements.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/garam-admin-template/1.3.5/dist/js/garam.min.js"></script>

<!-- inline scripts related to this page start -->

<script src="<%=request.getContextPath()%>/resources/common/scripts/common.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/scripts/organization_selector.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/scripts/garam.garam.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/scripts/parent.reload.js"></script>
<script src="<%=request.getContextPath()%>/resources/common/libs/bxslider/4.1.2/jquery.bxslider.min.js"></script>

<!-- <div id="Date">2019년 5월 24일 금요일</div>
					<ul style="list-style: none;">
						<li id="hours">13</li>
					    <li id="point">:</li>
					    <li id="min">43</li>
					    <li id="point1">:</li>
					    <li id="sec">01</li>
					</ul> -->
					
<script>
	var fullDate = $('div#Date');
	var hours = $('li#hours');
	var min = $('li#min');
	var sec = $('li#sec');
	
	var intervalFunc=function(){
		var today = new Date();
		let year=today.getFullYear();
		let month=today.getMonth()+1;
		let date=today.getDate();
		let days=["일","월","화","수","목","금","토"];
		let day=days[today.getDay()];
		let hour="00"+today.getHours();
		hour=hour.substring(hour.length-2);
		let minute="00"+today.getMinutes();
		minute=minute.substring(minute.length-2);
		let second="00"+today.getSeconds();
		second=second.substring(second.length-2);
		
		fullDate.text(year+"년 "+month+"월 "+date+"일 "+day+"요일");
		hours.text(hour);
		min.text(minute);
		sec.text(second);
	}
	intervalFunc();
	
	var time=setInterval(intervalFunc,1000);
	
	
</script>

<script type="text/javascript">
	var popupWinCnt = 0;	
	function goSubmit(cmd, isNewWin ,docId)
	{
		var frm = document.getElementById("search");
		frm.method = "GET";
		switch(cmd){
			case "view":
				frm.docId.value = docId;
				frm.action = "read.htm";
				break;
			case "edit":
				frm.action = "form.htm";
				frm.pDocId.value = "";
				break;
			case "delete":
				if(!confirm("삭제 하시겠습니까?")) return;
				frm.action = "delete.htm";
				break;
			
			default:
				return;
				break;
		}
		
			
				frm.useNewWin.value = false;
				frm.useLayerPopup.value = true;
			
			
		
		frm.submit();
	}

	var popupHistory,x,y;
	function ViewHistory(historyType ) {
		var url = "";
		x = 17;
		y = 80;
		switch(historyType)
		{
			case "edit":
				url = "./edit_history.htm?bbsId=bbs00000000000000&docId=2018051611134119";
				break;
			case "read":
				x = 90;
				url = "./read_history.htm?bbsId=bbs00000000000000&docId=2018051611134119";
				break;
			case "down":
				x = 163;
				url = "./down_history.htm?bbsId=bbs00000000000000&docId=2018051611134119";
				break;
			default :
				return;
				break;
		}
		ajaxRequest("GET", "", url, viewHistoryCompleted);
	}

	function hideHistory(){
		if (window.createPopup){
			popupHistory.hide()
		} else popupHistory.close();
	}

	function viewHistoryCompleted(data, textStatus, jqXHR) {
		wid = 500 ;
		hei = 194;
		
		ModalDialog({'t':'History', 'w':480, 'h':250, 'm':'html', 'c':data, 'modal':false, 'd':true, 'r':true });
		/*
		if(window.createPopup){
			popupHistory = window.createPopup();
			popupHistory.document.body.innerHTML = data ;
			popupHistory.show(x, y, wid, hei , document.body);
		} else {
			var features = "height=" + hei + ",width=" + wid + ",left=" + x + ",top=" + y + 
				",titlebar=no,menubar=no,scrollbars=no,status=no,location=no"
			popupHistory = window.open("about:blank", "popupHistory", features);
			popupHistory.document.body.innerHTML = data;
		}
		*/
	}
	

	function ShowUserInfoSetss() {
	     // Make sure to only match links to wikipedia with a rel tag
	     var strUrl = "/common/userinfo.htm?userId=" ;

	   	$('.maninfo').each(function()
	    {
	   		// We make use of the .each() loop to gain access to each element via the "this" keyword...
	   		$(this).qtip(
	   		{
	   			content: {
	   				// Set the text to an image HTML string with the correct src URL to the loading image you want to use
	   				//text: '<img class="throbber" src="/projects/qtip/images/throbber.gif" alt="Loading..." />',
	   				text: 'loading...',
	   				ajax: {
	   					//url: $(this).attr('rel') // Use the rel attribute of each element for the url to load
	   					//url: strUrl // Use the rel attribute of each element for the url to load
	   					url: strUrl + $(this).attr('rel') // Use the rel attribute of each element for the url to load
	   				},
	   				title: {
	   					text: 'Man Information - ' + $(this).text(), // Give the tooltip a title using each elements text
	   					//text: 'Man Infomation', // Give the tooltip a title using each elements text
	   					button: true
	   				}
	   			},
	   			position: {
	   				at: 'left center', // Position the tooltip above the link
	   				my: 'right center',
	   				viewport: $(window), // Keep the tooltip on-screen at all times
	   				effect: false // Disable positioning animation
	   			},
	   			show: { 
	   				event: 'click',
	   				solo: true // Only show one tooltip at a time
	   			},
	   			hide: 'unfocus',
	   			style: {
	   				//classes: 'qtip-wiki qtip-light qtip-shadow'
	   				classes: 'ui-tooltip-bootstrap ui-tooltip-shadow ui-tooltip-rounded',
					width:350
	   			}
	   		})
	   	})
    
	   	// Make sure it doesn't follow the link when we click it
		.click(function(event) { event.preventDefault(); });
	}
	
	$(document).ready(function(){
		
		var isNoticePopup = $.urlParam('isNoticePopup');
		if ( isNoticePopup == "true" ) {
			// 메인화면 새창 공지사항 일 경우 : 1.수행버튼 숨김, 2. 24시간 사용않음 버튼 하단에 추가
			$(".wizard-actions").hide();
			$("#close24").show();
		}
		
		//$(".wizard-actions").hide();
		//$("#close24").show();
		
//	 	if (navigator.userAgent.match(/iPad/) == null && navigator.userAgent.match(/Mobile|Windows CE|Windows Phone|Opera Mini|POLARIS/) != null){
//	 		var head = document.getElementsByTagName("head")[0];
//	 		var s = document.createElement("meta");
//	 		s.name = "viewport";
//	 		s.content = "width=device-width, minimum-scale=0.4, maximum-scale=1, initial-scale=0.4, user-scalable=yes";
//	 		head.appendChild(s);
//	 		s = null;
//	 	}
		
		ShowUserInfoSet();
		ViewHistorySet();
		
		pageScroll();	// page Scroll을 위해 사용. 2013-08-31
		
		setTimeout( "popupAutoResize2();", "500");		//팝업창 resize
		
	});

</script>


</body>








    