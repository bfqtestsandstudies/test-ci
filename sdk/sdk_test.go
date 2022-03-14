package sdk

import (
	"testing"
)

func TestSDK(t *testing.T) {
	expect := "SDK"
	result := getSDK()

	if result != expect {
		t.Errorf("Expected: %s, got: %s", expect, result)
	}
}
