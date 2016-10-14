<a class="menu-toggler" id="menu-toggler" href="#">
    <span class="menu-text"></span>
</a>
<div class="sidebar" id="sidebar">
    <script type="text/javascript">
        try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
    </script>

    <ul class="nav nav-list">
        <li class="active">
            <a href="/">
                <i class="icon-dashboard"></i>
                <span class="menu-text"> 控制台 </span>
            </a>
        </li>
        {{range .DbGroup}}
         <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-folder-close-alt"></i>
                <span class="menu-text">
                    {{ .GroupName }}
                    <span class="badge badge-primary ">5</span>
                </span>
                <b class="arrow icon-angle-down"></b>
            </a>
        </li>
        {{end}}
        <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-folder-close-alt"></i>

                <span class="menu-text">
                    未分组
                    <span class="badge badge-primary ">5</span>
                </span>

                <b class="arrow icon-angle-down"></b>
            </a>

            <ul class="submenu">
                <li>
                    <a href="faq.html">
                        <i class="icon-double-angle-right"></i>
                        帮助
                    </a>
                </li>

                <li>
                    <a href="error-404.html">
                        <i class="icon-double-angle-right"></i>
                        404错误页面
                    </a>
                </li>

                <li>
                    <a href="error-500.html">
                        <i class="icon-double-angle-right"></i>
                        500错误页面
                    </a>
                </li>

                <li>
                    <a href="grid.html">
                        <i class="icon-double-angle-right"></i>
                        网格
                    </a>
                </li>

                <li>
                    <a href="blank.html">
                        <i class="icon-double-angle-right"></i>
                        空白页面
                    </a>
                </li>
            </ul>
        </li>
    </ul>

    <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
    </div>

    <script type="text/javascript">
        try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
    </script>
</div>
