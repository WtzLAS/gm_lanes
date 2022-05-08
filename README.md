# gm_lanes

An updated version of lanes for gmod.

## Installation

Prebuilt binaries can be found in `Actions` tab above.

Put dll files into `garrysmod/lua/bin` and `lanes.lua` into `garrysmod/lua/includes/modules`.

`lanes.lua` could be found in `lanes` repo under `src`.

To enable StarfallEx support, put `starfallex/lanes.lua` into `garrysmod/addons/StarfallEx/lua/starfall/libs_sh`.

## Example

```lua
-- this will set global variable `lanes` to what we need cause gmod uses Lua 5.1
require("lanes")

local f = lanes.gen(function (n) return n * 2 end)

a = f(1)
b = f(2)

print(a[1], b[1])
```

Notice that in StarfallEx there's no need to `require("lanes")`.

Refer to [the repo](https://github.com/LuaLanes/lanes) and [the docs](http://lualanes.github.io/lanes/) for more information.

## Build

First, install `premake5`.

Then, run `premake5 [vs20**/gmake/xcode]` according to your configuration at the root dir of the repo.

And head to `projects` folder to start building.

Dll files will be in `projects/[OS]/[Tool]/[Configuration]/[Platform]/`.

`lanes.lua` could be found in `lanes` repo under `src`.
