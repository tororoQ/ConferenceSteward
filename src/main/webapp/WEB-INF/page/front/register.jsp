<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="<%=basePath%>">
    
    <title>会管家</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<style type="text/css">
		.form-horizontal{
		    background: #fff;
		    padding-bottom: 40px;
		    border-radius: 15px;
		    text-align: center;
		}
		.form-horizontal .heading{
		    display: block;
		    font-size: 35px;
		    font-weight: 700;
		    padding: 35px 0;
		    border-bottom: 1px solid #f0f0f0;
		    margin-bottom: 30px;
		}
		.form-horizontal .form-group{
		    padding: 0 40px;
		    margin: 0 0 25px 0;
		    position: relative;
		}
		.form-horizontal .form-control{
		    background: #f0f0f0;
		    border: none;
		    border-radius: 20px;
		    box-shadow: none;
		    padding: 0 20px 0 45px;
		    height: 40px;
		    transition: all 0.3s ease 0s;
		}
		.form-horizontal .form-control:focus{
		    background: #e0e0e0;
		    box-shadow: none;
		    outline: 0 none;
		}
		.form-horizontal .form-group i{
		    position: absolute;
		    top: 12px;
		    left: 60px;
		    font-size: 17px;
		    color: #c8c8c8;
		    transition : all 0.5s ease 0s;
		}
		.form-horizontal .form-control:focus + i{
		    color: #00b4ef;
		}
		.form-horizontal .fa-question-circle{
		    display: inline-block;
		    position: absolute;
		    top: 12px;
		    right: 60px;
		    font-size: 20px;
		    color: #808080;
		    transition: all 0.5s ease 0s;
		}
		.form-horizontal .fa-question-circle:hover{
		    color: #000;
		}
		.form-horizontal .main-checkbox{
		    float: left;
		    width: 20px;
		    height: 20px;
		    background: #11a3fc;
		    border-radius: 50%;
		    position: relative;
		    margin: 5px 0 0 5px;
		    border: 1px solid #11a3fc;
		}
		.form-horizontal .main-checkbox label{
		    width: 20px;
		    height: 20px;
		    position: absolute;
		    top: 0;
		    left: 0;
		    cursor: pointer;
		}
		.form-horizontal .main-checkbox label:after{
		    content: "";
		    width: 10px;
		    height: 5px;
		    position: absolute;
		    top: 5px;
		    left: 4px;
		    border: 3px solid #fff;
		    border-top: none;
		    border-right: none;
		    background: transparent;
		    opacity: 0;
		    -webkit-transform: rotate(-45deg);
		    transform: rotate(-45deg);
		}
		.form-horizontal .main-checkbox input[type=checkbox]{
		    visibility: hidden;
		}
		.form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
		    opacity: 1;
		}
		.form-horizontal .text{
		    float: left;
		    margin-left: 7px;
		    line-height: 20px;
		    padding-top: 5px;
		    text-transform: capitalize;
		}
		.form-horizontal .btn{
		    float: right;
		    font-size: 14px;
		    color: #fff;
		    background: #00b4ef;
		    border-radius: 30px;
		    padding: 10px 25px;
		    border: none;
		    text-transform: capitalize;
		    transition: all 0.5s ease 0s;
		}
		@media only screen and (max-width: 479px){
		    .form-horizontal .form-group{
		        padding: 0 25px;
		    }
		    .form-horizontal .form-group i{
		        left: 45px;
		    }
		    .form-horizontal .btn{
		        padding: 10px 20px;
		    }
		}
	</style>
	<!--[if IE]>
		<script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<![endif]-->
	
  </head>
  
  <body style="background:#00b4ef">
	
	<div class="demo" style="padding: 20px 0;">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-3 col-md-6">
					<form action="user/insert" method="post" class="form-horizontal">
						<span class="heading">用户注册</span>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">姓名：</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="userName" style="border:1px;width: 310px;height: 30px" >
							</div>
						</div>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">密码：</label>
							<div class="col-sm-4">
								<input class="form-control" type="password" name="userPassword" style="border:1px; width: 310px;height: 30px">
							</div>
						</div>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">确认密码：</label>
							<div class="col-sm-4">
								<input class="form-control" type="password" name="userPassword1" style="border:1px; width: 310px;height: 30px">
							</div>
						</div>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">性别：</label>
							<div class="col-sm-4">
								<select name="userSex" class="form-control">
									<option>男</option>
									<option>女</option>
								</select>
							</div>
						</div>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">年龄：</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="userAge" style="border:1px; width: 310px;height: 30px">
							</div>
						</div>
						<div class="form-group" style="margin:30px 0">
							<label class="col-sm-3 control-label">邮箱：</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="userEmail" style="border:1px;width: 310px;height: 30px" >
							</div>
						</div>
						<div class="form-group">
                            <div class="col-sm-6 col-sm-offset-3">
                                <button type="reset" class="btn btn-default" style="margin-left: 20px">重置</button>
                                 &nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="submit" class="btn btn-default">注册</button>
                            </div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div style="text-align:center;">

</div>
</body>
</html>
