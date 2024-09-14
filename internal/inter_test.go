package internal

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestDoStuff(t *testing.T) {
	expected := 42
	result := DoStuff() // Accessing the unexported function

	assert.Equal(t, expected, result)
}
