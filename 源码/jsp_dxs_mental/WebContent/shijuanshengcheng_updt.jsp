<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>试卷生成</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"shijuanshengcheng",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shijuanshengcheng"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shijuanshengcheng_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改试卷生成:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>试卷编号：</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='<%= mmm.get("shijuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>科目：</td><td><%=Info.getselect("kemu","kemuxinxi","kemu")%></td></tr><script language="javascript">document.form1.kemu.value='<%=mmm.get("kemu")%>';</script>
     <tr><td>题目：</td><td><input name='timu' type='text' id='timu' value='<%= mmm.get("timu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选择题：</td><td><input name='xuanzeti' type='text' id='xuanzeti' value='<%= mmm.get("xuanzeti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选择题数：</td><td><input name='xuanzetishu' type='text' id='xuanzetishu' value='<%= mmm.get("xuanzetishu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选择分值：</td><td><input name='xuanzefenzhi' type='text' id='xuanzefenzhi' value='<%= mmm.get("xuanzefenzhi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


