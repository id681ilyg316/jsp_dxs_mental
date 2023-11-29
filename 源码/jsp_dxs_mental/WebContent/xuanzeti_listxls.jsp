<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuanzeti.xls");
%>
<html>
  <head>
    <title>选择题</title>
  </head>

  <body >
  <p>已有选择题列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>科目</td>    <td bgcolor='#CCFFFF'>题目</td>    <td bgcolor='#CCFFFF'>选项A</td>    <td bgcolor='#CCFFFF'>选项B</td>    <td bgcolor='#CCFFFF'>选项C</td>    <td bgcolor='#CCFFFF'>选项D</td>    <td bgcolor='#CCFFFF'>答案</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "xuanzeti_list.jsp?1=1"; 
    String sql =  "select * from xuanzeti where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kemu") %></td>    <td><%=map.get("timu") %></td>    <td><%=map.get("xuanxiangA") %></td>    <td><%=map.get("xuanxiangB") %></td>    <td><%=map.get("xuanxiangC") %></td>    <td><%=map.get("xuanxiangD") %></td>    <td><%=map.get("daan") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

