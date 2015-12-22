package controllers

import (
	"github.com/astaxie/beego"
)

type EditContouller struct {
	beego.Controller
}

func (this *EditContouller) Get() {
	this.TplNames = "edit.tpl"
}
