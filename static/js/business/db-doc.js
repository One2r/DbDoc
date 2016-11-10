
//ajax获取分组下数据库连接实例
$(".nav-list li").click(function(){
    var gid = $(this).data("gid")
    if(!gid){
        return true;
    }
    var submenu = $(this).find("ul.submenu");
    var lis = submenu.children();
    if(lis.lenght){
        return true;
    }

    $.ajax({
        url:"/ajax/GetDbByGid",
        type:"GET",
        data:{"gid":gid},
        success:function(result){
            if(result.Status == 1 && result.Data){
                var li_str = "";
                for (var i in result.Data) {
                  li_str += '<li> <a href="#"> <i class="icon-double-angle-right"></i>' 
                            + result.Data[i]['db_name']
                            + ' </a> </li>';
                }
                if ( li_str !== ""){
                  submenu.html(li_str);
                  return true;
                }
            }else{
                dialog({
                    title: '提示',
                    content: '系统错误，请稍候再试！',
                    cancelValue: '关闭',
                    cancel: function () {}
                }).width(320).show();
            }
        }
    });
})

$(".btn-save-group").click(function(){
    var groupName = $("#groupName").val();
    if(groupName == ""){
        dialog({
            title: '提示',
            content: '请输入分组名！',
            cancelValue: '取消',
            cancel: function () {}
        }).width(320).show();
        return false;
    }
    $.ajax({
        url:"/ajax/AddGroup",
        type:"GET",
        data:{"groupName":groupName},
        success:function(result){
            if(result.Status == 1 && result.Data){
                dialog({
                    title: '提示',
                    content: '添加成功！',
                    cancelValue: '关闭',
                    cancel: function () {
                        window.location.href=window.location.href;
                    }
                }).width(320).show();
            }else{
                 dialog({
                    title: '提示',
                    content: '系统错误，请稍候再试！',
                    cancelValue: '关闭',
                    cancel: function () {}
                }).width(320).show();
            }
        }
    });
});