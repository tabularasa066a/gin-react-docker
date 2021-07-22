// url_mappings.go

package app

import "github.com/gouser/money-boy/api/controllers/products"

func mapUrls() {
	router.GET("/products/:product_id", products.GetProduct)
	router.POST("/products", products.CreateProduct)
}
