<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>选择题</title>
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
new CommDAO().update(request,response,"xuanzeti",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xuanzeti"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="xuanzeti_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改选择题:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>科目：</td><td><%=Info.getselect("kemu","kemuxinxi","kemu")%></td></tr><script language="javascript">document.form1.kemu.value='<%=mmm.get("kemu")%>';</script>
     <tr><td>题目：</td><td><input name='timu' type='text' id='timu' value='<%= mmm.get("timu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选项A：</td><td><input name='xuanxiangA' type='text' id='xuanxiangA' value='<%= mmm.get("xuanxiangA")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选项B：</td><td><input name='xuanxiangB' type='text' id='xuanxiangB' value='<%= mmm.get("xuanxiangB")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选项C：</td><td><input name='xuanxiangC' type='text' id='xuanxiangC' value='<%= mmm.get("xuanxiangC")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>选项D：</td><td><input name='xuanxiangD' type='text' id='xuanxiangD' value='<%= mmm.get("xuanxiangD")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>答案：</td><td><select name='daan' id='daan'><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select></td></tr><script language="javascript">document.form1.daan.value='<%=mmm.get("daan")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


