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
                                    <div class="alert alert-block alert-success">
                                        <p>
                                        <label class="col-sm-2 control-label">主机名(或IP地址):</label>
                                        {{.Conn.db_host}}
                                        </p>
                                        <p><label class="col-sm-2 control-label">数据库：</label>{{.Conn.db_name}}</p>
                                        <p><label class="col-sm-2 control-label">分组：</label>{{.Conn.group_name}}</p>
                                        <p><label class="col-sm-2 control-label">表数：</label>{{.Tables|len}}</p>
                                        <p>
                                        <a href="./editdb?id={{.Conn.db_id}}"><button class="btn btn-sm btn-info no-radius" type="button">编辑</button></a></p>
                                    </div>              

                                    <h3 class="header smaller lighter purple">
                                        表结构信息
                                    </h3>
                                    <div class="col-sx-12">
                                        {{range .Tables}}
                                            <h3 class="smaller lighter blue">{{.TABLE_NAME}}
                                            {{ if ne .TABLE_COMMENT ""}}
                                                ({{.TABLE_COMMENT}})
                                            {{ end }}
                                            </h3>
                                            <div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th style="width:15%">字段名</th>
														<th style="width:15%">数据类型</th>
														<th style="width:10%">默认值</th>
														<th style="width:10%">允许非空</th>
														<th style="width:10%">自动递增</th>
														<th style="width:20%">备注</th>
													</tr>
												</thead>
												<tbody>
                                                    {{range .COLUMN}}
													<tr>
														<td>
															{{ .COLUMN_NAME }}
														</td>
                                                        <td>
                                                            {{ .COLUMN_TYPE}}
                                                        </td>
														<td>
                                                            {{ .COLUMN_DEFAULT }}
                                                        </td>
														<td>
                                                            {{ .IS_NULLABLE }}
                                                        </td>
														<td>
															{{if eq .EXTRA "auto_increment"}}
                                                            是
                                                            {{else}}
                                                            否
                                                            {{end}}
														</td>
														<td>
															{{ .COLUMN_COMMENT }}
														</td>
													</tr>
                                                    {{end}}
												</tbody>
											</table>
										</div>
                                        {{end}}
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