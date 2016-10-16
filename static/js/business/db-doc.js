
//ajax获取分组下数据库连接实例
$(".nav-list li").click(function(){
    var gid = $(this).data("gid")
    if(!gid){
        return true;
    }
    var lis = $(this).find("ul.submenu").children();
    if(lis.lenght){
        return true;
    }

    $.ajax({
        url:"/ajax/GetDbByGid",
        type:"GET",
        data:{"gid":gid},
        success:function(result){
            if(result.Status == 1 && result.Data){
                console.log(result);
            }else{
                console.log(1)
            }
        }
    });
})