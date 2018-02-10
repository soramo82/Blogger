<!doctype html>
<html>
<head>
    {include file="_head.tpl"}
</head>
<body class="main">
{if $tplModule ne '_login.tpl'}
<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{$URL}">
        <span>
            <img src="{$URL}/images/admin/Blogger.jpg" alt="LOGO" width="100px" />
            سامانه مدیریت BMS Blogger
        </span>
        </a>
    </div>
    <!-- Top Menu Items -->
    <ul class="nav navbar-left top-nav">
<!--            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
            </a>
        </li>            
-->            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$esmfamil} <b class="fa fa-angle-down"></b></a>
            <ul class="dropdown-menu">
                <li><a href="{$URL}/index.php?option=adm_adminpersonaledit"><i class="fa fa-fw fa-user"></i> ویرایش</a></li>
                <li><a href="#"><i class="fa fa-fw fa-cog"></i> تغییر پسورد</a></li>
                <li class="divider"></li>
                <li><a href="index.php?option=adm_login&logout=1"><i class="fa fa-fw fa-power-off"></i> خروج</a></li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="index.php?option=adm_home"><i class="fa fa-fw fa-home fa-lg"></i>  خانه</a>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-folder-open"></i> وبلاگ‌ها <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-1" class="collapse">
                    <li><a href="index.php?option=adm_weblog-list">لیست وبلاگ‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_weblog-admin">وبلاگ جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-book"></i>  مطالب <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-2" class="collapse">
                    <li><a href="index.php?option=adm_post-list">لیست پست‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_post-admin">پست جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>

<div id="wrapper">
    <!-- Navigation -->

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
	                <h1 style="text-align:center">{$title}</h1>
                    {if $URL eq "http://localhost/avvalmoshaver"}دسترسی لوكال {/if}
                    {include file=$tplModule}
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
<script>
$(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-left").addClass("fa-angle-down");
    });
    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-left");        
    });
})    
</script>    

{else}
	{include file=$tplModule}
{/if}
</body>
</html>
