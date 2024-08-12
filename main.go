package main

import (
    "github.com/gin-gonic/gin"
)

func main() {
    r := gin.Default()

    r.GET("/", func(c *gin.Context) {
        c.JSON(200, gin.H{
            "message": "Hello, world!",
        })
    })

    // Spécifiez le port que vous souhaitez utiliser, ici :9090
    r.Run(":9090") // Écoute sur le port 9090
}

