
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
                console.log(1)
            }
        }
    });
})
