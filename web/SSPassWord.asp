<!--#include file="Inc/Config.asp" -->
<!--#include file="Inc/md5VB.asp" -->
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
        <td height="39" valign="bottom" background="images/l_35.jpg"><table width="193" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="193" height="37" align="right" valign="bottom" class="k_16">��������һ�</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="1198" align="center" valign="top" background="images/l_36.jpg"><form name="form1" method="post" action="">
          <table width="670" border="0" align="center" cellpadding="4" cellspacing="0" class="boxlogin">
            <tr>
              <td height="35" colspan="2" align="left" background="img/index_title_bg.gif" id="err"><strong><a href="SSPassWord.asp"><font color="#FF0000">��������</font></a></strong> | <a href="SSSelect.asp"><font color="#FF0000"><strong>���߽����ѯ</strong></font></a></td>
            </tr>
            <tr>
              <td height="30" colspan="2" align="left" background="img/index_title_bg.gif" id="err"><strong>��������(�������߲����ܱ�֤һ�����һ���������,��������������뱣���������<a href="FindPassWord.asp">��������</a>)</strong></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" colspan="2" align="left" bgcolor="#F3F1EC"><div align="left" class="box3" id="usernameerr">������Ϸ����ע��ʱ����д������</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td width="208" height="35" align="left">��Ϸ�����û���:</td>
              <td width="412" height="30" align="left"><input name="UserName" type="text" class="input" id="UserName2" maxlength="20">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">ע��ʱ�õ�����:</div></td>
              <td height="30" align="left"><input name="Nmail" type="text" class="input" id="Nmail">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">ע��ʱ�õ����֤:</div></td>
              <td height="30" align="left"><input name="Ncode" type="text" class="input" id="Ncode">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">ע��ʱ�õĵ�ַ:</div></td>
              <td height="30" align="left"><input name="Nadd" type="text" class="input" id="Nadd">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">������ʾ����:</div></td>
              <td height="30" align="left"><input name="PassW" type="text" class="input" id="PassW">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">������ʾ��:</div></td>
              <td height="30" align="left"><input name="PassD" type="text" class="input" id="Ncode32">
                * ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">������ϵ��ʽ:</div></td>
              <td height="30" align="left"><input name="Tel" type="text" class="input" id="Tel">
                ����������,�ֻ�,�绰* ����</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td align="left"><div align="center">
                  <p>����:<br>
                    (����д��ϣ�����ĵ�����,����һЩת�ʼ�¼,ע��ʱ�������) </p>
              </div></td>
              <td align="left"><textarea name="Txt" cols="40" rows="5" id="PassD"></textarea>
                ��700��</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" colspan="2" align="left" bgcolor="#F3F1EC"><div align="left" class="box3" id="codeerr">��֤��:���������������ұߵ�����!</div></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center">��֤��:</div></td>
              <td height="35" align="left"><input name="getcode" type="text" class="input" id="getcode" style="ime-mode:disabled" onkeydown="if(event.keyCode==13)event.keyCode=9">
                  <%CxGame.Vcode2()%>
                  <input name="sspassword" type="hidden" id="login2" value="true">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="35" align="left"><div align="center"> </div></td>
              <td height="35" align="left"><input type="submit" name="Submit" value="ȷ������"></td>
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
    <td><img src="bookpic/DC173_02.jpg" width="1002" height="237"></td>
  </tr>
</table>
</body>
</html>