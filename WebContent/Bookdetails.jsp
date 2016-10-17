<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书信息</title>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
</script>
<script type="text/javascript">
function deletes(e)
{
	var ISBN = document.getElementById("ISBN");
	alert(ISBN.innerHTML);
	window.location.href = "delete?ISBN="+ISBN.innerHTML;
}
function updates(s){
	var ISBN = document.getElementById("ISBN");
	window.location.href = "update?ISBN="+ISBN.innerHTML;
}
</script>
</head>
	<body>
		<h1>图书简介</h1>
		<p id="ISBN">
		<s:property value = "ISBN"/></p>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		AuthorID:<s:property value = "AuthorID"/>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		Publisher:<s:property value = "Publisher"/>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		PublishDate:<s:property value = "PublishDate"/>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		Price:<s:property value = "Price"/>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		<p clickable="clickable" onclick="deletes(this);">
		删除本册图书（点我）
		</p>
		<p clickable="clickable" onclick="updates(this);">
		更新本书数据（点我）
		</p>
	</body>
</html>