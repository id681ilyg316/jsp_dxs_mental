<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>留言板</title>
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
new CommDAO().update(request,response,"liuyanban",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"liuyanban"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="liuyanban_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改留言板:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>联系手机：</td><td><input name='lianxishouji' type='text' id='lianxishouji' value='<%= mmm.get("lianxishouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>留言老师：</td><td><%=Info.getselect("liuyanlaoshi","jiaoshixinxi","gonghao")%></td></tr><script language="javascript">document.form1.liuyanlaoshi.value='<%=mmm.get("liuyanlaoshi")%>';</script>
     <tr><td>内容：</td><td><textarea name='neirong' cols='50' rows='5' id='neirong' style='border:solid 1px #000000; color:#666666'><%=mmm.get("neirong")%></textarea></td></tr>
     <tr style='display:none'><td>回复：</td><td><textarea name='huifu' cols='50' rows='5' id='huifu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("huifu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


