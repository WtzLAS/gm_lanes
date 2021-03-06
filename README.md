# gm_lanes

An updated version of lanes for gmod.

## Installation

Prebuilt binaries can be found in `Actions` tab above.

Put dll files into `garrysmod/lua/bin` and `lanes.lua` into `garrysmod/lua/includes/modules`.

To enable Starfall support, put `starfall/lanes.lua` into `garrysmod/addons/StarfallEx/lua/starfall/libs_sh`.

⚠️ Warning: Lanes can bypass Starfall's CPU quota limit and crash your server. See below sections for more details. ⚠️

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

## Starfall Support

The CPU time consumed by lanes is not limited by Starfall's CPU quota system,
so an attacker could open enormous number of lanes or use other ways to lag or crash servers.

To limit its usage, permissions `lanes.create` and `lanes.linda` are provided.

Make sure that permissions are set up correctly.

## Build

First, install `premake5`.

Then, run `premake5 [vs20**/gmake/xcode]` according to your configuration at the root dir of the repo.

And head to `projects` folder to start building.

Dll files will be in `projects/[OS]/[Tool]/[Configuration]/[Platform]/`.

`lanes.lua` could be found in `lanes` repo under `src`.
