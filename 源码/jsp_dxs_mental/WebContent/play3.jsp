<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>视频播放</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<BODY>

 <%
  String id=request.getParameter("id");
  
%>

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
                <TD width=817><span class="red"><strong>视频播放</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		 
		  <table width="700" height="184" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
            <tr>
              <td width="12" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
              <td width="680" height="800" valign="top" bgcolor="#FFFFFF"><%
						  HashMap m = new CommDAO().getmap(id,"shipinxinxi");
String lurl="",houzhui="";
lurl=(String)m.get("shipin");
houzhui=lurl.substring(lurl.length()-4,lurl.length());

if (houzhui== ".swf")
{
%>
                  <p align=center>
                    <OBJECT CLASSID=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 CODEBASE=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 WIDTH=541 HEIGHT=374>
                      <PARAM NAME=movie VALUE=<%=lurl%>>
                      <PARAM NAME=quality VALUE=high>
                      <EMBED SRC=<%=lurl%> QUALITY=high PLUGINSPAGE=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash TYPE=application/x-shockwave-flash WIDTH=541 HEIGHT=374></EMBED>
                    </OBJECT>
                    <% 
}

if (houzhui== ".mpg")
{
%>
                  <p align=center>
                    <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height=350 >
                      <param name=ShowStatusBar value=-1>
                      <param name=Filename value=<%=lurl%>>
                      <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=lurl%>   width=500 height=100></embed>
                    </object>
                    <% 
}
if ( houzhui.equals(".mid") || houzhui.equals(".wma") || houzhui.equals(".wmv")  )
{

%>
                  <p align=center>
                    <object classid=clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA id=RAOCX name=rmplay >
                      <param name="SRC" value="<%=lurl%>">
                      <param name="CONSOLE" value="Clip1">
                      <param name="CONTROLS" value="imagewindow">
                      <param name="AUTOSTART" value="true">
                      <embed src="<%=lurl%>" autostart="true" controls="ImageWindow" console="Clip1" width="650" height="585"> </embed>
                      　
                    </object>
                    <%
}
if (houzhui.equals(".mp3")  )
{

%>
                  <p align=center>
                    <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height="90" >
                      <param name=ShowStatusBar value=-1>
                      <param name=Filename value=<%=lurl%>>
                      <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=lurl%>   width=500 height="90"></embed>
                    </object>
                    <%
}
%>
                    </td>
              <td width="8" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
            </tr>
          </table></TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%></BODY></HTML>
