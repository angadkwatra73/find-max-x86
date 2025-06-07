#include <stdio.h>

// Declare the external function
extern int find_max(int* arr, int len);

int main() {
    int array[] = {7, 5, 12, 3, 9};
    int length = sizeof(array) / sizeof(array[0]);

    int max = find_max(array, length);
    printf("Maximum value is: %d\n", max);

    return 0;
}

