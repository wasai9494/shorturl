package routers

import (
	"shorturl/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/:str", &controllers.MainController{})
	beego.Router("/goedit", &controllers.EditContouller{})
}
