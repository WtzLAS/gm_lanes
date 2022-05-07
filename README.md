# gm_lanes

An updated version of lanes for gmod.

## Usage

Put dll files into `garrysmod\lua\bin` and lua files into `lua\includes\modules`.

## Example

```lua
require "lanes"

local f = lanes.gen(function (n) return n * 2 end)

a = f(1)
b = f(2)

print(a[1], b[1])
```
