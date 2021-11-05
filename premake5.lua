project "google_test"
    language "C++"
    cppdialect "C++14"
    kind "StaticLib"
    
    targetdir(TargetDir)
    objdir(ObjectDirectory)

    files 
    { 
        "googletest/src/gtest-all.cc", 
        "googletest/src/gtest_main.cc" 
    }
    
    includedirs 
    { 
        "googletest/include", 
        "googletest" 
    }
    

    
    filter "configurations:Debug"
        defines "DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "NDEBUG"
        runtime "Release"
        optimize "on"
