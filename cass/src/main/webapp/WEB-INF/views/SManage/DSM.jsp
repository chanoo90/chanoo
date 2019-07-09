<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-xs-12">
		<div id="calendar" class="fc fc-ltr fc-unthemed">
			<div class="fc-toolbar">
				<div class="fc-left">
					<div class="fc-button-group">
						<button type="button"
							class="fc-prev-button fc-button fc-state-default fc-corner-left">
							<span class="fc-icon fc-icon-left-single-arrow"></span>
						</button>
						<button type="button"
							class="fc-next-button fc-button fc-state-default fc-corner-right">
							<span class="fc-icon fc-icon-right-single-arrow"></span>
						</button>
					</div>
					<button type="button"
						class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled"
						disabled="disabled">오늘의일정</button>
					<button type="button" class="btn btn-sm btn-white btn-bold"
						style="font-size: 12px;" onclick="todayInsert();">
						<i class="red ace-icon fa fa-pencil-square-o bigger-120"></i>일정등록
					</button>
					<button type="button" id="catMng"
						class="btn btn-sm btn-white btn-bold" style="font-size: 12px;"
						onclick="fnCategoryPop();">
						<i class="blue ace-icon fa fa-gear bigger-120"></i>일정종류
					</button>
				</div>
				<div class="fc-right">
					<div class="fc-button-group">
						<button type="button"
							class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">월간일정</button>
						<button type="button"
							class="fc-agendaWeek-button fc-button fc-state-default">주간일정</button>
						<button type="button"
							class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">일간일정</button>
					</div>
				</div>
				<div class="fc-center">
					<button type="button"
						class="fc-prev-button fc-button fc-state-default fc-corner-left fc-corner-right">
						<span class="fc-icon fc-icon-left-single-arrow"></span>
					</button>
					<h2>2019-07</h2>
					<button type="button"
						class="fc-next-button fc-button fc-state-default fc-corner-left fc-corner-right">
						<span class="fc-icon fc-icon-right-single-arrow"></span>
					</button>
				</div>
				<div class="fc-clear"></div>
			</div>
			<div class="fc-view-container" style="">
				<div class="fc-view fc-month-view fc-basic-view" style="">
					<table>
						<thead class="fc-head">
							<tr>
								<td class="fc-head-container fc-widget-header"><div
										class="fc-row fc-widget-header">
										<table>
											<thead>
												<tr>
													<th class="fc-day-header fc-widget-header fc-sun">일요일</th>
													<th class="fc-day-header fc-widget-header fc-mon">월요일</th>
													<th class="fc-day-header fc-widget-header fc-tue">화요일</th>
													<th class="fc-day-header fc-widget-header fc-wed">수요일</th>
													<th class="fc-day-header fc-widget-header fc-thu">목요일</th>
													<th class="fc-day-header fc-widget-header fc-fri">금요일</th>
													<th class="fc-day-header fc-widget-header fc-sat">토요일</th>
												</tr>
											</thead>
										</table>
									</div></td>
							</tr>
						</thead>
						<tbody class="fc-body">
							<tr>
								<td class="fc-widget-content"><div
										class="fc-day-grid-container" style="">
										<div class="fc-day-grid">
											<div class="fc-row fc-week fc-widget-content"
												style="height: 114px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td
																	class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																	data-date="2019-06-30"></td>
																<td class="fc-day fc-widget-content fc-mon fc-past"
																	data-date="2019-07-01"></td>
																<td class="fc-day fc-widget-content fc-tue fc-past"
																	data-date="2019-07-02"></td>
																<td class="fc-day fc-widget-content fc-wed fc-past"
																	data-date="2019-07-03"></td>
																<td class="fc-day fc-widget-content fc-thu fc-past"
																	data-date="2019-07-04"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2019-07-05"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2019-07-06"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-other-month fc-past"
																	data-date="2019-06-30">30</td>
																<td class="fc-day-number fc-mon fc-past"
																	data-date="2019-07-01">1</td>
																<td class="fc-day-number fc-tue fc-past"
																	data-date="2019-07-02">2</td>
																<td class="fc-day-number fc-wed fc-past"
																	data-date="2019-07-03">3</td>
																<td class="fc-day-number fc-thu fc-past"
																	data-date="2019-07-04">4</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2019-07-05">5</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2019-07-06">6</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content"
												style="height: 114px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2019-07-07"></td>
																<td
																	class="fc-day fc-widget-content fc-mon fc-today fc-state-highlight"
																	data-date="2019-07-08"></td>
																<td class="fc-day fc-widget-content fc-tue fc-future"
																	data-date="2019-07-09"></td>
																<td class="fc-day fc-widget-content fc-wed fc-future"
																	data-date="2019-07-10"></td>
																<td class="fc-day fc-widget-content fc-thu fc-future"
																	data-date="2019-07-11"></td>
																<td class="fc-day fc-widget-content fc-fri fc-future"
																	data-date="2019-07-12"></td>
																<td class="fc-day fc-widget-content fc-sat fc-future"
																	data-date="2019-07-13"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2019-07-07">7</td>
																<td
																	class="fc-day-number fc-mon fc-today fc-state-highlight"
																	data-date="2019-07-08">8</td>
																<td class="fc-day-number fc-tue fc-future"
																	data-date="2019-07-09">9</td>
																<td class="fc-day-number fc-wed fc-future"
																	data-date="2019-07-10">10</td>
																<td class="fc-day-number fc-thu fc-future"
																	data-date="2019-07-11">11</td>
																<td class="fc-day-number fc-fri fc-future"
																	data-date="2019-07-12">12</td>
																<td class="fc-day-number fc-sat fc-future"
																	data-date="2019-07-13">13</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content"
												style="height: 114px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-future"
																	data-date="2019-07-14"></td>
																<td class="fc-day fc-widget-content fc-mon fc-future"
																	data-date="2019-07-15"></td>
																<td class="fc-day fc-widget-content fc-tue fc-future"
																	data-date="2019-07-16"></td>
																<td class="fc-day fc-widget-content fc-wed fc-future"
																	data-date="2019-07-17"></td>
																<td class="fc-day fc-widget-content fc-thu fc-future"
																	data-date="2019-07-18"></td>
																<td class="fc-day fc-widget-content fc-fri fc-future"
																	data-date="2019-07-19"></td>
																<td class="fc-day fc-widget-content fc-sat fc-future"
																	data-date="2019-07-20"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-future"
																	data-date="2019-07-14">14</td>
																<td class="fc-day-number fc-mon fc-future"
																	data-date="2019-07-15">15</td>
																<td class="fc-day-number fc-tue fc-future"
																	data-date="2019-07-16">16</td>
																<td class="fc-day-number fc-wed fc-future"
																	data-date="2019-07-17">17</td>
																<td class="fc-day-number fc-thu fc-future"
																	data-date="2019-07-18">18</td>
																<td class="fc-day-number fc-fri fc-future"
																	data-date="2019-07-19">19</td>
																<td class="fc-day-number fc-sat fc-future"
																	data-date="2019-07-20">20</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end holiday fc-draggable fc-resizable"
																	style="background-color: #8b9aa3" target="_blank"
																	data-hasqtip="714" oldtitle="Google Schedule" title=""><div
																			class="fc-content">
																			<span class="fc-title">제헌절</span>
																		</div>
																		<div class="fc-resizer fc-end-resizer"></div></a></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content"
												style="height: 114px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-future"
																	data-date="2019-07-21"></td>
																<td class="fc-day fc-widget-content fc-mon fc-future"
																	data-date="2019-07-22"></td>
																<td class="fc-day fc-widget-content fc-tue fc-future"
																	data-date="2019-07-23"></td>
																<td class="fc-day fc-widget-content fc-wed fc-future"
																	data-date="2019-07-24"></td>
																<td class="fc-day fc-widget-content fc-thu fc-future"
																	data-date="2019-07-25"></td>
																<td class="fc-day fc-widget-content fc-fri fc-future"
																	data-date="2019-07-26"></td>
																<td class="fc-day fc-widget-content fc-sat fc-future"
																	data-date="2019-07-27"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-future"
																	data-date="2019-07-21">21</td>
																<td class="fc-day-number fc-mon fc-future"
																	data-date="2019-07-22">22</td>
																<td class="fc-day-number fc-tue fc-future"
																	data-date="2019-07-23">23</td>
																<td class="fc-day-number fc-wed fc-future"
																	data-date="2019-07-24">24</td>
																<td class="fc-day-number fc-thu fc-future"
																	data-date="2019-07-25">25</td>
																<td class="fc-day-number fc-fri fc-future"
																	data-date="2019-07-26">26</td>
																<td class="fc-day-number fc-sat fc-future"
																	data-date="2019-07-27">27</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"
																	style="background-color: #c2c2c2; border-color: #4f99c6"
																	target="_blank" data-hasqtip="715"
																	oldtitle="Google Schedule" title=""><div
																			class="fc-content">
																			<span class="fc-time">17:00</span> <span
																				class="fc-title">ddddd</span>
																		</div></a></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content"
												style="height: 114px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-future"
																	data-date="2019-07-28"></td>
																<td class="fc-day fc-widget-content fc-mon fc-future"
																	data-date="2019-07-29"></td>
																<td class="fc-day fc-widget-content fc-tue fc-future"
																	data-date="2019-07-30"></td>
																<td class="fc-day fc-widget-content fc-wed fc-future"
																	data-date="2019-07-31"></td>
																<td
																	class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																	data-date="2019-08-01"></td>
																<td
																	class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																	data-date="2019-08-02"></td>
																<td
																	class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																	data-date="2019-08-03"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-future"
																	data-date="2019-07-28">28</td>
																<td class="fc-day-number fc-mon fc-future"
																	data-date="2019-07-29">29</td>
																<td class="fc-day-number fc-tue fc-future"
																	data-date="2019-07-30">30</td>
																<td class="fc-day-number fc-wed fc-future"
																	data-date="2019-07-31">31</td>
																<td
																	class="fc-day-number fc-thu fc-other-month fc-future"
																	data-date="2019-08-01">1</td>
																<td
																	class="fc-day-number fc-fri fc-other-month fc-future"
																	data-date="2019-08-02">2</td>
																<td
																	class="fc-day-number fc-sat fc-other-month fc-future"
																	data-date="2019-08-03">3</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content"
												style="height: 117px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td
																	class="fc-day fc-widget-content fc-sun fc-other-month fc-future"
																	data-date="2019-08-04"></td>
																<td
																	class="fc-day fc-widget-content fc-mon fc-other-month fc-future"
																	data-date="2019-08-05"></td>
																<td
																	class="fc-day fc-widget-content fc-tue fc-other-month fc-future"
																	data-date="2019-08-06"></td>
																<td
																	class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																	data-date="2019-08-07"></td>
																<td
																	class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																	data-date="2019-08-08"></td>
																<td
																	class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																	data-date="2019-08-09"></td>
																<td
																	class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																	data-date="2019-08-10"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td
																	class="fc-day-number fc-sun fc-other-month fc-future"
																	data-date="2019-08-04">4</td>
																<td
																	class="fc-day-number fc-mon fc-other-month fc-future"
																	data-date="2019-08-05">5</td>
																<td
																	class="fc-day-number fc-tue fc-other-month fc-future"
																	data-date="2019-08-06">6</td>
																<td
																	class="fc-day-number fc-wed fc-other-month fc-future"
																	data-date="2019-08-07">7</td>
																<td
																	class="fc-day-number fc-thu fc-other-month fc-future"
																	data-date="2019-08-08">8</td>
																<td
																	class="fc-day-number fc-fri fc-other-month fc-future"
																	data-date="2019-08-09">9</td>
																<td
																	class="fc-day-number fc-sat fc-other-month fc-future"
																	data-date="2019-08-10">10</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>