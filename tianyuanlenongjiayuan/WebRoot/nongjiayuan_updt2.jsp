﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改农家院</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>


	<body>
			<form action="updateNongjiayuan2.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改农家院<input type="hidden" name="id" value="${nongjiayuan.id}" /></td>
						</tr>
						<tr ><td width="200">商家编号：</td><td><input name='shangjiabianhao' type='text' id='shangjiabianhao' value='' onblur='hsgcheck()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshangjiabianhao' /></td></tr>		<tr ><td width="200">商户名称：</td><td><input name='shanghumingcheng' type='text' id='shanghumingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshanghumingcheng' /></td></tr>		<tr ><td width="200">营业执照：</td><td><input name='yingyezhizhao' type='text' id='yingyezhizhao' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('yingyezhizhao')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr ><td width="200">服务热线：</td><td><input name='fuwurexian' type='text' id='fuwurexian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">商户地址：</td><td><input name='shanghudizhi' type='text' id='shanghudizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">主营项目：</td><td><input name='zhuyingxiangmu' type='text' id='zhuyingxiangmu' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">商户简介：</td><td><textarea name="shanghujianjie" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>		<tr ><td width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.shangjiabianhao.value='${nongjiayuan.shangjiabianhao}';</script>	<script language="javascript">document.form1.shanghumingcheng.value='${nongjiayuan.shanghumingcheng}';</script>	<script language="javascript">document.form1.yingyezhizhao.value='${nongjiayuan.yingyezhizhao}';</script>	<script language="javascript">document.form1.fuwurexian.value='${nongjiayuan.fuwurexian}';</script>	<script language="javascript">document.form1.shanghudizhi.value='${nongjiayuan.shanghudizhi}';</script>	<script language="javascript">document.form1.zhuyingxiangmu.value='${nongjiayuan.zhuyingxiangmu}';</script>	<script language="javascript">document.form1.shanghujianjie.value='${nongjiayuan.shanghujianjie}';</script>	<script language="javascript">document.form1.mima.value='${nongjiayuan.mima}';</script>	
					 </table>
			</form>
   </body>
</html>



<!--hssgchesck-->


<script language=javascript >  
 
 function checkform(){  
 
	var shangjiabianhaoobj = document.getElementById("shangjiabianhao"); if(shangjiabianhaoobj.value==""){document.getElementById("clabelshangjiabianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入商家编号</font>";return false;}else{document.getElementById("clabelshangjiabianhao").innerHTML="  "; } 	var shanghumingchengobj = document.getElementById("shanghumingcheng"); if(shanghumingchengobj.value==""){document.getElementById("clabelshanghumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入商户名称</font>";return false;}else{document.getElementById("clabelshanghumingcheng").innerHTML="  "; } 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
