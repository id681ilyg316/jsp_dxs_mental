<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>试卷生成详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"shijuanshengcheng");
     %>
  试卷生成详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>试卷编号：</td><td width='39%'><%=m.get("shijuanbianhao")%></td><td width='11%'>科目：</td><td width='39%'><%=m.get("kemu")%></td></tr><tr><td width='11%'>题目：</td><td width='39%'><%=m.get("timu")%></td><td width='11%'>选择题：</td><td width='39%'><%=m.get("xuanzeti")%></td></tr><tr><td width='11%'>选择题数：</td><td width='39%'><%=m.get("xuanzetishu")%></td><td width='11%'>选择分值：</td><td width='39%'><%=m.get("xuanzefenzhi")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


