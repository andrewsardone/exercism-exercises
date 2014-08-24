package raindrops

import (
	"strconv"
)

var conversions = []struct {
	factor int
	sound  string
}{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"},
}

func Convert(input int) string {
	rainDrops := ""

	for _, c := range conversions {
		if input%c.factor == 0 {
			rainDrops += c.sound
		}
	}

	if len(rainDrops) == 0 {
		rainDrops = strconv.Itoa(input)
	}

	return rainDrops
}
