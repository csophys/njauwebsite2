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
       	</div>
       	<div id="rightArea">
       		<div id="imageArea">

       		</div>
       		<div id="moduleTitle"></div>
       		<div id="newsList">
       		<ul class="newsList">
       			 		<s:iterator value="@njau.org.action.DocumentAction@findDocument('新闻资讯')">
							<li>
							<span style="float:left;width: 60%;height:28px;overflow:hidden"><a  href="newsDetail?document.documentId=<s:property value='documentId'/>" ><s:property value="title" /></a></span><span style="margin-left:30px"></span>
							</li>
						</s:iterator>
			</ul>						
       		</div>
       		<div>
       		</div>
       	</div>
       </div>
 
   <!-- bottom 底部 -->   	 
 	<jsp:include page="bottom.jsp"></jsp:include>
   </div>
   </body>
</html>