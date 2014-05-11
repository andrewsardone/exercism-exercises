package grains

import "math"

func Square(input int) uint64 {
	return uint64(math.Exp2(float64(input))) - uint64(math.Exp2(float64(input-1)))
}

func Total() (total uint64) {
	for i := 1; i <= 64; i++ {
		total += Square(i)
	}
	return total
}
