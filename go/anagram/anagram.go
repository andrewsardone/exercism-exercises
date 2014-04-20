package anagram

import (
	"sort"
	"strings"
)

func Detect(subject string, candidates []string) []string {
	matches := make([]string, 0)
	comparableSubject := toDetectComparable(subject)
	for _, c := range candidates {
		if len(subject) != len(c) {
			continue
		}
		if isSameWord(subject, c) {
			continue
		}
		comparableCandidate := toDetectComparable(c)
		if comparableSubject == comparableCandidate {
			matches = append(matches, strings.ToLower(c))
		}
	}
	return matches
}

func isSameWord(w1, w2 string) bool {
	return strings.ToLower(w1) == strings.ToLower(w2)
}

func toDetectComparable(s string) string {
	return toSortString(strings.ToLower(s))
}

func toSortString(s string) string {
	ss := strings.Split(s, "")
	sort.Strings(ss)
	return strings.Join(ss, "")
}
