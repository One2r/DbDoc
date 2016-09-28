package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Appname"] = beego.AppConfig.String("appname")
	c.Data["Appver"] = beego.AppConfig.String("appver")
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}
