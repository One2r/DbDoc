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
        {{range .DbGroupStatis}}
         <li data-gid={{ .group_id }}>
            <a href="#" class="dropdown-toggle">
                <i class="icon-folder-close-alt"></i>
                <span class="menu-text">
                    {{ .group_name }}
                    <span class="badge badge-primary ">{{ .db_num }}</span>
                </span>
                <b class="arrow icon-angle-down"></b>
            </a>
            <ul class="submenu">
            </ul>
        </li>
        {{end}}
    </ul>

    <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
    </div>

    <script type="text/javascript">
        try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
    </script>
</div>
