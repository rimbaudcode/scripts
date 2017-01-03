workspace "tool_name"

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
project "tool_name"
kind "SharedLib"
files { "lib/**.h", "lib/**.cpp" }

-- App
project "tool_name"
kind "ConsoleApp"
files { "app/**.h", "app/**.cpp" }
links { "tool_name" }
includedirs { "lib" }

-- Tests
project "tool_name_test"
kind "SharedLib"
files { "test/**.h", "test/**.cpp" }
