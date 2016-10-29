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
	return db_group,err
}

//添加数据库分组
func AddGroup(groupName string ) (gid int64, err error) {
	o := orm.NewOrm()
	res, err := o.Raw(`insert into db_group ("group_name") values(?);`, groupName).Exec()
	if err != nil {
		logs.Critical(err)
	}
	gid,_ = res.LastInsertId()
	return gid, err
}

//根据分组id获取分组下数据库连接实例
func GetDbByGid(gid int) (db []orm.Params, err error) {
	o := orm.NewOrm()
	_, err = o.Raw(`select db_id,db_name 
					from db_conn  
					where db_group	=	?
					`, gid).Values(&db)
	if err != nil {
		logs.Critical(err)
	}
	return db,err
}
