#include <cstdio>
#include <iostream>

#include "./Adder.h"

using namespace std;

int main() {
  Adder adder;

  int result = adder.add(1, 2);

  printf(" 1 + 2 = %d\r\n", result);

  return 0;
}

