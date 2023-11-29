
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
  <%
 

String tmp1;
String tmp2;
int i=0;
int df=0,df2=0,df3=0,df4=0,dfz=0;
for (i=1;i<=5;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("xztshitida"+String.valueOf(i));
	tmp2=request.getParameter("xztxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		//out.print(i);
		if(tmp1.equals(tmp2))
		{
		df=df+20;
		}
	}
}

if(df>=80)
{
  	  	out.print("<script>alert('测试!!您本次成绩为"+df+"分，您的心理非常健康！');location.href='index.jsp';</script>");
}
if(df>=60 && df<80)
{
  	  	out.print("<script>alert('测试!!您本次成绩为"+df+"分，您的心理基本健康！');location.href='index.jsp';</script>");
}
if(df>=40 && df<60)
{
  	  	out.print("<script>alert('测试!!您本次成绩为"+df+"分，您的心理有点问题！');location.href='index.jsp';</script>");
}
if(df>=20 && df<40)
{
  	  	out.print("<script>alert('测试!!您本次成绩为"+df+"分，您的心理很有问题！');location.href='index.jsp';</script>");
}
if(df>=0 && df<20)
{
  	  	out.print("<script>alert('测试!!您本次成绩为"+df+"分，您的心理不健康！');location.href='index.jsp';</script>");
}



String sql;
sql="insert into chengji(yonghuming,xingming,xingbie,ceshijieguo) values('"+request.getSession().getAttribute("username")+"','"+request.getSession().getAttribute("xm")+"','"+request.getSession().getAttribute("xb")+"',"+df+")";
	new CommDAO().commOper(sql); 

 %>
  </body>
</html>

