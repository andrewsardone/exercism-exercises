package etl

import "strings"

func Transform(oldScoring map[int][]string) map[string]int {
	m := make(map[string]int)
	for score, letters := range oldScoring {
		for _, l := range letters {
			m[strings.ToLower(l)] = score
		}
	}
	return m
}
