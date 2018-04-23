<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="x_back_order.jsp">


				<table class="table">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th>
								日期
							</th>
							<th>
								時間
							</th>
							<th>
								聽次
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="checkbox" name="choice" value="1"/>
							</td>
							<td>
								2018/06/09 (六)
								<input type='hidden' name='choice' value='2018/06/09 (六)' />
							</td>
							<td>
								09:00
								<input type='hidden' name='choice' value='09:00' />
							</td>
							<td>
								二聽
								<input type='hidden' name='choice' value='二聽' />
							</td>
						</tr>
						<tr class="table-active">
							<td>
								<input type="checkbox" name="choice" value=""/>
							</td>
							<td>
								2018/06/11 (一)
								<input type='hidden' name='choice' value='2018/06/11 (一)' />
							</td>
							<td>
								20:00
								<input type='hidden' name='choice' value='20:00' />
							</td>
							<td>
								一聽
								<input type='hidden' name='choice' value='一聽' />
							</td>
						</tr>
					</tbody>
				</table>
				<button type="submit" class="btn btn-success">
					Submit
				</button>



</form>


</body>
</html>