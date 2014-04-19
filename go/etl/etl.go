package etl

import "strings"

type legacyScores map[int][]string
type newScores map[string]int

func Transform(oldScoring legacyScores) newScores {
	m := make(map[string]int)
	for score, letters := range oldScoring {
		for _, l := range letters {
			m[strings.ToLower(l)] = score
		}
	}
	return m
}
