package binary

import "math"

func ToDecimal(binary string) (decimal int) {
	highestDigitIndex := len(binary) - 1
	for i := highestDigitIndex; i >= 0; i-- {
		digit := string(binary[i])
		if isInvalidInput(digit) {
			decimal = 0
			break
		}
		if digit == "1" {
			decimal += int(math.Exp2(float64(highestDigitIndex - i)))
		}
	}
	return decimal
}

func isInvalidInput(i string) bool {
	return !(i == "1" || i == "0")
}
