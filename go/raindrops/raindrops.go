package raindrops

import (
	"strconv"
)

func Convert(input int) string {
	rainDrops := ""

	if input%3 == 0 {
		rainDrops += "Pling"
	}
	if input%5 == 0 {
		rainDrops += "Plang"
	}
	if input%7 == 0 {
		rainDrops += "Plong"
	}

	if len(rainDrops) == 0 {
		rainDrops = strconv.Itoa(input)
	}

	return rainDrops
}
