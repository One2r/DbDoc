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
func GetStatByGroups() (db_group []orm.Params, err error) {
	o := orm.NewOrm()
	_, err = o.Raw(`select g.*,count(c.db_id) as db_num 
					from db_conn c 
					inner join db_group g on c.db_group = g.group_id 
					group by g.group_id;`).Values(&db_group)
	if err != nil {
		logs.Critical(err)
	}
	return
}
