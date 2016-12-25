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
                                    <h3 class="header smaller lighter purple">
                                        快捷操作
                                    </h3>
                                    <div class="col-sx-12">
                                        <div class="tabbable">
                                            <ul id="myTab" class="nav nav-tabs">
                                                <li class="active">
                                                    <a href="#add-group" data-toggle="tab">
                                                        添加数据库分组
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#add-db" data-toggle="tab">
                                                        添加数据库连接
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
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">连接名</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="db_title" id="db_title">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">所属分组</label>
                                                            <div class="col-sm-9">
                                                                <select class="col-xs-10 col-sm-5" name="db_group" id="db_group">
                                                                {{range .AllDbGroup}}
                                                                    <option value="{{ .group_id}}">{{ .group_name }}</option>
                                                                {{end}}
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">数据库类型</label>
                                                            <div class="col-sm-9">
                                                                <select class="col-xs-10 col-sm-5" id="db_type" name="db_type">
                                                                    <option value="mysql">MySQL</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">IP</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="db_host" id="db_host">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">端口</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="db_port" id="db_port">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">数据库名</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="db_name" id="db_name">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">用户名</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5" name="db_username" id="db_username">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">密码</label>
                                                            <div class="col-sm-9">
                                                                <input type="password" class="col-xs-10 col-sm-5" name="db_password" id="db_password">
                                                            </div>
                                                        </div>    

                                                        <div class="clearfix form-actions">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <button type="button" class="btn btn-info btn-save-db-conn">
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

