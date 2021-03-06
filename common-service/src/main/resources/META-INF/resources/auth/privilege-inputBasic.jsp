<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<form class="form-horizontal form-bordered form-label-stripped form-validation" action="${base}/auth/privilege!doSave"
	method="post">
	<s:hidden name="id" />
	<s:hidden name="version" />
	<s:token />
	<div class="form-actions">
		<button class="btn blue" type="submit" data-grid-reload=".grid-privilege-list">
			<i class="fa fa-check"></i> 保存
		</button>
		<button class="btn default btn-cancel" type="button">取消</button>
	</div>
	<div class="form-body">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">分类</label>
					<div class="controls">
						<s3:textfield name="category" />
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">类型</label>
					<div class="controls">
						<s3:radio name="type" list="#application.enums.privilegeTypeEnum" />
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">代码</label>
					<div class="controls">
						<s3:textfield name="code" />
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">名称</label>
					<div class="controls">
						<s3:textfield name="title" />
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group tooltipster" title="排序号越大，则越先URL匹配">
					<label class="control-label">排序号</label>
					<div class="controls">
						<s3:textfield name="orderRank" />
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group tooltipster" title="可以一个权限关联多个URL,一行一个URL。系统默认按照左匹配规则验证，如/abc表示/abc**">
					<label class="control-label">匹配URL列表</label>
					<div class="controls">
						<s3:textarea name="url" rows="3" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-actions right">
		<button class="btn blue" type="submit">
			<i class="fa fa-check"></i> 保存
		</button>
		<button class="btn default btn-cancel" type="button">取消</button>
	</div>
</form>
<%@ include file="/common/ajax-footer.jsp"%>