package main

import (
	_ "shorturl/routers"

	"github.com/astaxie/beego"
)

func main() {
	beego.SetStaticPath("/bootstrap", "static/bootstrap")
	beego.SetStaticPath("/jquery", "static/jquery")
	beego.SetStaticPath("/css", "static/css")
	beego.SetStaticPath("/js", "static/js")
	beego.SetStaticPath("/img", "static/img")
	beego.SetLogFuncCall(true)
	beego.Run()
}
