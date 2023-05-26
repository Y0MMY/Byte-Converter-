workspace "RockEngine"
	architecture "x64"
	targetdir "build"
	
	configurations 
	{ 
		"Debug", 
    }
    
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Tools"

project "Script-Core"
    location "Script-Core"
    kind "StaticLib"
    language "C++"
    
	targetdir ("build/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("build/bin-int/" .. outputdir .. "/%{prj.name}")

	files 
	{ 
		"%{prj.name}/**.h", 
		"%{prj.name}/**.c", 
		"%{prj.name}/**.hpp", 
		"%{prj.name}/**.cpp" 
    }

    
	filter "system:windows"
		cppdialect "C++17"
        staticruntime "On"
        			
    filter "configurations:Debug"
        defines "RE_DEBUG"
		runtime "Debug"
        symbols "On"


project "Script"
    location "Script"
    kind "SharedLib"
    language "C++"
    
	targetdir ("build/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("build/bin-int/" .. outputdir .. "/%{prj.name}")

	files 
	{ 
		"%{prj.name}/**.h", 
		"%{prj.name}/**.c", 
		"%{prj.name}/**.hpp", 
		"%{prj.name}/**.cpp",
		"%{prj.name}/**.hpp", 
    }

    links{
        "Script-Core"
    }
    
	filter "system:windows"
		cppdialect "C++17"
        staticruntime "On"
        			
    filter "configurations:Debug"
        defines "RE_DEBUG"
		runtime "Debug"
        symbols "On"


group ""

group "Runtime"
project "Runtime"
    location "Runtime"
    kind "ConsoleApp"
    language "C++"
    
	targetdir ("build/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("build/bin-int/" .. outputdir .. "/%{prj.name}")
    
	files 
	{ 
		"%{prj.name}/**.h", 
		"%{prj.name}/**.c", 
		"%{prj.name}/**.hpp", 
		"%{prj.name}/**.cpp" 
	}
    
	filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        
		defines 
		{ 
            "RE_PLATFORM_WINDOWS",
		}
    
   filter "configurations:Debug"
        defines "RE_DEBUG"
		runtime "Debug"
        symbols "On"
group ""   
  