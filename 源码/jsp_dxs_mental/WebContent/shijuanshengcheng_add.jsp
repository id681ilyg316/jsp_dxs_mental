<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>试卷生成</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shijuanshengcheng_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan
String shijuanbianhao=request.getParameter("shijuanbianhao");String kemu=request.getParameter("kemu");String xuanzeti=request.getParameter("xuanzeti");
for(HashMap map:new CommDAO().select("select top 10 id from xuanzeti where kemu='"+kemu+"' order by newid()")){
id=id+map.get("id")+",";
}
id=id.substring(0,id.length()-1);
		 String id2="";
 
ext.put("xuanzeti",id);




}
new CommDAO().insert(request,response,"shijuanshengcheng",ext,true,false,""); 
%>

  <body >
 <form  action="shijuanshengcheng_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加试卷生成:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">试卷编号：</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td>科目：</td><td><%=Info.getselect("kemu","kemuxinxi","kemu")%>&nbsp;*<label id='clabelkemu' /></td></tr>
		<tr><td  width="200">题目：</td><td><input name='timu' type='text' id='timu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeltimu' /></td></tr>
		<tr><td  width="200">选择题：</td><td><input name='xuanzeti' type='text' id='xuanzeti' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">选择题数：</td><td><input name='xuanzetishu' type='text' id='xuanzetishu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">选择分值：</td><td><input name='xuanzefenzhi' type='text' id='xuanzefenzhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var kemuobj = document.getElementById("kemu"); if(kemuobj.value==""){document.getElementById("clabelkemu").innerHTML="&nbsp;&nbsp;<font color=red>请输入科目</font>";return false;}else{document.getElementById("clabelkemu").innerHTML="  "; } 
	var timuobj = document.getElementById("timu"); if(timuobj.value==""){document.getElementById("clabeltimu").innerHTML="&nbsp;&nbsp;<font color=red>请输入题目</font>";return false;}else{document.getElementById("clabeltimu").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


