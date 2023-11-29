<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>试卷生成</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有试卷生成列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  科目：<%=Info.getselect("kemu","kemuxinxi","kemu"," 1=1 ")%>  题目：<input name="timu" type="text" id="timu" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shijuanshengcheng_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="164" bgcolor='#CCFFFF'>试卷编号</td>
    <td width="91" bgcolor='#CCFFFF'>科目</td>
    <td width="91" bgcolor='#CCFFFF'>题目</td>
    <td width="128" bgcolor='#CCFFFF'>选择题</td>
    <td width="164" bgcolor='#CCFFFF'>选择题数</td>
    <td width="167" bgcolor='#CCFFFF'>选择分值</td>
    
	<!--dpinglun1-->
    <td width="103" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="95" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shijuanshengcheng"); 
    String url = "shijuanshengcheng_list.jsp?1=1"; 
    String sql =  "select * from shijuanshengcheng where 1=1";
	
if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+request.getParameter("kemu")+"%'";}
if(request.getParameter("timu")=="" ||request.getParameter("timu")==null ){}else{sql=sql+" and timu like '%"+request.getParameter("timu")+"%'";}
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
    <td><%=map.get("shijuanbianhao") %></td>
    <td><%=map.get("kemu") %></td>
    <td><%=map.get("timu") %></td>
    <td><%=map.get("xuanzeti") %></td>
    <td><%=map.get("xuanzetishu") %></td>
    <td><%=map.get("xuanzefenzhi") %></td>
    
	<!--dpinglun2-->
    <td width="103" align="center"><%=map.get("addtime") %></td>
    <td width="95" align="center"><a href="shijuanshengcheng_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shijuanshengcheng_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="shijuanshengcheng_detail.jsp?id=<%=map.get("id")%>">详细</a> <a href="shijuan_detail2.jsp?id=<%=map.get("id")%>">试卷查看</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

