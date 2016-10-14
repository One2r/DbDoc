package models

import (
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
)

type DbGroup struct {
	Id        int `orm:pk;column(group_id)`
	GroupName string
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(DbGroup))
}

//获取数据库分组
func GetGroups() (db_group []DbGroup, err error) {
	o := orm.NewOrm()
	_, err = o.Raw("SELECT * FROM db_group;").QueryRows(&db_group)
	if err != nil {
		logs.Critical(err)
	}
	return
}
