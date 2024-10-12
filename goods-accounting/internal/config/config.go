package config

import (
	"fmt"
	"github.com/spf13/viper"
	"log"
)

type Config struct {
	PgDSN string
}

func NewConfig() *Config {
	viper.SetConfigFile("config.yaml")
	if err := viper.ReadInConfig(); err != nil {
		log.Println(fmt.Errorf("NewConfig: %w", err))
		viper.SetDefault("pg_dsn", "postgres://postgres:postgres@localhost:54322")
	}

	return &Config{
		PgDSN: viper.GetString("pg_dsn"),
	}
}
