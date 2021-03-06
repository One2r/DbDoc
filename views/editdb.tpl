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
                                编辑数据库
                            </li>
                        </ul><!-- .breadcrumb -->
                    </div>

                    <div class="page-content">               
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="row">
                                    <div class="col-sx-12">
                                        <div class="tabbable">
                                            <div id="edit-db">
                                                <form id="edit-db-form" class="form-horizontal" role="form">
                                                    <input type="hidden" name="db_id" value="{{.Conn.id}}" />
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">名称*</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_title" id="db_title" data-errormessage-value-missing="连接名必填!" value="{{ .Conn.db_title}}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">所属分组*</label>
                                                        <div class="col-sm-9">
                                                            <select class="col-xs-10 col-sm-5 validate[required]" name="db_group" id="db_group" data-errormessage-value-missing="分组必填!" >
                                                            {{range .AllDbGroup}}
                                                                {{if eq .id $.Conn.db_group}}
                                                                <option value="{{ .id}}" selected="true">{{ .group_name }}</option>
                                                                {{else}}
                                                                <option value="{{ .id}}">{{ .group_name }}</option>
                                                                {{end}}
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
                                                            <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_host" id="db_host" data-errormessage-value-missing="主机名(或IP地址)必填!" value="{{ .Conn.db_host}}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">端口*</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_port" id="db_port" data-errormessage-value-missing="端口必填!"  value="{{ .Conn.db_port}}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">数据库名*</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_name" id="db_name" data-errormessage-value-missing="数据库名必填!" value="{{ .Conn.db_name}}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">登录用户名*</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="col-xs-10 col-sm-5 validate[required]" name="db_username" id="db_username" data-errormessage-value-missing="登录用户名必填!">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">密码*</label>
                                                        <div class="col-sm-9">
                                                            <input type="password" class="col-xs-10 col-sm-5 validate[required]" name="db_password" id="db_password" data-errormessage-value-missing="密码必填!" >
                                                        </div>
                                                    </div> 
                                                     <div class="form-group">
                                                        <label for="form-field-1" class="col-sm-3 control-label no-padding-right">旧密码*</label>
                                                        <div class="col-sm-9">
                                                            <input type="password" class="col-xs-10 col-sm-5 validate[required]" name="old_db_password" id="old_db_password" data-errormessage-value-missing="密码必填!" >
                                                        </div>
                                                    </div>   

                                                    <div class="clearfix form-actions">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <button type="button" class="btn btn-info btn-edit-db-conn">
                                                                <i class="icon-ok bigger-110"></i>
                                                                提交
                                                            </button>
                                                            &nbsp; &nbsp; &nbsp;
                                                            <a href="./getdb?id={{.Conn.id}}">
                                                            <button type="button" class="btn">
                                                                <i class="icon-share-alt"></i>
                                                                取消
                                                            </button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </form>
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

