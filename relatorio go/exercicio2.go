package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())

	// Gera um número aleatório entre 0 e 10 (exclusivo)
	numeroAleatorio := rand.Intn(10)

	//calculo da fatorial
	fatorial := 1
	for i := 1; i <= numeroAleatorio; i++ {
		fatorial *= i
	}
	fmt.Printf("Número aleatório: %d\n", numeroAleatorio)
	fmt.Printf("Fatorial de %d: %d\n", numeroAleatorio, fatorial)
}