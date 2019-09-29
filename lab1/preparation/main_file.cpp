#include <iostream>

#include "file1.h"
#include "file2.h"

int main(){
  std::cout << "Hello world" << std::endl;

  function_from_file1();

  function_from_file2();

  return 0;
}
