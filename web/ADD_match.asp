<!--#include file="Inc/Config.asp" -->
<!--#include file="Inc/md5VB.asp" -->
<%
  dim id
  id=replace(trim(request.Form("C_id")),"'","")
  if id="" or isnumeric(id)=false then
     response.Write("<script language='javascript'>alert('�Ƿ�������');window.close();</script>")
	 response.End()
  end if
%>
<%
  dim Username,IDCard,Age,Profession,PhoneNo,Address,ClientIP,U_name
  Username=replace(trim(request.Form("Username")),"","'")
  IDCard=replace(trim(request.Form("IDCard")),"","'")
  Age=replace(trim(request.Form("Age")),"","'")
  Profession=replace(trim(request.Form("Profession")),"","'")
  PhoneNo=replace(trim(request.Form("PhoneNo")),"","'")
  Address=replace(trim(request.Form("Address")),"","'")
  ClientIP=request.ServerVariables("REMOTE_ADDR")
  U_name=replace(trim(request.Form("U_name")),"","'")
  'response.Write ClientIP
  if isnumeric(Age)=false then
  response.Write("<script language='javascript'>alert('��������д����');history.go(-1);</script>")
  response.End()
  end if
%>
<%CxGame.DbConn("QPGameUserDB")%>
<%
  dim sql,userid
  set rs=server.CreateObject("adodb.recordset")
  sql="select top 1 * from AccountsInfo where Accounts ='"& username &"'"
  
  rs.open sql,conn,1,1
  'response.Write rs.eof
  if rs.eof then
  response.Write("<script language='javascript'>alert('��Ϸ���޴��ʻ�,��ȷ����д');history.go(-1);</script>'")
  response.End()
  else
  userid=rs("userid")
  end if
  rs.close
  'response.Write userid  
%>
<%CxGame.DbConn("News")%>
<%
  sql="select top 1 jinbi from jinbi"
  rs.open sql,conn,1,1
  if not rs.eof then
  dim jinbi
  jinbi=rs(0)
  end if
  rs.close
%>
<%CxGame.DbConn("QPTreasureDB")%>
<%
  sql="select * from GameScoreInfo where userid="& userid &""
  rs.open sql,conn,1,1
  if not rs.eof then
    if clng(rs("score"))<jinbi then 
	response.Write("<script language='javascript'>alert('����ʻ�����"& jinbi &",���ܽ��б���,�뾡���ֵ');history.go(-1);</script>")
	response.End()
	end if
	dim sqc
	sqc="update GameScoreInfo set score=score-"& jinbi &" where userid="&userid
	conn.execute(sqc)
  else
  response.Write("<script language='javascript'>alert('���½��Ϸ���ٽ��б���');history.go(-1);</script>")
  response.End()
  end if
  rs.close
%>
<%CxGame.DbConn("News")%>
<%
  sql="select * from C_content where C_id='"& id &"'"
  rs.open sql,conn,1,1
  if not rs.eof then
     if DATEDIFF("s", rs("C_time"), now()) > rs("C_date")*86400 then
	 response.Write("<script language='javascript'>alert('�����в��ܱ���');history.go(-1);</script>")
	 response.End()
	 end if
  end if
  rs.close
%>
<%
  sql="select * from MatchUserInfo where username='"& username &"' and C_id='"& id &"'"
  rs.open sql,conn,1,1
  if not rs.eof then
  response.Write("<script language='javascript'>alert('���Ѿ�������');location.href='index.asp';</script>")
  response.End()
  end if
  sql="insert into MatchUserInfo (Username,IDCard,Age,Profession,PhoneNo,Address,ClientIP,u_name,C_id) VALUES ('"&Username&"','"&IDCard&"','"&Age&"','"&Profession&"','"&PhoneNo&"','"&Address&"','"&ClientIP&"','"& U_name &"','"& id &"')"
  'response.Write sql
  'response.End()
  conn.execute(sql)
  response.Write("<script language='javascript'>alert('�����ɹ�');location.href='index.asp';</script>")
  response.End()
%>