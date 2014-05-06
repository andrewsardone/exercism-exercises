package raindrops

import (
	"strconv"
	"strings"
)

func Convert(input int) string {
	rainDrops := []string{}

	if input%3 == 0 {
		rainDrops = append(rainDrops, "Pling")
	}
	if input%5 == 0 {
		rainDrops = append(rainDrops, "Plang")
	}
	if input%7 == 0 {
		rainDrops = append(rainDrops, "Plong")
	}

	if len(rainDrops) == 0 {
		rainDrops = append(rainDrops, strconv.Itoa(input))
	}

	return strings.Join(rainDrops, "")
}
