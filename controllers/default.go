package controllers

import (
	"DbDoc/models"

	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	db_group_statis, err := models.GetStatisByGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["DbGroupStatis"] = db_group_statis

	db_all_group, err := models.GetAllGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["AllDbGroup"] = db_all_group

	this.Data["Appname"] = beego.AppConfig.String("appname")
	this.Data["Appver"] = beego.AppConfig.String("appver")
	this.TplName = "index.tpl"
}
