package controllers

import (
	"database/sql"

	"github.com/astaxie/beego"
	_ "github.com/go-sql-driver/mysql"
)

type MainController struct {
	beego.Controller
}

var (
	id       int
	user_id  int
	from_url string
	to_url   string
	status   int
)

var message string = ""

func (this *MainController) Get() {
	var db = getDb()
	defer db.Close()
	var err = db.QueryRow("select id,user_id,from_url,to_url,status from short_urls where from_url = '"+this.Ctx.Input.Param(":str")+"'").Scan(&id, &user_id, &from_url, &to_url, &status)
	if err != nil {
		message = err.Error()
	} else {
		this.Redirect("http://"+to_url, 302)
	}

	this.Ctx.WriteString(message)
}

func getDb() *sql.DB {
	var db, err = sql.Open(beego.AppConfig.String("mysqldev"), beego.AppConfig.String("mysqldns")+"/"+beego.AppConfig.String("mysqldb"))
	checkErr(err)
	err = db.Ping()
	checkErr(err)
	return db
}

func checkErr(err error) {
	if err != nil {
		beego.Warn(err.Error())
	}
}
