#!/usr/bin/env bats

load helper

@test "LUMEN: Lumen container building works." {
	run ./lumen build
	[ "$status" -eq 0 ]
}
@test "LUMEN: Lumen and associated services spin up works." {
	# Tear down containers up already
	./lumen down

	run ./lumen up
	[ "$status" -eq 0 ]

	# Tear down containers
	./lumen down
}

