<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", -10);

	AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();
	Map attributes = principal.getAttributes();
	String userId = String.valueOf(attributes.get("userId"));
	String userCode = String.valueOf(attributes.get("userCode"));
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>登录</title>
<script type="text/javascript" >
	var usercode = "<%=userCode%>";
</script>
<script type="text/javascript" src="../common/js/easyUI-Import.js"></script>
<script type="text/javascript" src="../common/js/commonFunc.js"></script>
<script type="text/javascript" src="loginforcas.js"></script>
<link rel="shortcut icon" href="themes/default/images/favicon.ico" /></link>
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr style="background: url(images/top_bg02.gif) repeat-x;">
			<td width="100" height="90">&nbsp;</td>
			<td valign="middle"><img src="images/lg_logo02.png" width="480"
				height="60" /></td>
			<td>&nbsp;</td>
		</tr>
		<tr class="bg">
			<td height="550"></td>
			<td>
				<form id="loginForm" method="post" >
					<div class="login">
					<div style="width:349px;height:18px;margin:0 auto;">
						<div id="pwd_error" class="false">提示：用户名或密码错误，请重新输入！</div>
						<div id="validate_error" class="false">提示：验证码错误，请重新输入！</div>
						<div id="code_error" class="false">提示：程序出现异常！</div>
						<div id="accountforbidden_error" class="false">提示：账号已停用！</div>
					</div>
						<table cellspacing="0" cellpadding="0">
							<!-- <input type="text" class="input" value="用户名" />  -->
							<tr>
								<td colspan="2">
									<div style="margin: 6px 32px 6px 32px;">
										<input class="easyui-textbox"
											data-options="height:'45px',width:'349px'" id="USERID"
											name="USERID" required="true" missingMessage="不能为空" value="用户名" tipPosition="left"/>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div style="margin: 6px 32px 6px 32px;">
										<span id='qiaoPwdTip'> <input class="easyui-textbox"  style=""
											data-options="height:'45px',width:'349px'" id="PASSWORDTIP" tipPosition="left"
											value="密码"/> </span>
										<span id='qiaoPwd'  style="display: none"><input class="easyui-textbox" type="password" 
											data-options="height:'45px',width:'349px'" id="PASSWORD" tipPosition="left"
											name="PASSWORD" required="true" missingMessage="不能为空" /></span>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="margin: 6px 32px 6px 32px;">
										<input class="easyui-textbox" style=""
											data-options="height:'45px',width:'130px'" id="validateCode"
											required="true" missingMessage="不能为空" value="验证码" tipPosition="left"/>
									</div>
								</td>
								<td>
									<div style="margin: 6px 0px 6px 0px;" class="yzm">
										<div class="pic">
											<img src="validatecode.jsp" style="position:relative;top:0px;width:84px;height:40px" onclick="changeValidateImg()"  id="imgcode" />
										</div>
										<div class="hyz">
											<a href="javascript:void(0);" onclick="changeValidateImg()">换一张</a>
										</div>
										<div class="sx">
											<a href="javascript:void(0);" onclick="changeValidateImg()"><img src="images/sx.png" width="22"
												height="20" /></a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div style="margin: 6px 32px 6px 32px;">
										<input name="提交" type="button" class="lg" value="登 录" onclick="login()"/>
									</div>
								</td>
							</tr>

						</table>

						
					</div>
				</form>
			</td>

			<td></td>
		</tr>
		<tr style="background: url(images/bottom_bg02.gif) repeat-x;">
			<td height="30">&nbsp;</td>
			<td align="center" valign="middle" style="color: #666666;">拓维信息系统股份有限公司版权所有@2015</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>