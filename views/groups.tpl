<!DOCTYPE html>
<html lang="en">
    <head>
        <title>分组管理 - 数据库字典 - {{ .Appname }}</title>
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
                                分组管理
                            </li>
                        </ul><!-- .breadcrumb -->
                    </div>

                    <div class="page-content">               
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS --> 
                                <div class="row">
                                    <h3 class="header smaller lighter purple">
                                        分组列表
                                    </h3>
                                    <div class="col-sx-12">
                                       <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th style="width:5%">ID</th>
                                                    <th style="width:15%">组名</th>
                                                    <th style="width:15%">数据库数</th>
                                                    <th style="width:20%">操作</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {{range .DbGroupStatis}}
                                                <tr id="group_{{ .group_id}}">
                                                    <td>
                                                        {{ .group_id }}
                                                    </td>
                                                    <td id="group_name">
                                                        {{ .group_name}}
                                                    </td>
                                                    <td>
                                                        {{ .db_num}}
                                                    </td>
                                                    <td>
                                                        {{ if eq .db_num "0" }}
                                                         <a class="delete-group" data-gid={{ .group_id}} href="javascript:;">删除</a>
                                                         {{end}}
                                                        <a class="edit-group" data-gid={{ .group_id}} data-gname={{.group_name}} href="javascript:;">编辑</a>
                                                         
                                                       <a class="btn-group-save" style="display:none" data-gid={{ .group_id}} href="javascript:;">保存</a> 
                                                    </td>
                                                </tr>
                                                {{end}}
                                            </tbody>
                                        </table>
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

