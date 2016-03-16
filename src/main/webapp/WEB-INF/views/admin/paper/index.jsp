<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.paper.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
							<div class="widget-head  bondi-blue" >
								<h3>调查项目-题目设置</h3>
							</div>
							<div class="box well form-inline">
								选择需要添加题目的调查项目
								<select name="_name" id='_name' placeholder="问题名称" >
									<c:forEach items="${surveys }" var="bean">
										<option value="${bean.id}">${bean.name }</option>
									</c:forEach>
								</select>
								
								<a onclick="$.paper.initSearchDataTable()"
									class="btn btn-info" data-loading-text="正在加载..."><i class="icon-search"></i>确定</a>
							
								
								<a class="btn btn-success" style="margin: 5px;" onclick="$.paper.showUserAddModal()"><i class="icon-plus"></i>添加题目</a>
							
							</div>
							<div class="row-fluid ">
								<table class="responsive table table-striped table-bordered"
									id="dt_table_view">
									<thead>
										<tr>
											<th >id</th>
											<th >问题</th>
											<th >选项一</th>
											<th >选项二</th>
											<th >选项三</th>
											<th >选项四</th>
											<th >创建时间</th>
											<th >操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="_modal_header_label"></label>
		</div>
		<div class="modal-body" >
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden"  name='id' id="id" value="">
							<label for="title" class="control-label">选择要添加的题目：</label>
							<select name="qid" id='qid' placeholder="问题名称" >
									<c:forEach items="${questions }" var="bean">
										<option value="${bean.id}">${bean.name }</option>
									</c:forEach>
								</select>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.paper.saveUser()">确认添加</a>
		</div>
	</div>
</body>
</html>