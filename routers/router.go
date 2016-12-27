package routers

import (
	"DbDoc/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/ajax/GetDbByGid", &controllers.AjaxController{}, "Get:GetDbByGid")
	beego.Router("/ajax/AddGroup", &controllers.AjaxController{}, "Get:AddGroup")
	beego.Router("/ajax/AddDbConn", &controllers.AjaxController{}, "Get:AddDbConn")
}
