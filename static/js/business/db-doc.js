
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
                  li_str += '<li> <a href="/getdb?id='+result.Data[i]['id']+'"> <i class="icon-double-angle-right"></i>' 
                            + result.Data[i]['db_title']
                            + ' </a> </li>';
                }
                if ( li_str !== ""){
                  submenu.html(li_str);
                  return true;
                }
            }else{
                dialog({
                    title: '提示',
                    content: result.Msg?result.Msg:'系统错误，请稍候再试！',
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
                    content: result.Msg?result.Msg:'系统错误，请稍候再试！',
                    cancelValue: '关闭',
                    cancel: function () {}
                }).width(320).show();
            }
        }
    });
});

$(".btn-save-db-conn").click(function(){
    if($("#add-db-form").validationEngine("validate")){
        var data = $("#add-db-form").serialize()
        $.ajax({
            url:"/ajax/AddDbConn",
            type:"GET",
            data:data,
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
                        content: result.Msg?result.Msg:'系统错误，请稍候再试！',
                        cancelValue: '关闭',
                        cancel: function () {}
                    }).width(320).show();
                }
            }
        });
    }
});

$(".btn-edit-db-conn").click(function(){
    if($("#edit-db-form").validationEngine("validate")){
        var data = $("#edit-db-form").serialize()
        $.ajax({
            url:"/ajax/UpdateDbConn",
            type:"GET",
            data:data,
            success:function(result){
                if(result.Status == 1 && result.Data){
                    dialog({
                        title: '提示',
                        content: '更新成功！',
                        cancelValue: '关闭',
                        cancel: function () {
                            window.location.href=window.location.href;
                        }
                    }).width(320).show();
                }else{
                    dialog({
                        title: '提示',
                        content: result.Msg?result.Msg:'系统错误，请稍候再试！',
                        cancelValue: '关闭',
                        cancel: function () {}
                    }).width(320).show();
                }
            }
        });
    }
});

$(".edit-group").click(function(){
    var groupId = $(this).data("gid");
    var groupName = $(this).data("gname");
    $("#group_"+groupId).find("#group_name").html('<input type="text" name="group_name" value="'+groupName+'" />');
    $("#group_"+groupId).find(".btn-group-save").css("display","inline");
})

$(".btn-group-save").click(function(){
    var groupId = $(this).data("gid");
    var groupName = $("#group_"+groupId).find("input[name=group_name]").val();
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
        url:"/ajax/UpdateGroup",
        type:"GET",
        data:{"groupId":groupId,"groupName":groupName},
        success:function(result){
            if(result.Status == 1 && result.Data){
                dialog({
                    title: '提示',
                    content: '编辑成功！',
                    cancelValue: '关闭',
                    cancel: function () {
                        window.location.href=window.location.href;
                    }
                }).width(320).show();
            }else{
                 dialog({
                    title: '提示',
                    content: result.Msg?result.Msg:'系统错误，请稍候再试！',
                    cancelValue: '关闭',
                    cancel: function () {}
                }).width(320).show();
            }
        }
    });
})

$(".delete-group").click(function(){
    var groupId = $(this).data("gid");
    $.ajax({
        url:"/ajax/DeleteGroup",
        type:"GET",
        data:{"groupId":groupId},
        success:function(result){
            if(result.Status == 1 && result.Data){
                dialog({
                    title: '提示',
                    content: '删除成功！',
                    cancelValue: '关闭',
                    cancel: function () {
                        window.location.href=window.location.href;
                    }
                }).width(320).show();
            }else{
                 dialog({
                    title: '提示',
                    content: result.Msg?result.Msg:'系统错误，请稍候再试！',
                    cancelValue: '关闭',
                    cancel: function () {}
                }).width(320).show();
            }
        }
    });
})