<!DOCTYPE html>
<html lang="zh_CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/pagination.css">
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	table tbody tr:nth-child(odd){background:#F4F4F4;}
	table tbody td:nth-child(even){color:#C00;}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <div><a class="navbar-brand" style="font-size:32px;" href="#">众筹平台 - 流程管理</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<div class="btn-group">
				  <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i> 张三 <span class="caret"></span>
				  </button>
					  <ul class="dropdown-menu" role="menu">
						<li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
						<li class="divider"></li>
						<li><a href="index.html"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
					  </ul>
			    </div>
			</li>
            <li style="margin-left:10px;padding-top:8px;">
				<button type="button" class="btn btn-default btn-danger">
				  <span class="glyphicon glyphicon-question-sign"></span> 帮助
				</button>
			</li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="main.html"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a> 
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 权限管理 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="user.html"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							<li style="height:30px;">
								<a href="role.html"><i class="glyphicon glyphicon-king"></i> 角色维护</a> 
							</li>
							<li style="height:30px;">
								<a href="permission.html"><i class="glyphicon glyphicon-lock"></i> 许可维护</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-ok"></i> 业务审核 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="auth_cert.html"><i class="glyphicon glyphicon-check"></i> 实名认证审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_adv.html"><i class="glyphicon glyphicon-check"></i> 广告审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_project.html"><i class="glyphicon glyphicon-check"></i> 项目审核</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item">
						<span><i class="glyphicon glyphicon-th-large"></i> 业务管理 <span class="badge" style="float:right">7</span></span> 
						<ul style="margin-top:10px;">
							<li style="height:30px;">
								<a href="cert.html"><i class="glyphicon glyphicon-picture"></i> 资质维护</a> 
							</li>
							<li style="height:30px;">
								<a href="type.html"><i class="glyphicon glyphicon-equalizer"></i> 分类管理</a> 
							</li>
							<li style="height:30px;">
								<a href="process.html" style="color:red"><i class="glyphicon glyphicon-random"></i> 流程管理</a> 
							</li>
							<li style="height:30px;">
								<a href="advertisement.html"><i class="glyphicon glyphicon-hdd"></i> 广告管理</a> 
							</li>
							<li style="height:30px;">
								<a href="message.html"><i class="glyphicon glyphicon-comment"></i> 消息模板</a> 
							</li>
							<li style="height:30px;">
								<a href="project_type.html"><i class="glyphicon glyphicon-list"></i> 项目分类</a> 
							</li>
							<li style="height:30px;">
								<a href="tag.html"><i class="glyphicon glyphicon-tags"></i> 项目标签</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed" >
						<a href="param.html"><i class="glyphicon glyphicon-list-alt"></i> 参数管理</a> 
					</li>
				</ul>
			</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="panel panel-default">
			  <div class="panel-heading">
				<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 数据列表</h3>
			  </div>
			  <div class="panel-body">
<form id="uploadForm" action="/process/upload" enctype="multipart/form-data" method="post" hidden="true">
	<input id="inputBtn" type="file" name="procDefFile">
</form>

<button type="button" id="uploadBtn" class="btn btn-primary" style="float:right;"><i class="glyphicon glyphicon-upload"></i> 上传流程定义文件</button>
<br>
 <hr style="clear:both;">
          <div class="table-responsive">
            <table class="table  table-bordered">
              <thead>
                <tr >
                  <th width="30">#</th>
                  <th>流程名称</th>
                  <th>流程Key</th>
                  <th>流程版本</th>
                  <th width="100">操作</th>
                </tr>
              </thead>
              <tbody id="tbody">
              
              </tbody>
			  <tfoot>
			     <tr >
				     <td colspan="5" align="center">
						<div id="Pagination" class="pagination"><!-- 这里显示分页 --></div>
					 </td>
				 </tr>

			  </tfoot>
            </table>
          </div>
			  </div>
			</div>
        </div>
      </div>
    </div>

    <script src="/jquery/jquery-2.1.1.min.js"></script>
    <script src="/jquery/jquery.form.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
	<script src="/script/docs.min.js"></script>
	<script src="/jquery/jquery.pagination.js"></script>
	<script src="/layer/layer.js"></script>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
			    queryPage(0);
			    
			    // click方法传递参数表示绑定
			    $("#uploadBtn").click(function(){
			    	// click方法没有传递参数, 表示点击
			    	$("#inputBtn").click();
			    });
			    
			    $("#inputBtn").change(function(){
			    	// 提交表单, 上传文件
			    	$("#uploadForm").ajaxSubmit({
			    		beforeSubmit: function(){
			    			
			    		},
			    		// 重置表单
			    		resetForm: true,
			    		success: function(result){
		         			if(result.success){
		         				layer.msg("上传成功", {time:1000, icon:1, shift:5}, function(){
		         					queryPage(0);
		         				});
		         			}else{
		         				layer.msg("上传失败", {time:1000, icon:5, shift:6}, function(){});
		         				
		         			}
		        		}
			    	});
			    });
            });
            
            function queryPage(pageIndex){
            	var pageNo = pageIndex + 1;
            	var pageSize = 10;
            	var dataEle = {pageNo : pageNo, pageSize : pageSize};
	            $.ajax({
	            	url : "/process/pageQuery",
	            	type : "POST",
	            	data : dataEle,
	            	beforeSend : function(){
	            		loadingIndex = layer.load(2, {icon: 16});
	            	},
	            	success: function(result){
	            		layer.close(loadingIndex);
	            		if(result.success){
		            		var pdPage = result.page;
		            		//alert(userPage.totalPageNo);
		                	var pds = pdPage.datas;
	            			// 用户
	            			var context = "";
	            			// 分页
	            			var contextPage = "";
	            			$.each(pds, function(i, pd){
			            		context += '<tr>';
					            context += '  <td>'+(i+1)+'</td>';
								//context += '  <td><input type="checkbox" value='+user.id+'></td>';
					            context += '  <td>'+pd.name+'</td>';
					            context += '  <td>'+pd.key+'</td>';
					            context += '  <td>'+pd.version+'</td>';
					            context += '  <td>';
								context += '      <button type="button" onclick="location=\'${APP_PATH}/process/showImg?id='+pd.id+'\'" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-play-circle"></i></button>';
								//context += '      <button type="button" onclick="window.location.href=\'${APP_PATH}/pd/edit?pageNo='+pageNo+'&id='+pd.id+'\'" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>';
								context += '	  <button type="button" onclick="deletepd(\''+pd.id+'\')" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>';
								context += '  </td>';
					            context += '</tr>';
	            			});
		            		$("#tbody").html(context);
		            		
		            		$("#Pagination").pagination(pdPage.totalPageSize, {
		            			num_edge_entries: 1, //边缘页数
		            			num_display_entries: 5, //主体页数
		            			callback: queryPage,
		            			current_page:pageIndex,
		            			items_per_page:pageSize, //每页显示1项
		            			link_to:"javascript:;",
		            			prev_text:"上一页",
		            			next_text:"下一页"
		            		});
		            	}else{
	            			layer.msg("分页查询失败", {time:1000, icon:5, shift:6}, function(){
	            				layer.close(loadingIndex);
	            			});
	         			}
	            	}
	            });
            };
            
            function deletepd(id){
            	$.ajax({
            		type : "POST",
            		url : "/process/delete/"+id,
            		success: function(){
            			layer.msg("删除成功", {time:1000, icon:1, shift:5}, function(){
         					queryPage(0);
         				});
            		}
            	});
            };
        </script>
  </body>
</html>
