<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<%    
		String path = request.getContextPath();    
		String base = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
	%> 
	<script type="text/javascript">
		var base = '<%=base %>';
	</script>

	<link rel="stylesheet" type="text/css" href="<%=base %>css/index.css">
	
	<script type="text/javascript" src="<%=base %>js/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=base %>js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/Javascript" src="<%=base %>js/jquery.slides.min.js"></script>
	
</head>
			
	

<body >
   <!-- 网站主体 -->
   <div  id="website-body"  >
   
   <!-- header部门，包括banner和menu -->
   <jsp:include page="head.jsp"></jsp:include>


   <!-- main body，中间部分 -->
       <div>
       	<div class="leftNavigation">
       		<ul class="newsList">
       		  <li><a href="">项目公告</a></li>
       		  <li><a href="">学术动态</a></li>
       		  <li><a href="">图片新闻</a></li>       		         		         		  
       		</ul>
       	</div>
       	<div class="rightArea" >
       		<div id="imageArea">
       			 <img  src="images/image2.jpg"></img>
       		</div>
       		<table>
       		<tr><td><img src="images/moduleNameIcon.jpg"></td><td><span class="moduleName">科研动态</span></td></tr>
       		</table>
       		<!--  <div id="moduleTitle"><span class="moduleName">科研动态</span></div> -->
       		<div>
 				  <s:property value="document.content" escape="false"/>					
       		</div>
      		
       	</div>
       </div>
 
   <!-- bottom 底部 -->   	 
 	<jsp:include page="bottom.jsp"></jsp:include>
   </div>
   </body>
</html>