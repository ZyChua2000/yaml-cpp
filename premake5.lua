project "ImGui"
     kind "StaticLib"
     language "C++"
	 staticruntime "off"
	 warnings "off"

     targetdir ("bin/" .. outputdir .. "/%{prj.name}")
     objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

     files
     {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
     }

     includedirs
     {
      "include"
     }



	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

    filter "configurations:Distribution"
		runtime "Release"
		optimize "speed"
        symbols "off"