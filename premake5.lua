local gmcommon = "./garrysmod_common"
include(path.join(gmcommon, "generator.v3.lua"))

local LANES_DIRECTORY = "lanes/src"

CreateWorkspace({name = "lanes.core"})
	CreateProject({serverside = true})
		includedirs(LANES_DIRECTORY)
		links("lanes")
		IncludeLuaShared()
		filter("system:linux")
			buildoptions("-pthread")
			linkoptions("-pthread")

	CreateProject({serverside = false})
		includedirs(LANES_DIRECTORY)
		links("lanes")
		IncludeLuaShared()
		filter("system:linux")
			buildoptions("-pthread")
			linkoptions("-pthread")

	project("lanes")
		kind("StaticLib")
		warnings("Default")
		includedirs({LANES_DIRECTORY, path.join(gmcommon, "include")})
		files({path.join(LANES_DIRECTORY, "*.c"), path.join(LANES_DIRECTORY, "*.h")})
		vpaths({
			["Source files/*"] = path.join(LANES_DIRECTORY, "*.c"),
			["Header files/*"] = path.join(LANES_DIRECTORY, "*.h")
		})
		IncludeLuaShared()

		filter("system:linux")
			defines("_GNU_SOURCE")
			buildoptions("-pthread")
			linkoptions("-pthread")
