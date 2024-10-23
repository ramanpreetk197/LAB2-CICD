#include <stdio.h>

// Function to add two numbers
int add(int a, int b) {
    return a + b;
}

// Main function for testing
int main() {
    int result = add(5, 7);

    if (result == 12) {
        printf("Test passed!\n");
    } else {
        printf("Test failed! Expected 12, but got %d\n", result);
    }

    return 0;
}
