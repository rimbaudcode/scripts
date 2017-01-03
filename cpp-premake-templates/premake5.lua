workspace "hello"

configurations {"Debug", "Release"}
language "C++"
targetdir "bin/%{cfg.buildcfg}"
flags { "C++14" }

filter "configurations:Debug"
defines { "DEBUG" }
flags { symbols "On" }

filter "configurations:Release"
defines { "RELEASE" }
optimize "On"

-- Library
project "hello"
kind "SharedLib"
files { "lib/**.h", "lib/**.cpp" }

-- App
project "hello"
kind "ConsoleApp"
files { "app/**.h", "app/**.cpp" }
links { "hello" }
includedirs { "lib" }

-- Tests
project "hello_test"
kind "SharedLib"
files { "test/**.h", "test/**.cpp" }
