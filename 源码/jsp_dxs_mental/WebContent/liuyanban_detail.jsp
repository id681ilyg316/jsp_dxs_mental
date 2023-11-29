<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>留言板详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"liuyanban");
     %>
  留言板详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>用户名：</td><td width='39%'><%=m.get("yonghuming")%></td>
<td width='11%'>邮箱：</td><td width='39%'><%=m.get("youxiang")%></td></tr><tr>
<td width='11%'>联系手机：</td><td width='39%'><%=m.get("lianxishouji")%></td>
<td width='11%'>留言老师：</td><td width='39%'><%=m.get("liuyanlaoshi")%></td></tr>
<tr>
  <td height="171">内容：</td>
  <td colspan="3"><%=m.get("neirong")%></td>
  </tr>
<tr>
<td width='11%' height="192">回复：</td><td colspan="3"><%=m.get("huifu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>


