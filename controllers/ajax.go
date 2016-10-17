package controllers

import (
	"DbDoc/models"

	"github.com/astaxie/beego"
)

//ajax返回结构
type AjaxReturn struct {
	Status int
	Data interface{}
	Msg string
}

type AjaxController struct {
	beego.Controller
}

func (this *AjaxController) GetDbByGid() {
	var return_data AjaxReturn

	gid,err	:= this.GetInt("gid")	
	if(gid == 0 || err !=nil ){
		return_data.Msg	=	"参数错误！"
	}else{
		dbs,err := models.GetDbByGid(gid)
		if err != nil {
			this.Abort("500")
		}
		return_data.Data = dbs
		return_data.Status = 1
	}
    this.Data["json"] = &return_data
    this.ServeJSON()
}