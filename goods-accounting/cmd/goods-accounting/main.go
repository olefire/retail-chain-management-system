package main

import (
	"context"
	"github.com/jackc/pgx/v5/pgxpool"
	"goods-accounting/internal/config"
	"log"
	"net/http"
)

func main() {
	ctx := context.Background()
	cfg := config.NewConfig()

	pool, err := pgxpool.New(ctx, cfg.PgDSN)
	if err != nil {
		log.Fatalf("db connect: %v", err)
	}
	defer pool.Close()
	if err := pool.Ping(ctx); err != nil {
		log.Fatalf("ping db: %v", err)
	}

	if err = http.ListenAndServe(cfg.Port, nil); err != nil {
		log.Fatalf("Unable to start server: %v", err)
	}
}
