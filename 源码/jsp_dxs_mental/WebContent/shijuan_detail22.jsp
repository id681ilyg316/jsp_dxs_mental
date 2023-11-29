 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
 <%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}



%>
<html>
 <head>
    
    <title>试卷生成</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>

  <body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table id="__01" width="100%" height="193" border="0" cellpadding="0" cellspacing="0">
    
    <tr>
      <td height="162" align="center">
	  <%
  String id=request.getParameter("id");
  String sql="",nnn="",bianhao="",bbb="",ccc="",ddd="";
											sql="select * from shijuanshengcheng where id="+id+"";
								for(HashMap map:new CommDAO().select(sql)){
								// while(RS_result.next()){
								 nnn=(String)map.get("danxuanti");
								 bianhao=(String)map.get("shijuanbianhao");
								 bbb=(String)map.get("tiankongti");
								 ccc=(String)map.get("panduanti");
								
								 }
   %>
            <p>试卷编号：<%=bianhao%></p>
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="2">单选题(题数10，每题5分)</td>
              </tr>
              <%
											
  sql="select * from danxuanti where id in ("+nnn+")";
  
  sql=sql+" order by id desc";
  //RS_result=connDbBean.executeQuery(sql);
  id="";
String timu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";String kemumingcheng="";
 String addtime="";
 int i=0;
 
 for(HashMap map:new CommDAO().select(sql)){
 
 
 //while(RS_result.next()){
 i=i+1;
 id=(String)map.get("id");
timu=(String)map.get("shiti");xuanxiangA=(String)map.get("xuanxiangA");
xuanxiangB=(String)map.get("xuanxiangB");xuanxiangC=(String)map.get("xuanxiangC");xuanxiangD=(String)map.get("xuanxiangD");
daan=(String)map.get("daan");
//nanyichengdu=map.get("nanyichengdu");
 addtime=(String)map.get("addtime");
 
											%>
              <tr>
                <td width="8%" height="33">试题<%=i%>：</td>
                <td>题目：<%=timu%>
                    <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td rowspan="4">选项</td>
                <td width="92%"><input type="radio" name="xztxxa<%=i%>" value="A">
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
											  %>
            </table>
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="3">填空题(题数5，每题5分)</td>
              </tr>
              <%
											
  sql="select * from tiankongti where id in ("+bbb+")";
  
  sql=sql+" order by id desc";
  //RS_result=connDbBean.executeQuery(sql);
  id="";
  i=0;
 
 for(HashMap map:new CommDAO().select(sql)){
 
 
 
 //while(RS_result.next()){
 i=i+1;
 id=(String)map.get("id");
timu=(String)map.get("shiti");
daan=(String)map.get("daan");
//nanyichengdu=map.get("nanyichengdu");
 addtime=(String)map.get("addtime");
 
											%>
              <tr>
                <td width="9%" height="33">试题<%=i%>：</td>
                <td colspan="2">题目：<%=timu%>
                    <input name="tdtshitida<%=i%>" type="hidden" id="tdtshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td>答案：</td>
                <td colspan="2"><input name="tktdaan<%=i%>" type="text" id="tktdaan<%=i%>"></td>
              </tr>
              
              <%
											  }
											  %>
            </table>            
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="3">判断题(题数5，每题5分)</td>
              </tr>
              <%
											
  sql="select * from panduanti where id in ("+ccc+")";
  
  sql=sql+" order by id desc";
 // RS_result=connDbBean.executeQuery(sql);
  id="";
  i=0;
 
 
 
  for(HashMap map:new CommDAO().select(sql)){
 
 i=i+1;
 id=(String)map.get("id");
timu=(String)map.get("shiti");
daan=(String)map.get("daan");
//nanyichengdu=map.get("nanyichengdu");
 addtime=(String)map.get("addtime");
 
											%>
              <tr>
                <td width="9%" height="33">试题<%=i%>：</td>
                <td colspan="2">题目：<%=timu%>
                    <input name="pdtshitida<%=i%>" type="hidden" id="pdtshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td>答案：</td>
                <td colspan="2"><input type="radio" name="pdtxxa<%=i%>" value="对"> 
                  对
                    <input type="radio" name="pdtxxa<%=i%>" value="错">
                    错</td>
              </tr>
              <%
											  }
											  %>
            </table>            
          <p>&nbsp;</p>
      </td>
    </tr>
  </table>
  </body>
</html>

