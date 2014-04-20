package anagram

import (
	"sort"
	"strings"
)

func Detect(subject string, candidates []string) []string {
	matches := make([]string, 0)
	comparableSubject := ToDetectComparable(subject)
	for _, c := range candidates {
		if len(subject) != len(c) {
			continue
		}
		if IsSameWord(subject, c) {
			continue
		}
		comparableCandidate := ToDetectComparable(c)
		if comparableSubject == comparableCandidate {
			matches = append(matches, strings.ToLower(c))
		}
	}
	return matches
}

func IsSameWord(w1, w2 string) bool {
	return strings.ToLower(w1) == strings.ToLower(w2)
}

func ToDetectComparable(s string) string {
	return ToSortString(strings.ToLower(s))
}

func ToSortString(s string) string {
	ss := strings.Split(s, "")
	sort.Strings(ss)
	return strings.Join(ss, "")
}
