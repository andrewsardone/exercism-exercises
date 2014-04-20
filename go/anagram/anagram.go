package anagram

import (
	"sort"
	"strings"
)

func Detect(subject string, candidates []string) []string {
	matches := []string{}
	for _, c := range candidates {
		if isAnagram(subject, c) {
			matches = append(matches, strings.ToLower(c))
		}
	}
	return matches
}

func isAnagram(subject, candidate string) (isAnagram bool) {
	if len(subject) != len(candidate) {
		return false
	}
	if isSameWord(subject, candidate) {
		return false
	}
	comparableSubject := toDetectComparable(subject)
	comparableCandidate := toDetectComparable(candidate)
	if comparableSubject == comparableCandidate {
		isAnagram = true
	}
	return isAnagram
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
