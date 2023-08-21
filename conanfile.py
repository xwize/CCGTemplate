from conans import ConanFile, tools, CMake

class CCGTemplate(ConanFile):
    name = "CCGTemplate"
    version = "0.1"
    requires = [
        "gtest/1.10.0",
        "fmt/10.1.0"
    ]
    exports = "*"
    generators = "cmake"
    build_policy = "missing"

    def conan_info(self):
        pass

    def configure(self):
        pass

    def build(self):
        pass

    def package(self):
        pass
     
    def package_info(self):
        pass