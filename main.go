package main

import (
	_ "DbDoc/routers"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"

	_ "github.com/mattn/go-sqlite3"
)

func init() {
	orm.RegisterDataBase("default", "sqlite3", beego.AppConfig.String("db"))
}

func main() {
	beego.Run()
}
