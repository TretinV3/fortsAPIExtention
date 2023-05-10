# Forts API extention

A visual studio code extention for the forts scripting api

## getting started

download the [extension](https://marketplace.visualstudio.com/items?itemName=TretinV3.forts-api-extention)

![download image](https://cdn.discordapp.com/attachments/780107245438369795/1103608754563452949/Capture_decran_2023-05-04_110401.png "how to download")

and the **Lua extention** (`ext install sumneko.lua`)

Then in your workspace, if the extention doesn't dectect your mod, open the command palette (ctrl + shift + p) and enter `activate forts API` this will activate the completion and intellisense.
For the doc if your not working in `/Steam/steamapps/common/Forts/data/mods/` (or in `/Steam/steamapps/workshop/content/410900/`) put AT THE VERY TOP of your file (line 1) `--- forts API ---` like that :
```lua
--- forts API ---

<your code>
```

## features
- autocompletion
- intellisense
- doc on hover
- example code

### example code
It's speed up the process : now with the `#example` snippet you will have up to **130** lines of code example for your current file

actualy implemented :
- mod.lua
- weapons/weapon_list.lua
- weapons/projectil_list.lua
- devices/device_list.lua
- material/building_materials.lua

## contributors
- TretinV3

## come chat with us !

Feel free to contact me on discord (TrétinV3#7056 for now) or in #⁠🛠-modding !

https://discord.gg/forts