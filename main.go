package main

import (
	"flag"

	_ "github.com/jinzhu/gorm/dialects/mysql"
	_ "github.com/jinzhu/gorm/dialects/postgres"
	_ "github.com/jinzhu/gorm/dialects/sqlite"
	"github.com/sohey-dr/CA_Go/config"
	"github.com/sohey-dr/CA_Go/database"
	"github.com/sohey-dr/CA_Go/server"
)

func main() {

	env := flag.String("e", "development", "")
	flag.Parse()

	config.Init(*env)
	database.Init(false)
	if err := server.Init(); err != nil {
		panic(err)
	}
}
