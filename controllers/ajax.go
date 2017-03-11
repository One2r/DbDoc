package controllers

import (
	"DbDoc/models"
	"github.com/astaxie/beego/validation"
	"github.com/astaxie/beego/logs"
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
		if err == nil {
			return_data.Data = dbs
			return_data.Status = 1
		}else{
			logs.Critical(err)
		}
	}
    this.Data["json"] = &return_data
    this.ServeJSON()
}

func (this *AjaxController) AddGroup() {
	var return_data AjaxReturn

	groupName	:= this.GetString("groupName")	
	if(groupName == ""){
		return_data.Msg	=	"参数错误！"
	}else{
		gid,err := models.AddGroup(groupName)
		if err == nil {
			return_data.Data = gid
			return_data.Status = 1
		}else{
			logs.Critical(err)
		}
	}
    this.Data["json"] = &return_data
    this.ServeJSON()
}

func (this *AjaxController) UpdateGroup(){
	var return_data AjaxReturn

	groupName	:= this.GetString("groupName")
	Id,_	:= this.GetInt("groupId")
	if(groupName == ""){
		return_data.Msg	=	"参数错误！"
	}else{
		num,err := models.UpdateGroup(Id,groupName)
		if err == nil {
			return_data.Data = num
			return_data.Status = 1
		}else{
			logs.Critical(err)
		}
	}
    this.Data["json"] = &return_data
    this.ServeJSON()
}

func (this *AjaxController) AddDbConn() {
	var return_data AjaxReturn
	valid := validation.Validation{}

	db_conn := models.DbConn{}
	db_conn.DbTitle	=	this.GetString("db_title")
	valid.Required(db_conn.DbTitle, "DbTitle").Message("连接名必填！")
	db_conn.DbGroup,_	=	this.GetInt("db_group")
	valid.Required(db_conn.DbGroup, "DbGroup").Message("分组必填!")
	db_conn.DbType	=	this.GetString("db_type")
	valid.Required(db_conn.DbType, "DbType").Message("数据库类型必填!")
	db_conn.DbHost	=	this.GetString("db_host")
	valid.Required(db_conn.DbHost, "DbHost").Message("主机名(或IP地址)必填!")
	db_conn.DbPort,_	=	this.GetInt("db_port")
	valid.Required(db_conn.DbPort, "DbPort").Message("端口必填!")
	db_conn.DbName	=	this.GetString("db_name")
	valid.Required(db_conn.DbName, "DbName").Message("数据库名必填!")
	db_conn.DbUsername	=	this.GetString("db_username")
	valid.Required(db_conn.DbUsername, "DbUsername").Message("登录用户名必填!")
	db_conn.DbPassword	=	this.GetString("db_password")
	valid.Required(db_conn.DbPassword, "DbPassword").Message("密码必填!")
	
	if valid.HasErrors() {
        for _, err := range valid.Errors {
			return_data.Msg	=	err.Message
			break
        }
    }else{
 		id,err := models.InsertDbConn(db_conn)
		if err == nil {
			return_data.Data=id
			return_data.Status = 1
		}else{
			logs.Critical(err)
		}
	}
	this.Data["json"] = &return_data
    this.ServeJSON()
}