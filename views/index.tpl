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
                                <a href="#">Home</a>
                            </li>

                            <li>
                                <a href="#">Tables</a>
                            </li>
                            <li class="active">Simple &amp; Dynamic</li>
                        </ul><!-- .breadcrumb -->

                    </div>

                    <div class="page-content">
                        <div class="page-header">
                            <h1>
                                Tables
                                <small>
                                    <i class="icon-double-angle-right"></i>
                                    Static &amp; Dynamic Tables
                                </small>
                            </h1>
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->

                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="table-responsive">
                                            <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </th>
                                                        <th>Domain</th>
                                                        <th>Price</th>
                                                        <th class="hidden-480">Clicks</th>

                                                        <th>
                                                            <i class="icon-time bigger-110 hidden-480"></i>
                                                            Update
                                                        </th>
                                                        <th class="hidden-480">Status</th>

                                                        <th></th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>

                                                        <td>
                                                            <a href="#">ace.com</a>
                                                        </td>
                                                        <td>$45</td>
                                                        <td class="hidden-480">3,330</td>
                                                        <td>Feb 12</td>

                                                        <td class="hidden-480">
                                                            <span class="label label-sm label-warning">Expiring</span>
                                                        </td>

                                                        <td>
                                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                <button class="btn btn-xs btn-success">
                                                                    <i class="icon-ok bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="icon-edit bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="icon-trash bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-warning">
                                                                    <i class="icon-flag bigger-120"></i>
                                                                </button>
                                                            </div>

                                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                        <i class="icon-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                    <i class="icon-zoom-in bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="icon-edit bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="icon-trash bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>

                                                        <td>
                                                            <a href="#">base.com</a>
                                                        </td>
                                                        <td>$35</td>
                                                        <td class="hidden-480">2,595</td>
                                                        <td>Feb 18</td>

                                                        <td class="hidden-480">
                                                            <span class="label label-sm label-success">Registered</span>
                                                        </td>

                                                        <td>
                                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                <button class="btn btn-xs btn-success">
                                                                    <i class="icon-ok bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="icon-edit bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="icon-trash bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-warning">
                                                                    <i class="icon-flag bigger-120"></i>
                                                                </button>
                                                            </div>

                                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                        <i class="icon-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                    <i class="icon-zoom-in bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="icon-edit bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="icon-trash bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>

                                                        <td>
                                                            <a href="#">max.com</a>
                                                        </td>
                                                        <td>$60</td>
                                                        <td class="hidden-480">4,400</td>
                                                        <td>Mar 11</td>

                                                        <td class="hidden-480">
                                                            <span class="label label-sm label-warning">Expiring</span>
                                                        </td>

                                                        <td>
                                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                <button class="btn btn-xs btn-success">
                                                                    <i class="icon-ok bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="icon-edit bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="icon-trash bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-warning">
                                                                    <i class="icon-flag bigger-120"></i>
                                                                </button>
                                                            </div>

                                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                        <i class="icon-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                    <i class="icon-zoom-in bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="icon-edit bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="icon-trash bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>

                                                        <td>
                                                            <a href="#">best.com</a>
                                                        </td>
                                                        <td>$75</td>
                                                        <td class="hidden-480">6,500</td>
                                                        <td>Apr 03</td>

                                                        <td class="hidden-480">
                                                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                                                        </td>

                                                        <td>
                                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                <button class="btn btn-xs btn-success">
                                                                    <i class="icon-ok bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="icon-edit bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="icon-trash bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-warning">
                                                                    <i class="icon-flag bigger-120"></i>
                                                                </button>
                                                            </div>

                                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                        <i class="icon-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                    <i class="icon-zoom-in bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="icon-edit bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="icon-trash bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="center">
                                                            <label>
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>

                                                        <td>
                                                            <a href="#">pro.com</a>
                                                        </td>
                                                        <td>$55</td>
                                                        <td class="hidden-480">4,250</td>
                                                        <td>Jan 21</td>

                                                        <td class="hidden-480">
                                                            <span class="label label-sm label-success">Registered</span>
                                                        </td>

                                                        <td>
                                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                <button class="btn btn-xs btn-success">
                                                                    <i class="icon-ok bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="icon-edit bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="icon-trash bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-warning">
                                                                    <i class="icon-flag bigger-120"></i>
                                                                </button>
                                                            </div>

                                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                        <i class="icon-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                    <i class="icon-zoom-in bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="icon-edit bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="icon-trash bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div><!-- /.table-responsive -->
                                    </div><!-- /span -->
                                </div><!-- /row -->

                                <div id="modal-table" class="modal fade" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                        <span class="white">&times;</span>
                                                    </button>
                                                    Results for "Latest Registered Domains
                                                </div>
                                            </div>

                                            <div class="modal-body no-padding">
                                                <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                                    <thead>
                                                        <tr>
                                                            <th>Domain</th>
                                                            <th>Price</th>
                                                            <th>Clicks</th>

                                                            <th>
                                                                <i class="icon-time bigger-110"></i>
                                                                Update
                                                            </th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <a href="#">ace.com</a>
                                                            </td>
                                                            <td>$45</td>
                                                            <td>3,330</td>
                                                            <td>Feb 12</td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <a href="#">base.com</a>
                                                            </td>
                                                            <td>$35</td>
                                                            <td>2,595</td>
                                                            <td>Feb 18</td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <a href="#">max.com</a>
                                                            </td>
                                                            <td>$60</td>
                                                            <td>4,400</td>
                                                            <td>Mar 11</td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <a href="#">best.com</a>
                                                            </td>
                                                            <td>$75</td>
                                                            <td>6,500</td>
                                                            <td>Apr 03</td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <a href="#">pro.com</a>
                                                            </td>
                                                            <td>$55</td>
                                                            <td>4,250</td>
                                                            <td>Jan 21</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                    <i class="icon-remove"></i>
                                                    Close
                                                </button>

                                                <ul class="pagination pull-right no-margin">
                                                    <li class="prev disabled">
                                                        <a href="#">
                                                            <i class="icon-double-angle-left"></i>
                                                        </a>
                                                    </li>

                                                    <li class="active">
                                                        <a href="#">1</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">2</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">3</a>
                                                    </li>

                                                    <li class="next">
                                                        <a href="#">
                                                            <i class="icon-double-angle-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div><!-- /.main-content -->

            </div><!-- /.main-container-inner -->

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="icon-double-angle-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->

        <!-- basic scripts -->

        <!--[if IE]>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <![endif]-->

        <!--[if !IE]> --> 
        <script src="static/js/jquery-2.0.3.min.js"></script>
        <!-- <![endif]-->

        <script type="text/javascript">
            if("ontouchend" in document) document.write("<script src='static/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/typeahead-bs2.min.js"></script>

        <!-- page specific plugin scripts -->

        <script src="static/js/jquery.dataTables.min.js"></script>
        <script src="static/js/jquery.dataTables.bootstrap.js"></script>

        <!-- ace scripts -->

        <script src="static/js/ace-elements.min.js"></script>
        <script src="static/js/ace.min.js"></script>

        <script src="static/js/business/db-doc.js"></script>

        <!-- inline scripts related to this page -->

        <script type="text/javascript">
            jQuery(function($) {
                var oTable1 = $('#sample-table-2').dataTable( {
                "aoColumns": [
                  { "bSortable": false },
                  null, null,null, null, null,
                  { "bSortable": false }
                ] } );
                
                
                $('table th input:checkbox').on('click' , function(){
                    var that = this;
                    $(this).closest('table').find('tr > td:first-child input:checkbox')
                    .each(function(){
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    });
                        
                });
            
            
                $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
                function tooltip_placement(context, source) {
                    var $source = $(source);
                    var $parent = $source.closest('table')
                    var off1 = $parent.offset();
                    var w1 = $parent.width();
            
                    var off2 = $source.offset();
                    var w2 = $source.width();
            
                    if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
                    return 'left';
                }
            })
        </script>
</body>
</html>

