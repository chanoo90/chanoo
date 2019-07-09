<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
	<style>
		table{
			width:100%;
		}
	</style>	
</head>

<body>
	<div class="main-content">
		<div class="main-content-inner">
		<%@ include file="/WEB-INF/views/SManage/subMenu.jsp" %>
	<div class="page-content main-content" style="padding:20px 150px 150px 150px;">
		<div class="page-content">
			<div class="box box-primary">
				<div class="box-body no-padding">
					<!-- THE CALENDAR -->
					<div id="calendar" class="fc fc-unthemed fc-ltr">
						
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</div>
</div>
	<%@ include file="/WEB-INF/views/SManage/psm_js.jsp" %>
	<script>
	$('#calendar').on('click','td.fc-day-top',function(e){
		var dateStr = $(this).attr('data-date');
		
	});
	$('#calendar fc-day-number').css('text-align','left');
	</script>
</body>

