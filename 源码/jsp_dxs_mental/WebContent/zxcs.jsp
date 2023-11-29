<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>大学生思想建设与心理健康网站</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<BODY>



<%@ include file="qttop.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD vAlign=top width=230>
     <%@ include file="qtleft.jsp"%>
      </TD>
    <TD vAlign=top width=10>&nbsp;</TD>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=bottom height=40>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=50 height=40><IMG height=35 
                  src="qtimages/B0039.gif" 
                  width=30></TD>
                <TD width=817><span class="red"><strong>在线测试</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6><table id="__01" width="67%" height="193" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="162" align="center">
                  <p> 时间：1小时，现在开始计时！剩余<SPAN id=tiao></SPAN>秒
                    <SCRIPT language=javascript>
<!--
function clock(){i=i-1
document.getElementById('tiao').innerHTML=i;
if(i>0) {
setTimeout("clock();",1000);
}
else {

alert("考试时间到，系统自动交卷！");
document.form1.submit();
}
}
var i=3600
clock()
//-->
              </SCRIPT>
                  </p>
                <form name="form1" action="jiaojuan.jsp">
                    <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
                      <tr>
                        <td height="33" colspan="2">选择题</td>
                      </tr>
                      <%
											
 String sql="select  * from xuanzeti  order by id";
  //RS_result=connDbBean.executeQuery(sql);
 String id="";
String timu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";String kemumingcheng="";
 String addtime="";
 int i=0;
 
 for(HashMap map:new CommDAO().select(sql)){
 
 
 //while(RS_result.next()){
 i=i+1;
 if(i<=5)
 {
 id=(String)map.get("id");
timu=(String)map.get("timu");xuanxiangA=(String)map.get("xuanxiangA");
xuanxiangB=(String)map.get("xuanxiangB");xuanxiangC=(String)map.get("xuanxiangC");xuanxiangD=(String)map.get("xuanxiangD");
daan=(String)map.get("daan");
//nanyichengdu=map.get("nanyichengdu");
 addtime=(String)map.get("addtime");
 
											%>
                      <tr>
                        <td width="9%" height="33">试题<%=i%>：</td>
                        <td>题目：<%=timu%>
                            <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
                      </tr>
                      <tr>
                        <td rowspan="4">选项</td>
                        <td width="91%"><input type="radio" name="xztxxa<%=i%>" value="A">
                          选项A：<%=xuanxiangA%></td>
                      </tr>
                      <tr>
                        <td><input type="radio" name="xztxxa<%=i%>" value="B">
                          选项B：<%=xuanxiangB%></td>
                      </tr>
                      <tr>
                        <td><input type="radio" name="xztxxa<%=i%>" value="C">
                          选项C：<%=xuanxiangC%></td>
                      </tr>
                      <tr>
                        <td><input type="radio" name="xztxxa<%=i%>" value="D">
                          选项D：<%=xuanxiangD%></td>
                      </tr>
                      <%
					  }
											  }
											  %>
                    </table>
                 
                  <p>
                      <input type="submit" name="Submit4" value="交卷">
                    </p>
                </form>
                <p>&nbsp;</p></td>
            </tr>
          </table></TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%></BODY></HTML>
