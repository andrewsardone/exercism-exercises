package binary

import "math"

func ToDecimal(binary string) (decimal int) {
	for i := len(binary) - 1; i > -1; i-- {
		character := binary[i]
		digit := string(character)
		if digit == "1" || digit == "0" {
			if digit == "1" {
				decimal += int(math.Exp2(float64((len(binary) - 1) - i)))
			}
		} else {
			decimal = 0
			break
		}
	}
	return decimal
}
