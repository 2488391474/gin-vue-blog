package front

import (
	"gin-blog/utils/r"

	"github.com/gin-gonic/gin"
)

type Category struct{}

func (*Category) GetFrontList(c *gin.Context) {
	r.Success(c, categoryService.GetFrontList())
}
