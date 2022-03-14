package example

import "testing"

func TestExample(t *testing.T) {
	expect := "Example"
	result := getExample()

	if result != expect {
		t.Errorf("Expected: %s, got: %s", expect, result)
	}
}
