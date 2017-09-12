#!/usr/bin/env bats

load helper

@test "LUMEN: Lumen stack works." {
	run docker-compose ps
	assert_contains "$output" "php_1"
	assert_contains "$output" "postgres_1"
	assert_contains "$output" "web_1"
}
@test "LUMEN: Lumen network is configured." {
	run docker network ls
	assert_contains "$output" "code-network"
}

