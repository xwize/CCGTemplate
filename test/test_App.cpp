#include "../src/App.hpp"

#include <gtest/gtest.h>

TEST(App, TestMe)
{
    EXPECT_EQ(CCGTemplate::test_me(1, 2), 3);
}

TEST(App, Run)
{
}
