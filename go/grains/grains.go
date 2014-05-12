package grains

import "math"

func Square(input int) uint64 {
	return 1 << uint(input-1)
}

func Total() (total uint64) {
	for i := 1; i <= 64; i++ {
		total += Square(i)
	}
	return total
}
