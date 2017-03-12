package routers

import (
	"DbDoc/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{},"Get:Index")

	beego.Router("/getdb", &controllers.MainController{},"Get:GetDb")
	beego.Router("/editdb", &controllers.MainController{},"Get:EditDb")
	beego.Router("/ajax/UpdateDbConn", &controllers.AjaxController{}, "Get:UpdateDbConn")
	beego.Router("/ajax/GetDbByGid", &controllers.AjaxController{}, "Get:GetDbByGid")
	beego.Router("/ajax/AddDbConn", &controllers.AjaxController{}, "Get:AddDbConn")

	beego.Router("/groups", &controllers.MainController{},"Get:Groups")
	beego.Router("/ajax/AddGroup", &controllers.AjaxController{}, "Get:AddGroup")
	beego.Router("/ajax/UpdateGroup", &controllers.AjaxController{}, "Get:UpdateGroup")
	beego.Router("/ajax/DeleteGroup", &controllers.AjaxController{}, "Get:DeleteGroup")
}
