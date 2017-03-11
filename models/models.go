package models

import (
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
)

type DbGroup struct {
	Id        int `orm:pk;column(group_id)`
	GroupName string
}

type DbConn struct {
	Id		 	int `orm:pk;column(db_id)`
	DbTitle		string
	DbGroup	  	int
	DbName    	string
	DbHost		string
	DbPort		int
	DbUsername	string
	DbPassword	string
	DbType		string		 
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(DbGroup))
	orm.RegisterModel(new(DbConn))
}

//获取数据库分组统计
func GetStatisByGroups() (db_group []orm.Params, err error) {
	o := orm.NewOrm()
	_, err = o.Raw(`select * from v_group_db_statis order by db_num desc`).Values(&db_group)
	if err != nil {
		logs.Critical(err)
	}
	return db_group,err
}

//获取所有数据库分组
func GetAllGroups() (db_group []orm.Params, err error) {
	o := orm.NewOrm()
	_, err = o.Raw(`select g.* from db_group g;`).Values(&db_group)
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

//编辑数据库分组
func UpdateGroup(Id int,groupName string ) (gid int64, err error) {
	o := orm.NewOrm()
	res, err := o.Raw(`update db_group set group_name = ? where group_id = ?`, groupName,Id).Exec()
	if err != nil {
		logs.Critical(err)
	}
	num,_ := res.RowsAffected()
	return num, err
}

func DeleteGroup(Id int) (gid int64, err error) {
	o := orm.NewOrm()
	res, err := o.Raw(`delete from db_group where group_id = ?`,Id).Exec()
	if err != nil {
		logs.Critical(err)
	}
	num,_ := res.RowsAffected()
	return num, err
}

//根据分组id获取分组下数据库连接实例
func GetDbByGid(gid int) (db []orm.Params, err error) {
	o := orm.NewOrm()
	_, err = o.Raw(`select db_id,db_title 
					from db_conn  
					where db_group	=	?
					`, gid).Values(&db)
	if err != nil {
		logs.Critical(err)
	}
	return db,err
}


func InsertDbConn(conn DbConn) (id int64,err error){
	o := orm.NewOrm()
	id, err = o.Insert(&conn)
	if err == nil {
    	logs.Critical(err)
	}
	return id,err
}

//根据id获取一个数据连接信息
func GetDbConnById(id int)(conn []orm.Params,err error){
	o := orm.NewOrm()
	_, err = o.Raw(`select db_conn.*,db_group.group_name from db_conn left join db_group on db_conn.db_group = db_group.group_id where db_id = ?`, id).Values(&conn)
	if err != nil {
		logs.Critical(err)
	}
	return conn,err
}
