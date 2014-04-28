package accumulate

func Accumulate(collection []string, converter func(string) string) (acc []string) {
	for _, elem := range collection {
		acc = append(acc, converter(elem))
	}
	return acc
}
