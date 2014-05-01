package allergies

import "math"

var allergens = []string{
	"eggs",         // score 1,   i.e., 2^0
	"peanuts",      // score 2,   i.e., 2^1
	"shellfish",    // score 4,   i.e., 2^2
	"strawberries", // score 8,   i.e., 2^3
	"tomatoes",     // score 16,  i.e., 2^4
	"chocolate",    // score 32,  i.e., 2^5
	"pollen",       // score 64,  i.e., 2^6
	"cats",         // score 128, i.e., 2^7
}

func Allergies(score int) (allergies []string) {
	for _, allergen := range allergens {
		if AllergicTo(score, allergen) {
			allergies = append(allergies, allergen)
		}
	}
	return allergies
}

func AllergicTo(score int, allergen string) bool {
	index := indexOf(allergens, allergen)
	allergenScore := int(math.Exp2(float64(index)))
	return (score & allergenScore) > 0
}

// lol-ing that I have to write this
func indexOf(slice []string, element string) int {
	for index, value := range slice {
		if value == element {
			return index
		}
	}
	return -1
}
