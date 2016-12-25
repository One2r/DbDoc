<!DOCTYPE html>
<html lang="en">
    <head>
        <title>{{ .Appname }}</title>
        {{ template "public/header.tpl" }}
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
                                <a href="javascript:;">Home</a>
                            </li>
                            <li>
                                控制台
                            </li>
                        </ul><!-- .breadcrumb -->
                    </div>

                    <div class="page-content">               
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="row">
                                    <div class="alert alert-block alert-success">
                                        欢迎使用
                                        <strong class="green">
                                            {{ .Appname }} <small>v{{ .Appver }}</small>数据库字典查看系统。
                                        </strong>	
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sx-12">
                                        <div class="tabbable">
                                            <ul id="myTab" class="nav nav-tabs">
                                                <li class="active">
                                                    <a href="#add-group" data-toggle="tab">
                                                        数据库分组
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#add-db" data-toggle="tab">
                                                        数据库连接
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane in active" id="add-group">
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">分组名</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="groupName" id="groupName">
                                                            </div>
                                                        </div>
                                                        <div class="clearfix form-actions">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <button type="button" class="btn btn-info btn-save-group">
                                                                    <i class="icon-ok bigger-110"></i>
                                                                    提交
                                                                </button>
                                                                &nbsp; &nbsp; &nbsp;
                                                                <button type="reset" class="btn">
                                                                    <i class="icon-undo bigger-110"></i>
                                                                    取消
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="tab-pane" id="add-db">
                                                    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.</p>
                                                </div>
                                                
                                            </div>
                                        </div>
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
        <!-- inline scripts related to this page -->
</body>
</html>

