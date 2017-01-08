<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="/" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    {{ .Appname }} v{{ .Appver }}
                </small>
            </a>
        </div>
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        管理
                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="./groups">
                                <i class="icon-cog"></i>
                                分组
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="https://github.com/One2r/DbDoc" target="_blank">
                                <i class="icon-exclamation-sign "></i>
                                关于
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.ace-nav -->
        </div>
    </div>
</div>
