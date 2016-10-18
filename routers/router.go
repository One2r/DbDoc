package routers

import (
	"DbDoc/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/ajax/GetDbByGid", &controllers.AjaxController{}, "Get:GetDbByGid")
}
