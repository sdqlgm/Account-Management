<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>增删改查</title>

	<link href="plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
	<link href="plugins/bootstrap-table-1.11.0/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
	<link href="plugins/jquery-confirm/jquery-confirm.min.css" rel="stylesheet"/>
	<link href="css/common.css" rel="stylesheet"/>
	<link href="plugins/dataTables/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="plugins/daterangepicker/daterangepicker.css" rel="stylesheet"/>
	<link href="plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
	<link href="plugins/select2/css/select2.min.css" rel="stylesheet"/>
	<link href="css/lanrenzhijia.css" rel="stylesheet"/>
	
	<script src="plugins/jquery-3.1.1.min.js"></script>
	<script src="plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>
	<script src="plugins/bootstrap-table-1.11.0/bootstrap-table.min.js"></script>
	<script src="plugins/bootstrap-table-1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="plugins/waves-0.7.5/waves.min.js"></script>
	<script src="plugins/jquery-confirm/jquery-confirm.min.js"></script>
	<script src="js/common.js"></script>
	<script src="plugins/dataTables/jquery.dataTables.min.js"></script>
	<script src="plugins/daterangepicker/moment.min.js"></script>
	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<script src="plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script src="plugins/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="plugins/select2/js/select2.min.js"></script>
	<script src="plugins/select2/js/i18n/zh-CN.js"></script>
</head>
<body>
<div id="main">
	<div id="toolbar" style="margin-bottom: 20px;">
		<a class="waves-effect waves-button" href="javascript:;" onclick="createAction()"><i class="zmdi zmdi-plus"></i> 新增用户</a>
<!-- 		<a class="waves-effect waves-button" href="javascript:;" onclick="deleteAction()"><i class="zmdi zmdi-close"></i> 删除用户</a> -->
	</div>
	<div class="row-fluid clearfix padding-top-10">
		<div class="col-md-12">
			<div class="col-md-3">
				<div class="col-md-4" style="text-align: right;padding:4px">编码：</div>
				<div class="col-md-8" style="padding:0">
					<input id="searchSerialNo" type="text" class="form-control">
				</div>
			</div>
			<div class="col-md-3">
				<div class="col-md-4"  style="text-align: right;padding:4px">名称：</div>
				<div class="col-md-8" style="padding:0">
					<input id="searchName" type="text" class="form-control">
				</div>
			</div>
			<div class="col-md-3">
				<div class="col-md-4"  style="text-align: right;padding:4px">备注：</div>
				<div class="col-md-8" style="padding:0">
					<input id="searchRemark" type="text" class="form-control">
				</div>
			</div>
			<div class="col-md-3">
				<div class="col-md-4"  style="text-align: right;padding:4px">类型：</div>
				<div class="col-md-8"  style="padding:0">
					<div class="form-radio">
					<select id="searchType" style="width:100%;" name="type" ></select>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row-fluid clearfix padding-top-10" style="margin-top:10px;">
		<div class="col-md-12">
			<div class="col-md-3">
				<div class="col-md-4" style="text-align: right;padding:4px">注册：</div>
				<div class="col-md-8" style="padding:0">
					<div class="timePicker">
				        <input type="text" id="startTime" class="form-control">
				        <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
				     </div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="col-md-4" style="padding:4px;text-align: center">————</div>
				<div class="col-md-8" style="padding:0">
					<div class="timePicker">
			            <input type="text" id="endTime" class="form-control">
			            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
			         </div>
				</div>
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-2">
			
				<div class="col-sm-6">
					<button type="button" onclick="searchAction()" class="btn btn-primary">
						<span>查询 <i class="fa fa-search"></i></span>
					</button>
				</div>
				<div class="col-sm-6">
					<button type='button' class='btn btn-warning' onclick="resetAction()" >
						<span>重置 <i class="fa fa-search"></i></span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div id="tableContent" style="margin-top:20px">
	<table id="table" class="table table-striped table-bordered"> 
	    <thead> 
	     <tr> 
	      <th></th> 
	      <th>编码</th> 
	      <th>名称</th> 
	      <th>备注</th>
	      <th>状态</th>
	      <th>注册时间</th>
	      <th>最后登录</th>
	      <th>账号类型</th> 
	      <th></th> 
	     </tr> 
	    </thead> 
	    <tbody></tbody> 
	   </table> 
	   </div>
</div>


<!-- 弹出层 -->
<div class="theme-popover">
     <div class="theme-poptit">
          <a href="javascript:;" title="关闭" class="close">×</a>
          <h3>用户信息</h3>
     </div>
     <div class="theme-popbod dform">
           <form>
				<div class="form-group">
					<label for="input1">编码</label>
					<input id="input-serialNo" value="" type="text" class="form-control" >
				</div>
				<div class="form-group">
					<label for="input2">名称</label>
					<input id="input-name" value="" type="text" class="form-control">
				</div>
				<div class="form-group">
					<label for="input3">备注</label>
					<input id="input-remark" value="" type="text" class="form-control">
				</div>
				<div class="form-group">
					<label for="input4">状态</label>
					<div class="form-radio">
						<input id="input-status-able" name="status" type="radio" value="1" checked="checked"/>启 封&nbsp;&nbsp;&nbsp;
						<input id="input-status-disable" name="status" type="radio" value="0" />封 存
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 20px">
					<label for="input5">注册时间</label>
					<div class="form-radio" >
					<div style="position: absolute;right:0" class="input-group date col-md-8" data-date="2017-01-01 00:00:00" data-date-format="yyyy-MM-dd HH:ii:ss" data-link-field="dtp_input1">
		                    <input id="input-createdDate" class="form-control form_datetime" size="16" type="text" value="" readonly>
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
							<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
		            </div>
					<input type="hidden" id="input5" value="" />
					</div>
				</div>
				<div class="form-group">
					<label for="input6">账号类型</label>
					<div class="form-radio" style="text-align: right;">
						<select id="input-type" style="width:66.66%;"  name="type" ></select>
					</div>
				</div>
				<div class="form-group" style="text-align: center;">
					<div class="col-md-6"></div>
						<div class="col-md-3">
						<button type="button" onclick="confirmAction()" class="btn btn-primary">
							<span>确定 <i class="fa fa-search"></i></span>
						</button>
						</div>
						<div class="col-md-3">
						<button type='button' onclick="cancelAction()" class='btn btn-warning' >
							<span>取消 <i class="fa fa-search"></i></span>
						</button>
						</div>
					</div>
			</form>
			<script>
				 $('#input-createdDate').datetimepicker({
				        language:  'zh-CN',
				        weekStart: 1,
				        todayBtn:  1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 2,
						forceParse: 0,
				        showMeridian: 1
				    });
				 var data = [ {id: "user", text: '普通用户'},{id: "system", text: '系统用户'}];
				    $("#input-type").select2({
				        data: data
				    });
			</script>
     </div>
</div>

<script>
jQuery(document).ready(function($) {
	//登录控件
	$('.theme-login').click(function(){
		$('.theme-popover-mask').fadeIn(100);
		$('.theme-popover').slideDown(200);
	})
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
	})

	//初始化时间控件
	$("#startTime").datetimepicker({
	    format: "yyyy-mm-dd hh:ii",
	});
	$("#endTime").datetimepicker({
		format: "yyyy-mm-dd hh:ii",
	});
	
})

//当前修改的ID
var currentId = 0;
//当前是修改还是新增，1为新增，2修改
var currentOp = 0;

function initTable(){
	//初始化表格
	var searchSerialNo = $('#searchSerialNo').val();
	var searchName = $('#searchName').val();
	var searchRemark = $('#searchRemark').val();
	var searchType = $('#searchType').val();
	var startTime = $('#startTime').val();
	var endTime = $('#endTime').val();
	if(searchSerialNo==null){searchSerialNo=""}
	if(searchName==null){searchName=""}
	if(searchRemark==null){searchRemark=""}
	if(searchType==null){searchType=""}
	if(startTime==null){startTime=""}
	if(endTime==null){endTime=""}
    $('#table').DataTable( {
        language: {
            "sProcessing": "处理中...",
            "sLengthMenu": "显示 _MENU_ 项结果",
            "sZeroRecords": "没有匹配结果",
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
            "sInfoPostFix": "",
            "sSearch": "搜索:",
            "sUrl": "",
            "sEmptyTable": "表中数据为空",
            "sLoadingRecords": "载入中...",
            "sInfoThousands": ",",
            "oPaginate": {
                "sFirst": "首页",
                "sPrevious": "上页",
                "sNext": "下页",
                "sLast": "末页"
            },
            "oAria": {
                "sSortAscending": ": 以升序排列此列",
                "sSortDescending": ": 以降序排列此列"
            }
        },
        "destroy": true,//重新加载
        "searching":false,//搜索栏
    	"processing": true,//
    	"bLengthChange": false,//显示数量
    	"iDisplayLength": 20,//显示数量
    	"ajax": {
    		url : "/api/user/search?serialNo="+searchSerialNo+"&name="+searchName+"&remark="+searchRemark+"&type="+searchType+"&startTime="+startTime+"&endTime="+endTime,
    		dataSrc: "",
    	},
        "columns": [
        	{
                data: null,
                orderable: false,
                searchable: false,
                render: function (data, type, row) {
                    return "<td><input type='checkbox' name='allocated' value='" + row.id + "'></td>";
                }
            },
            { "data": "serialNo" },
            { "data": "name" },
            { "data": "remark" },
            { "data": function(obj){ 
            	if(obj.activated==true){
            		return "启封";
            	}else{
            		return "封存";
            	}
            }
   			},
            { "data": function(obj){  
                		return DateTime(obj.createdDate);
           			}  
            },
            { "data": function(obj){  
        		return DateTime(obj.lastLoginDate);
   				} 
            },
            { "data": "type" },
            {
                data: null,
                orderable: false,
                searchable: false,
                render: function (data, type, row) {
                	return "<td><button type='button' class='btn btn-primary btn-sm' onclick='updateAction("+row.id+")'>编辑</button> &nbsp;" +
                            "&nbsp;<button type='button' class='btn btn-warning btn-sm' onclick='deleteAction("+row.id+")'>删除</button>" +
                            "</td>";
                }
            }
        ]
	});
}
initTable();


//格式化时间戳
DateTime=function getMyDate(time){  
    var oDate = new Date(time),  
        oYear = oDate.getFullYear(),  
        oMonth = oDate.getMonth()+1,  
        oDay = oDate.getDate(),  
        oHour = oDate.getHours(),  
        oMin = oDate.getMinutes(),  
        oSen = oDate.getSeconds(),  
        oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间  
    return oTime;  
};  
//补0操作,当时间数据小于10的时候，给该数据前面加一个0  
function getzf(num){  
    if(parseInt(num) < 10){  
        num = '0'+num;  
    }  
    return num;  
}  

function actionFormatter(value, row, index) {
    return [
        '<a class="like" href="javascript:void(0)" data-toggle="tooltip" title="Like"><i class="glyphicon glyphicon-heart"></i></a>　',
        '<a class="edit ml10" href="javascript:void(0)" data-toggle="tooltip" title="Edit"><i class="glyphicon glyphicon-edit"></i></a>　',
        '<a class="remove ml10" href="javascript:void(0)" data-toggle="tooltip" title="Remove"><i class="glyphicon glyphicon-remove"></i></a>'
    ].join('');
}

window.actionEvents = {
    'click .like': function (e, value, row, index) {
        alert('You click like icon, row: ' + JSON.stringify(row));
        console.log(value, row, index);
    },
    'click .edit': function (e, value, row, index) {
        alert('You click edit icon, row: ' + JSON.stringify(row));
        console.log(value, row, index);
    },
    'click .remove': function (e, value, row, index) {
        alert('You click remove icon, row: ' + JSON.stringify(row));
        console.log(value, row, index);
    }
};
function detailFormatter(index, row) {
	var html = [];
	$.each(row, function (key, value) {
		html.push('<p><b>' + key + ':</b> ' + value + '</p>');
	});
	return html.join('');
}
// 新增
function createAction() {
	currentId = 0;
	currentOp = 1;
	resetUpdate();
	$('.theme-popover-mask').fadeIn(100);
	$('.theme-popover').slideDown(200);
}
// 编辑
function updateAction(id) {
	currentId = id;
	currentOp = 2;
	resetUpdate();
	
	$.ajax({
        type: "GET",
        url: "/api/user/"+id,
        success: function(data){
        	$('#input-serialNo').val(data.serialNo);
        	$('#input-name').val(data.name);
        	$('#input-remark').val(data.remark);
        	if(data.activated==true){
        		$('#input-status-disable').removeAttr("checked");
        		$('#input-status-able').attr("checked","checked");
        	}else{
        		$('#input-status-able').removeAttr("checked");
        		$('#input-status-disable').attr("checked","checked");
        	}
        	$('#input-createdDate').val(DateTime(data.createdDate));
        	$('#input-type').val(data.type);
        	
        	$('.theme-popover-mask').fadeIn(100);
        	$('.theme-popover').slideDown(200);
        	
           }
    	});
}
// 删除
function deleteAction(id) {
		$.confirm({
			type: 'red',
			animationSpeed: 300,
			title: false,
			content: '确认删除该用户吗？',
			buttons: {
				confirm: {
					text: '确认',
					btnClass: 'waves-effect waves-button',
					action: function () {
						$.ajax({
				               type: "DELETE",
				               url: "/api/user/"+id,
				               success: function(data){
				            	   $.alert('删除完成！');
				                  }
				           	});
					}
				},
				cancel: {
					text: '取消',
					btnClass: 'waves-effect waves-button'
				}
			}
		});
}
//搜索
function searchAction() {
	initTable();
}

//重置搜索
function resetAction(){
	$('#searchSerialNo').val("");
	$('#searchName').val("");
	$('#searchRemark').val("");
	$("#searchType").val("");
	//搜索栏
	var data = [{id: "", text: '全部'}, {id: "user", text: '普通用户'},{id: "system", text: '系统用户'}];
	$("#searchType").select2({
	    data: data
	});
	
	$("#startTime").val("");
	$("#endTime").val("");
}
resetAction();

//重置新增修改框
function resetUpdate(){
	$('#input-serialNo').val("");
	$('#input-name').val("");
	$('#input-remark').val("");
	$('#input-status-disable').val("");
	$('#input-createDate').val("");
	$('#input-type').val("");

}
//新增修改框确定
function confirmAction(){
	//关闭窗口
	$('.theme-popover-mask').fadeOut(100);
	$('.theme-popover').slideUp(200);
	
	var serialNo = $('#input-serialNo').val();
	var name = $('#input-name').val();
	var remark = $('#input-remark').val();
	if( $("#input-status-disable")[0].checked==true){
		activated=false;
	}else{
		activated=true;
	}
	
	var timestamp = Date.parse(new Date($('#input-createdDate').val()));
	timestamp = timestamp / 1000;
	var createdDate = timestamp;
	var type = $('#input-type').val();
	if(type==null||type==""){
		type="user";
	}
	
	if(currentOp == 1){
		//新增
		$.ajax({
            type: "POST",
            url: "/api/user",
            dataType : 'json',
            contentType : 'application/json',
            data:JSON.stringify({
            	serialNo:serialNo,
            	name:name,
            	remark:remark,
            	activated:activated,
            	createdDate:createdDate,
            	type:type
            }),
            success: function(data){
         	   $.alert('添加成功！');
               }
        	});
		
	}else{
		//修改
		$.ajax({
            type: "PUT",
            url: "/api/user",
            dataType : 'json',
            contentType : 'application/json',
            data:JSON.stringify({
            	id:currentId,
            	serialNo:serialNo,
            	name:name,
            	remark:remark,
            	activated:activated,
            	createdDate:createdDate,
            	type:type
            }),
            success: function(data){
         	   $.alert('修改成功！');
               }
        	});
	}
	
}
//新增修改框取消
function cancelAction(){
	$('.theme-popover-mask').fadeOut(100);
	$('.theme-popover').slideUp(200);
}

</script>
</body>
</html>