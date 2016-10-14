package controllers

import (
	"DbDoc/models"

	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	db_group, err := models.GetStatByGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["DbGroup"] = db_group

	this.Data["Appname"] = beego.AppConfig.String("appname")
	this.Data["Appver"] = beego.AppConfig.String("appver")
	this.TplName = "index.tpl"
}
