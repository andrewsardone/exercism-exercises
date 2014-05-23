package grains

import "math"

func Square(input int) uint64 {
	return 1 << uint(input-1)
}

func Total() uint64 {
	// Since we're totalling all the grains on the chessboard (64 squares),
	// this equals a 64 bit unsigned integer with all 1 bits, i.e., the
	// MaxUint64.
	return math.MaxUint64
}
