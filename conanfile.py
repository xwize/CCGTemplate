from conan import ConanFile
from conan.tools.cmake import CMakeDeps, CMakeToolchain, cmake_layout
class vsm(ConanFile):
    name = "vsm"
    version = "0.1"
    package_type = "application"
    requires = [
        "gtest/1.18.0",
        "tl-expected/20190710"
    ]
    generators = "CMakeConfigDeps", "CMakeToolchain"
    settings = "os", "compiler", "build_type", "arch"

    def layout(self):
        cmake_layout(self)