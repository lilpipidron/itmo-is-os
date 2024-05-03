package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

func handler(w http.ResponseWriter, r *http.Request) {
	root := "."
	log.Print("start send")
	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if info.IsDir() && strings.Contains(info.Name(), "exp") {
			files, err := os.ReadDir(path)
			if err != nil {
				return err
			}
			for _, file := range files {
				if !file.IsDir() {
					log.Print(file.Name())
					filePath := filepath.Join(path, file.Name())
					http.ServeFile(w, r, filePath)
					filename := filepath.Base(filePath)
					w.Header().Set("Content-Disposition", fmt.Sprintf(`attachment; filename="%s"`, filename))
					io.WriteString(w, "\n")
				}
			}
		}
		return nil
	})
	if err != nil {
		http.Error(w, "Internal Server Error", http.StatusInternalServerError)
	}
}

func main() {
	http.HandleFunc("/", handler)
	log.Print("start listen")
	http.ListenAndServe(":1234", nil)
}
