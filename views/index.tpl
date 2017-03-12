<!DOCTYPE html>
<html lang="en">
    <head>
        <title>控制台 - 数据库字典 - {{ .Appname }}</title>
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
                                            {{ .Appname }} <small>v{{ .Appver }}</small>
                                        </strong>
                                        数据库字典查看系统。	
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
                                                        添加数据库
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane in active" id="add-group">
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">分组名*</label>
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
                                                                    重置
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="tab-pane" id="add-db">
                                                {{ if .AllDbGroup}}
                                                    <form id="add-db-form" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">名称*</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_title" id="db_title" data-errormessage-value-missing="连接名必填!" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">所属分组*</label>
                                                            <div class="col-sm-9">
                                                                <select class="col-xs-10 col-sm-5 validate[required]" name="db_group" id="db_group" data-errormessage-value-missing="分组必填!" >
                                                                {{range .AllDbGroup}}
                                                                    <option value="{{ .group_id}}">{{ .group_name }}</option>
                                                                {{end}}
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">数据库类型*</label>
                                                            <div class="col-sm-9">
                                                                <select class="col-xs-10 col-sm-5 validate[required]" id="db_type" name="db_type" data-errormessage-value-missing="数据库类型必填!" >
                                                                    <option value="mysql">MySQL</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">主机名(或IP地址)*</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_host" id="db_host" data-errormessage-value-missing="主机名(或IP地址)必填!" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">端口*</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_port" id="db_port" data-errormessage-value-missing="端口必填!" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">数据库名*</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_name" id="db_name" data-errormessage-value-missing="数据库名必填!" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">登录用户名*</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_username" id="db_username" data-errormessage-value-missing="登录用户名必填!" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="form-field-1" class="col-sm-3 control-label no-padding-right">密码*</label>
                                                            <div class="col-sm-9">
                                                                <input type="password" class="col-xs-10 col-sm-5 validate[required]" name="db_password" id="db_password" data-errormessage-value-missing="密码必填!" >
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
                                                                    重置
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                    {{else}}
                                                    请先添加一个分组~
                                                    {{end}}
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
        <script src="static/js/jQuery.ValidationEngine/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
        <script src="static/js/jQuery.ValidationEngine/js/languages/jquery.validationEngine-zh_CN.js" type="text/javascript" charset="utf-8"></script>
        <!-- inline scripts related to this page -->
</body>
</html>

