<!--#include file="Inc/Config.asp" -->
<!--#include file="Inc/md5VB.asp" -->
<%
IF Request.form("regok")<>"true" Then
	Response.Redirect("Reg.asp")
	Response.End
End IF
IF Request.Cookies("cxgame")("reg")="reok" Then
	Response.Write "<div align=""center""><font color=""#FF0000"" size=""+2"">�Բ���,����Ϸ����һ��IPһ��ֻ��ע��һ���û�!</font></div>"
	Response.End
End IF
dim introducer
introducer=replace(trim(request.Form("introducer")),"'","")
%>
<script language="javascript" src="passwordstrength.js"></script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #56cce6;
}
-->
</style>
<link href="images/css.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><!--#include file="top.asp"--></td>
  </tr>
</table>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="6" valign="top"><img src="images/L_33.jpg" width="6" height="384"></td>
    <td width="207" align="center" valign="top" bgcolor="#56CCE6"><table width="207" border="0" cellpadding="0" cellspacing="0" background="images/left_bj.jpg">
        <tr>
          <td align="center"><!--#include file="left.asp"--></td>
        </tr>
      </table></td>
    <td width="701" valign="top"><table width="699" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="39" valign="bottom" background="images/l_35.jpg"><table width="153" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="153" height="37" align="right" valign="bottom" class="k_16">���ע��</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="1198" align="center" valign="top" background="images/l_36.jpg"><form name="form2" method="post" action="reg2.asp" onsubmit="return place()">
          <table width="650" border="0" align="center" cellpadding="4" cellspacing="0" class="box3">
            <tr>
              <td height="35" colspan="2" id="err" background="img/index_title_bg.gif"><font color="#000000"><strong>ע���û�</strong></font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2" bgcolor="#E8F6FF"><div align="left" class="box3" id="usernameerr">��½�����Ϸ���ĵ��û��������֡���ĸ�����֡��»��ߵȶ���!</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td width="104"><div align="center">�û���:</div></td>
              <td width="398"><input name="UserName" type="text" class="input" id="UserName" value="<%=CxGame.GetInfo(0,"form","UserName")%>" maxlength="8">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2"><div align="left" class="box3" id="passworderr">�����������ĸ�����ֻ�����,6λ������,��ֹ����!</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">����ǿ��:</div></td>
              <td><script language="javascript">
		var psa = new PasswordStrength();
		psa.setSize("220","20");
		psa.setMinLength(1);
	    </script></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">��������:</div></td>
              <td><input name="PassWord" type="password" class="input" id="PassWord" value="<%=CxGame.GetInfo(0,"form","PassWord")%>" maxlength="14" onKeyUp="psa.update(this.value);">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">�ظ�����:</div></td>
              <td><input name="PassWord2" type="password" class="input" id="PassWord2" value="<%=CxGame.GetInfo(0,"form","PassWord2")%>" maxlength="14"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2" valign="top" bgcolor="#E8F6FF"><div align="left" class="box3" id="BankPassWorderr">��Ϸ��������,������ת��,ȡ����ʱ��Ҫ�õ���,�����벻Ҫ������������ɺ��û���������������ͬ�����������ĸ�����ֻ��</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td valign="top"><div align="center">����ǿ��:</div></td>
              <td height="30" valign="top"><script language="javascript">
		var ps = new PasswordStrength();
		ps.setSize("220","14");
		ps.setMinLength(1);
	    </script></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td valign="top"><div align="center">��Ϸ��������:</div></td>
              <td height="30" valign="top"><div align="left">
                  <input name="BankPassWord" type="password" class="input" id="PassWord3" value="<%=CxGame.GetInfo(0,"form","BankPassWord")%>" maxlength="20" onKeyUp="ps.update(this.value);">
              </div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">ȷ����������:</div></td>
              <td height="30"><input name="BankPassWord2" type="password" class="input" id="BankPassWord2" value="<%=CxGame.GetInfo(0,"form","BankPassWord2")%>" maxlength="20"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2" bgcolor="#E8F6FF"><div align="center" class="box3" id="getpass">����Ϊ����,��������ȷ��д,���μ�,���ܻ�����Ժ��һ�������������</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">�����Ա�</div></td>
              <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="42%"><select name="sex" id="select">
                        <option value="1" selected>��</option>
                        <option value="0">Ů</option>
                      </select>
                      ѡ��ͷ��
                      <select name="ff" id="ff" onChange="fff()">
                        <%
					Dim Y
					for Y=1 To 60 
					%>
                        <option value="<%=y%>"><%=y%></option>
                        <%
					Next
					%>
                      </select>
                    </td>
                    <td width="58%"><div id="f"></div></td>
                  </tr>
              </table></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">����:</div></td>
              <td height="30"><input name="Nmail" type="text" class="input" id="Nmail" value="<%=CxGame.GetInfo(0,"form","Nmail")%>"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">���֤:</div></td>
              <td height="30"><input name="Ncode" type="text" class="input" id="Ncode" value="<%=CxGame.GetInfo(0,"form","Ncode")%>"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">��ַ:</div></td>
              <td height="30"><input name="Nadd" type="text" class="input" id="Nadd" value="<%=CxGame.GetInfo(0,"form","Nadd")%>"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">������ʾ����:</div></td>
              <td height="30"><input name="PassW" type="text" class="input" id="PassW" value="<%=CxGame.GetInfo(0,"form","PassW")%>"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">������ʾ��:</div></td>
              <td height="30"><input name="PassD" type="text" class="input" id="Ncode32" value="<%=CxGame.GetInfo(0,"form","PassD")%>">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td colspan="2" bgcolor="#E8F6FF"><div align="left" class="box3" id="codeerr">��֤��:���������������ұߵ�����!</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center">�ƹ�Ա:</div></td>
              <td height="30"><input name="tuiguang" type="text" class="input" id="PassD" value="<%=introducer%>" /></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td><div align="center"> ��֤��:</div></td>
              <td height="30"><input name="getcode" type="text" class="input" id="GetCode" style="ime-mode:disabled" onkeydown="if(event.keyCode==13)event.keyCode=9" />
                  <%CxGame.Vcode2():CxGame.UserReg()%>
                  <input name="reg" type="hidden" id="reg" value="true" />
                  <input name="regok" type="hidden" id="regok" value="true" /></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="24">&nbsp;</td>
              <td height="30"><input type="submit" name="Submit" value="ע���û�" /></td>
            </tr>
          </table>
          <br>
          <br>
        </form></td>
      </tr>
      <tr>
        <td><img src="images/l_43.jpg" width="699" height="23"></td>
      </tr>
    </table></td>
    <td width="88" align="center" valign="top"><!--#include file="Right.asp"--></td>
  </tr>
</table>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><!--#include file="copy.asp"--></td>
  </tr>
</table>
<script>
function fff(){
f.innerHTML="<img src=ff/1_"+form2.ff.value+".jpg border=0>";
}
function place(){
    if(form2.UserName.value==""){
	alert("����д���û�����");
	form2.UserName.focus();
	return (false);
	}
	if(form2.UserName.value==form2.tuiguang.value){
	alert("�Լ��������Լ����ƹ�Ա��");
	form2.UserName.focus();
	return (false);
}
}
</script>
</body>
</html>
�