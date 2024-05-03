package main

import (
	"fmt"
	"os"
	"sync"
)

func create(wg *sync.WaitGroup, nom int) {
	name := fmt.Sprintf("file_%d.txt", nom)
	file, err := os.Create(name)
	if err != nil {
		panic(err)
	}

	for range nom * 250000 {
		file.WriteString(fmt.Sprintf("%d\n", nom))
	}
	file.Close()
	wg.Done()
}

func main() {
	var wg sync.WaitGroup

	for i := 1; i < 20; i++ {
		wg.Add(1)
		go create(&wg, i)
	}

	wg.Wait()
}
