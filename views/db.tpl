<!DOCTYPE html>
<html lang="en">
    <head>
        <title>{{.Conn.db_title}} - 数据库字典 - {{ .Appname }}</title>
        {{ template "public/header.tpl" }}
        <link rel="stylesheet" href="static/js/jQuery.ValidationEngine/css/validationEngine.jquery.css" type="text/css"/>
    </head>

    <body>
        {{ template "public/top_navbar.tpl" . }}
        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try{ace.settings.check('main-container' , 'fixed')}catch(e){}
            </script>
            <div class="main-container-inner">
                {{ template "public/left_sidebar.tpl" . }}
                <div class="main-content">
                    <div class="breadcrumbs" id="breadcrumbs">
                        <script type="text/javascript">
                            try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                        </script>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home home-icon"></i>
                                <a href="/">Home</a>
                            </li>
                            <li>
                                {{.Conn.db_title}}
                            </li>
                        </ul><!-- .breadcrumb -->
                    </div>

                    <div class="page-content">               
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="row">
                                    <h3 class="header smaller lighter purple">
                                        基本信息
                                    </h3>
                                    <div class="col-sx-12">
                                        
                                    </div>
                                </div>    
                            </div>
                        </div>        
                    </div><!-- /.page-content -->
                </div><!-- /.main-content -->
            </div><!-- /.main-container-inner -->
            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="icon-double-angle-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->

        <!-- basic scripts -->

        <script src="static/js/jquery-2.0.3.min.js"></script>
        <script type="text/javascript">
            if("ontouchend" in document) document.write("<script src='static/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>

        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/ace-elements.min.js"></script>
        <script src="static/js/ace.min.js"></script>
        <script src="static/js/business/db-doc.js"></script>

        <script src="static/js/artDialog/dialog-min.js"></script>
        <script src="static/js/jQuery.ValidationEngine/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
        <script src="static/js/jQuery.ValidationEngine/js/languages/jquery.validationEngine-zh_CN.js" type="text/javascript" charset="utf-8"></script>
        <!-- inline scripts related to this page -->
</body>
</html>