package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	fmt.Println("Digite os coeficientes(a, b, c):")

	//leitura dos coeficientes
	aStr, bStr, cStr := os.Args[1], os.Args[2], os.Args[3]

	//converter string pra numero
	a, err := strconv.ParseFloat(aStr, 64)
	if err != nil {
		fmt.Println("Erro ao converter o coeficiente a:", err)
		return
	}
	b, err := strconv.ParseFloat(bStr, 64)
	if err != nil {
		fmt.Println("Erro ao converter o coeficiente b:", err)
		return
	}
	c, err := strconv.ParseFloat(cStr, 64)
	if err != nil {
		fmt.Println("Erro ao converter o coeficiente c:", err)
		return
	}

	delta := b*b - 4*a*c

	// verificar as raizes
	if delta >= 0 {
		// Calcula as raízes
		x1 := (-b + math.Sqrt(delta)) / (2 * a)
		x2 := (-b - math.Sqrt(delta)) / (2 * a)

		fmt.Printf("As raízes da equação são: x1 = %.2f e x2 = %.2f\n", x1, x2)
	} else {
		fmt.Println("A equação não possui raízes reais.")
	}
}