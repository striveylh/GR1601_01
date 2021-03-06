<%--
  Created by IntelliJ IDEA.
  User: 晏利花
  Date: 2017/11/21
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--
首先需要说明，这是个伪模式窗口，样式好看，是在同一个页面上显示的div而已。
-->

<html>
<head>
    <meta charset="UTF-8">
    <title>精简模式窗口</title>
    <style type="text/css">
        /*层1的样式*/
        .div1{
            /*本层要实现覆盖模式窗口以外全部内容的半透明效果*/
            background-color:#000000;/*背景色*/
            position: absolute ;/*绝对定位，必选，使层绝对依照top,left的标准显示，否则将不能实现覆盖*/
            top:0;/*层与页面顶部距离*/
            left:0;/*层与左侧边距离*/
            z-index:1;/*当发生重叠时的优先级，数大的会覆盖数较小的，没进行设置的均可视为小于0*/
            display:none; /*层是否可见，初始化none不可见*/
            filter:Alpha(opacity=30);/*过滤颜色，设置透明度（可见度）30，数越小越透明*/
        }

        /*层2的样式*/
        .div2{
            /*本层显示在最前端，其它控件均不可用*/
            width:300px;/*显示宽度*/
            height:200px;/*显示高度*/
            position:absolute;/*绝对定位*/
            z-index:2;/*优先级*/
            display: none;/*是否显示*/
            border:3px inset blue; /*边框：宽度，样式，颜色*/
            background-color:#9999CC;/*背景色*/
        }
        /*当然你可以自定义添加或更改更多的样式都无所谓*/
    </style>


    <script type="text/javascript" language="JavaScript">
        //显示的方法，说明：前缀的div1、div2、body等，均为Id值
        function show()
        {
            div1.style.display="inline";//设置层1显示
            div1.style.width=body.clientWidth;//设置层1宽度等于body宽度，width=100%也可以，不过有一些误差，所以最好用这个
            div1.style.height=body.clientHeight;//设置层1高度满屏
            div2.style.display="inline";//设置层2的显示
            div2.style.top=body.clientHeight/2-div2.clientHeight/2;//设置层2的距顶位置居中算法
            div2.style.left=body.clientWidth/2-div2.clientWidth/2;//设置层2的距左位置居中算法
        }

        //关闭显示
        function closeShow()
        {
            div1.style.display="none";
            div2.style.display="none";
        }
    </script>
</head>
<body bgcolor="#CCFF00" id="body">
<!--测试按钮点击触发show()方法-->
<input type="button" value="测试按钮" onClick="show()"/>

<div id="div1" class="div1"></div><!--这是要覆盖网页的层，不必写任何东西-->

<div id="div2" class="div2"><!--这是弹出的模式窗口层-->
    <!--嵌套在层中的层，用来做标题栏，按个人需求定义-->
    <div id="div3" style="width:100%;height:20px; background-color:#0099FF" align="right">
        <label onClick="closeShow()" style="font-weight:bolder;cursor:hand">
            关闭&nbsp;&nbsp;<!--用来关闭显示，在label中加了onclick事件，与鼠标悬停手的样式-->
        </label>
    </div>
    <br>
    这个模式窗口很简单吧！就是这个意思，具体样式可以随意设置<!--层中的内容-->
</div>
</body>
</html>
