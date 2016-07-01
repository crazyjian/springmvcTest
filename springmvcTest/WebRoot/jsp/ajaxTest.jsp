<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.3/jquery.js"></script>  
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=utf8">  
<title>Insert title here</title>  
<script type="text/javascript">  
    function ajaxTest(){  
        $.ajax({  
        data:{a:1,b:2,c:3},  
        type:"GET",  
        dataType: 'json',  
        url:"ajax",  
        error:function(data){  
            alert("出错了！！:"+data.msg);  
        },  
        success:function(data){  
            alert("success:"+data.msg);  
            $("#result").html(data.msg) ;  
        }  
        });  
    }  
</script>  
</head>  
<body>  
    <input type="text" name="name" id="name"/>  
    <input type="submit" value="登录" onclick="ajaxTest();"/>  
    <div id="result"></div>  
</body>  
</html> 