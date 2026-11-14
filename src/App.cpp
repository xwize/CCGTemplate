#include "App.hpp"

#include <format>
#include <iostream>

namespace CCGTemplate
{

int test_me(int arg_a, int arg_b)
{
    return arg_a + arg_b;
}

int App::run()
{
    std::cout << std::format("{}\n", "Hello World!");
    return 0;
}

} // namespace CCGTemplate
