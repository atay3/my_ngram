#include "my_ngram.h"

void fillArray(int* arr, char* string) {
    int index = 0;

    while (string[index] != '\0') {
        if (string[index] != '"') {;
            arr[(unsigned char)string[index]]++;
        }

        index++;
    }
}

void printArray(int* arr, int size) {
    for (int i = 1; i < size; i++) {
        if (arr[i] > 0) {
            printf("%c:%d\n", i, arr[i]);
        }
    }
}

int main (int argc, char* argv[]) {
    int arr[MAX_ARRAY_SIZE] = {0};

    for (int i = 1; i < argc; i++) {
        fillArray(arr, argv[i]);
    }

    printArray(arr, MAX_ARRAY_SIZE);

    return 0;
}
