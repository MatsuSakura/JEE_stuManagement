<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script src="./lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
</head>
<body>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body ">
					<a type="button" class="layui-btn layui-btn-radius" href="./FindAllKechnegName">添加成绩</a>
					</div>

					<div class="layui-card-body ">
						<table class="layui-table layui-form">
							<thead>
								<tr>
									<th>课程名称</th>
									<th>授课教师</th>
									<th>成绩</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${list}" varStatus="temp">
									<tr>
										<td>${item.kname}</td>
										<td>${item.teacher}</td>
										<td>${item.fenshu}</td>
										<td class="td-manage">
											<a type="button" class="layui-btn" title="编辑" href="FindChengjiById?id=${item.id }">编辑</a>
											<a type="button" class="layui-btn layui-btn-danger" title="删除" href="DelChengji?id=${item.id }">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use([ 'laydate', 'form' ], function() {
		var laydate = layui.laydate;

		//执行一个laydate实例
		laydate.render({
			elem : '#start' //指定元素
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#end' //指定元素
		});
	});
</script>

</html>