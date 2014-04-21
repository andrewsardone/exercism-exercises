package wc

import (
	"regexp"
	"strings"
)

func WordCount(sentence string) Histogram {
	words := collectWords(sentence)
	return countWords(words)
}

func collectWords(sentence string) []string {
	r, _ := regexp.Compile(`\w+`)
	words := r.FindAllString(sentence, -1)
	lowercaseWords := []string{}
	for _, w := range words {
		lowercaseWords = append(lowercaseWords, strings.ToLower(w))
	}
	return lowercaseWords
}

func countWords(words []string) map[string]int {
	wordCount := make(map[string]int)
	for _, word := range words {
		wordCount[word] = wordCount[word] + 1
	}
	return wordCount
}
