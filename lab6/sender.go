package main

import (
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

func handler(w http.ResponseWriter, r *http.Request) {
	root := "./"

	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if !info.IsDir() && strings.Contains(info.Name(), "exp") {
			http.ServeFile(w, r, path)
		}
		return nil
	})
	if err != nil {
		http.Error(w, "Internal Server Error", http.StatusInternalServerError)
	}
}

func main() {
	http.HandleFunc("/", handler)
  http.ListenAndServe(":1234", nil)
}
