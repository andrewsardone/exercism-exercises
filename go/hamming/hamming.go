package hamming

func Distance(strandA, strandB string) int {
	distance := 0
	for i, r := range strandA {
		if i < len(strandA) && i < len(strandB) {
			if string(r) != string(strandB[i]) {
				distance++
			}
		}
	}
	return distance
}
