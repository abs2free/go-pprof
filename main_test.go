package main

import "testing"

func TestAdd(t *testing.T) {
	s := Add(URL)
	if s == "" {
		t.Errorf("Test.Add error!")
	}
}

func BenchmarkAdd(b *testing.B) {
	for i := 0; i < b.N; i++ {
		Add(URL)
	}
}
