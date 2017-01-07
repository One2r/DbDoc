package library

import (
	"fmt"

	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"

	_ "github.com/go-sql-driver/mysql"
)

func regConn(conn orm.Params) {
	db_conn :=fmt.Sprintf("cunstom_%s",conn["db_id"])
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8",conn["db_username"],conn["db_password"],conn["db_host"],conn["db_port"],conn["db_name"])
	db_type :=fmt.Sprintf("%s",conn["db_type"])
	orm.RegisterDataBase(db_conn, db_type, dsn, 30)
}

func GetDb(conn orm.Params) (db_tabels []orm.Params,err error){
	o := orm.NewOrm()
	db_conn :=fmt.Sprintf("cunstom_%s",conn["db_id"])
	err = o.Using(db_conn)
	if err != nil {
		regConn(conn)
		err = o.Using(db_conn)
		logs.Critical(err)
	}

	_, err = o.Raw(`show tables`).Values(&db_tabels)
	table_index :=fmt.Sprintf("Tables_in_%s",conn["db_name"])

	for k,_ := range db_tabels{
		db_tabels[k]["TABLE_NAME"] = db_tabels[k][table_index]
		delete(db_tabels[k],table_index)

		var db_tabel_comment []orm.Params
		_, err = o.Raw(`SELECT TABLE_COMMENT FROM INFORMATION_SCHEMA.TABLES WHERE table_name = ? AND table_schema = ?;`,db_tabels[k]["TABLE_NAME"],conn["db_name"]).Values(&db_tabel_comment)
		if err != nil {
			logs.Critical(err)
		}
		db_tabels[k]["TABLE_COMMENT"] = db_tabel_comment[0]["TABLE_COMMENT"]

		var db_tabel_columns []orm.Params
		_, err = o.Raw(`SELECT COLUMN_NAME,COLUMN_TYPE,COLUMN_DEFAULT,IS_NULLABLE,EXTRA,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = ? AND table_schema = ?;`,db_tabels[k]["TABLE_NAME"],conn["db_name"]).Values(&db_tabel_columns)
		if err != nil {
			logs.Critical(err)
		}
		db_tabels[k]["COLUMN"] =  db_tabel_columns
	}
	return db_tabels,err
}

