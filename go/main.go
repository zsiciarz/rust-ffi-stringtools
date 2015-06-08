package main

// #cgo LDFLAGS: -L../target/debug -lstringtools
// int count_substrings(const char* value, const char* substr);
import "C"
import "fmt"

func main() {
    value := C.CString("banana")
    substr := C.CString("na")
    fmt.Println(C.count_substrings(value, substr))
}
