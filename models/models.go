package main

import (
    "github.com/astaxie/beego/orm"
)

type DbGroup struct {
    GroupId          int
    GroupName        string
}

func init() {
    // 需要在init中注册定义的model
    orm.RegisterModel(new(DbGroup))
}

