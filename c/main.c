#include <stdint.h>
#include <stdio.h>

int32_t count_substrings(const char* value, const char* substr);

int main() {
    printf("%d\n", count_substrings("banana", "na"));
    return 0;
}
