package controllers

import (
	"DbDoc/models"
	"DbDoc/library"

	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Prepare() {
	db_group_statis, err := models.GetStatisByGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["DbGroupStatis"] = db_group_statis

	this.Data["Appname"] = beego.AppConfig.String("appname")
	this.Data["Appver"] = beego.AppConfig.String("appver")
}

func (this *MainController) Index() {
	db_all_group, err := models.GetAllGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["AllDbGroup"] = db_all_group
	this.TplName = "index.tpl"
}

func (this *MainController) GetDb() {
	id,err	:= this.GetInt("id")	
	if(id == 0 || err !=nil ){
		this.Abort("404")
	}
	db_conn,err := models.GetDbConnById(id);
	if err != nil {
		this.Abort("500")
	} else if len(db_conn) == 0 {
		this.Abort("404")
	}
		
	db_table_info,err:=library.GetDb(db_conn[0])
	if err != nil {
		this.Abort("500")
	}

	this.Data["Tables"] = db_table_info
	this.Data["Conn"] = db_conn[0]
	this.TplName = "db.tpl"
}

func (this *MainController) EditDb() {
	id,err	:= this.GetInt("id")	
	if(id == 0 || err !=nil ){
		this.Abort("404")
	}
	db_conn,err := models.GetDbConnById(id);
	if err != nil {
		this.Abort("500")
	} else if len(db_conn) == 0 {
		this.Abort("404")
	}

	db_all_group, err := models.GetAllGroups()
	if err != nil {
		this.Abort("500")
	}
	this.Data["AllDbGroup"] = db_all_group
	
	this.Data["Conn"] = db_conn[0]
	this.TplName = "editdb.tpl"
}

func (this *MainController)  Groups() {
		this.TplName = "groups.tpl"
}