package main

import "os"
import "fmt"
import "strconv"

func permute(openParens int, closeParens int) uint64 {
	if openParens < 0 || closeParens < 0 {
		return 0
	}

	if openParens == 0 && closeParens == 0 {
		return 1
	}

	return permute(openParens-1, closeParens+1) + permute(openParens, closeParens-1)
}

func main() {
    args := os.Args[1:]

    if len(args) == 0 {
    	fmt.Println("You must enter a number of pairs of parens to permute")
    }

    pairs, err := strconv.Atoi(args[0])

    if err != nil {
    	fmt.Println("That wasn't a number")
    	return
    }
    
    fmt.Println(permute(pairs, 0))
}