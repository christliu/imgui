project "ImGui"
	-- location "Christ/external/imgui"
	kind "StaticLib"
	language "c++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		-- "%{prj.name}/**.h",
		-- "%{prj.name}/**.cpp"
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		staticruntime "On"
		systemversion "latest"
		defines
		{
		}