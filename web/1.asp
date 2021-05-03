<HTML>
<BODY>
<font color="green">
<%If Time<#12:00:00# And Time>=#00:00:00# Then%>
早上好，今天天气不赖啊 !
<%ElseIf Time<#19:00:00# And Time>=#12:00:00# Then%>
下午好 !
<%Else%>
哈喽 ! 今晚你有没有去 IRC 聊天 !
<%End If%>
</BODY>
</HTML>