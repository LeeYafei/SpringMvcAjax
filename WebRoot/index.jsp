<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <!-- bootstrap核心内容-->
  	<script src="/demo0318/bootstrap/jquery-3.1.0.js"></script>
	<link href="/demo0318/bootstrap/core/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/demo0318/bootstrap/core/js/bootstrap.min.js"></script>
	<!-- 对话框插件 -->
	<link href="/demo0318/bootstrap/dialog/css/bootstrap-dialog.min.css" rel="stylesheet" type="text/css" />
	<script src="/demo0318/bootstrap/dialog/js/bootstrap-dialog.min.js"></script>
	<!-- 表格插件 -->
	<link href="/demo0318/bootstrap/table/bootstrap-table.css" rel="stylesheet" type="text/css" />
	<script src="/demo0318/bootstrap/table/bootstrap-table.js"></script>
	<script src="/demo0318/bootstrap/table/locale/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript">
		$(function(){
			 BootstrapDialog.show({
	            title: "欢迎访问商务管理系统",
	            message: '请选择您要做的工作',
	            buttons: [{
	                label: '显示员工信息',
	                action: function(dialogItself) {
	                   initEmps();	                   
	                   dialogItself.close();
	                }
	            }, {
	                label: '查看日程',
	                action: function(dialogItself) {
	                    dialogItself.setTitle('Title 2');
	                }
	            }]
	        });
		})
		
		function initEmps(){
			$("body").append("<table id='emps'></table>");
			 $("#emps").bootstrapTable({  
                url: "/demo0318/d2.do",
                striped:true,
                search: true,
                searchOnEnterKey: true,
                pagination: true,
                pageList: [5, 10, 20],
                pageNumber: 1,
        		pageSize: 10,
                columns:[
                	{
                		"field":"empno",
                		"title":"工号",
                		"sortable":true
                	},
                	{
                		"field":"ename",
                		"title":"姓名"
                	},
                	{
                		"field":"job",
                		"title":"职务"
                	}
                ]
            });  
		}
	</script>
  </head>
  
  <body>
    
  </body>
</html>
