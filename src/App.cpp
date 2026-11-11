#include "App.hpp"

#include <format>
#include <iostream>

namespace vsm
{

int test_me(int a, int b)
{
    return a + b;
}

int App::run()
{
    std::cout << std::format("{}\n", "Hello World!");
    return 0;
}

} // namespace vsm
