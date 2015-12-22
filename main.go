package main

import (
	_ "shorturl/routers"

	"github.com/astaxie/beego"
)

func main() {
	beego.SetLogFuncCall(true)
	beego.Run()
}
