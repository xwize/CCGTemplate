#include "App.hpp"

#include <fmt/format.h>

#include <iostream>

int App::run()
{
    std::cout << fmt::format("{}\n", "Hello World!");
    return 0;
}
