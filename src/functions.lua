---@meta _


--//


---@alias hookTypes
---| "HUD"                    # function(v: drawerlib, ...)
---| "IntermissionThinker"    # function()
---| "KeyDown"                # function(keyevent: keyevent_t)
---| "KeyUp"                  # function(keyevent: keyevent_t)
---| "LinedefExecute"         # function(line: line_t, mobj: mobj_t, sector: sector)
---| "MapChange"              # function(mapnum: integer)
---| "MapLoad"                # function(mapnum: integer)
---| "ThinkFrame"             # function()
---| "PreThinkFrame"          # function()
---| "PostThinkFrame"         # function()
---| "GameQuit"               # function()
---| "BotAI"                  # function(player: mobj_t, bot: mobj_t)
---| "BotTiccmd"              # function(bot: player_t, cmd: ticcmd_t)
---| "BotRespawn"             # function(player: mobj_t, bot: mobj_t)
---| "HurtMsg"                # function(player: player_t, inflictor: mobj_t, source: mobj_t)
---| "NetVars"                # function(network: fun(var))
---| "TeamSwitch"             # function(player: player_t, team: integer, fromspectators: boolean, autobalance: boolean, scramble: boolean)
---| "ViewpointSwitch"        # function(player: player_t, nextviewedplayer: player_t, forced: boolean)
---| "AbilitySpecial"         # function(player: player_t)
---| "JumpSpecial"            # function(player: player_t)
---| "JumpSpinSpecial"        # function(player: player_t)
---| "SpinSpecial"            # function(player: player_t)
---| "BossDeath"              # function(mobj: mobj_t)
---| "BossThinker"            # function(mobj: mobj_t)
---| "FollowMobj"             # function(player: player_t, mobj: mobj_t)
---| "MapThingSpawn"          # function(mobj: mobj_t, mapthing: mapthing_t)
---| "MobjCollide"            # function(thing: mobj_t, tmthing: mobj_t)
---| "MobjLineCollide"        # function(mobj: mobj_t, line: line_t)
---| "MobjDamage"             # function(target: mobj_t, inflictor: mobj_t, source: mobj_t, damage: integer, damagetype: integer)
---| "MobjDeath"              # function(target: mobj_t, inflictor: mobj_t, source: mobj_t, damagetype: integer)
---| "MobjFuse"               # function(mobj: mobj_t)
---| "MobjMoveBlocked"        # function(mobj: mobj_t, thing: mobj_t, line: line_t)
---| "MobjRemoved"            # function(mobj: mobj_t)
---| "MobjSpawn"              # function(mobj: mobj_t)
---| "MobjThinker"            # function(mobj: mobj_t)
---| "SeenPlayer"             # function(player: player_t, seenplayer: player_t)
---| "PlayerJoin"             # function(playernum: integer)
---| "PlayerMsg"              # function(source: player_t, type: integer, target: player_t, msg: string)
---| "PlayerQuit"             # function(player: player_t, reason: integer)
---| "PlayerThink"            # function(player: player_t)
---| "PlayerCanDamage"        # function(player: player_t, mobj: mobj_t)
---| "PlayerSpawn"            # function(player: player_t)
---| "PlayerCmd"              # function(player: player_t, cmd: ticcmd_t)
---| "PlayerHeight"	          # function(player: player_t)
---| "PlayerCanEnterSpinGaps" # function(player: player_t)
---| "ShouldDamage"           # function(target: mobj_t, inflictor: mobj_t, source: mobj_t, damage: integer, damagetype: integer)
---| "ShieldSpawn"            # function(player: player_t)
---| "ShieldSpecial"          # function(player: player_t)
---| "TouchSpecial"           # function(special: mobj_t, toucher: mobj_t)
---| "MusicChange"            # function(oldname: string, newname: string, mflags: integer, looping: boolean, position: integer, prefadems: integer, fadeinms: integer)
---| "ShouldJingleContinue"   # function(player: player_t, musname: string)

---@alias hudTypes
---| "stagetitle"           # Stage title card. (Greenflower Zone Act 1, ...)
---| "textspectator"        # Information text as a spectator.
---| "score"                # Score text and counter.
---| "time"                 # Time text and counter.
---| "rings"                # Rings text and counter.
---| "lives"                # Lives text and counter.
---| "teamscores"           # Red and Blue team scores. (Team Match, CTF)
---| "weaponrings"          # Weapon Ring icons. (Match, CTF)
---| "powerstones"          # Chaos Emerald power icons. (Match, CTF)
---| "nightslink"           # NiGHTS link counter.
---| "nightsdrill"          # NiGHTS drill bar.
---| "nightsrings"          # NiGHTS ring counter.
---| "nightsscore"          # NiGHTS score counter.
---| "nightstime"           # NiGHTS time counter.
---| "nightsrecords"        # NiGHTS screen text. (Bonus Time Start, Ending Bonuses, ...)
---| "rankings"             # Multiplayer rankings.
---| "coopemeralds"         # Chaos Emeralds on Multiplayer and/or Sinple-Player's rankings.
---| "tokens"               # Special Stage tokens on Multiplayer and/or Sinple-Player's rankings.
---| "tabemblems"           # Emblems on Single-Player's rankings.
---| "intermissiontally"    # Score information on intermissions.
---| "intermissionmessages" # Information text on intermissions. (Countdown for next stage, ...)

---@alias hudLayers
---| "game"         # function(v: drawerlib, stplyr?: player_t, cam?: camera_t)
---| "scores"       # function(v: drawerlib)
---| "title"        # function(v: drawerlib)
---| "titlecard"    # function(v: drawerlib, stplyr?: player_t, ticker?: integer, endtime?: integer)
---| "intermission" # function(v: drawerlib, stagefailed?: boolean)

---@alias genericAlignments
---| "left"
---| "right"
---| "center"

---@alias extraStringAlignments
---| "thin"
---| "thin-right"
---| "thin-center"
---| "small"
---| "small-right"
---| "small-center"
---| "small-thin"
---| "small-thin-right"
---| "small-thin-center"
---| "fixed"
---| "fixed-right"
---| "fixed-center"
---| "thin-fixed"
---| "thin-fixed-right"
---| "thin-fixed-center"
---| "small-fixed"
---| "small-fixed-right"
---| "small-fixed-center"
---| "small-thin-fixed"
---| "small-thin-fixed-right"
---| "small-thin-fixed-center"

---@alias widthTypes
---| "normal"
---| "thin"
---| "small"

---@alias userdataTypes
---| "unknown"
---| "state_t"
---| "mobjinfo_t"
---| "sfxinfo_t"
---| "skincolor_t"
---| "skincolor_t.ramp"
---| "spriteinfo_t"
---| "spriteframepivot_t[]"
---| "spriteframepivot_t"
---| "taglist"
---| "mobj_t"
---| "mapthing_t"
---| "player_t"
---| "ticcmd_t"
---| "skin_t"
---| "player_t.powers"
---| "skin_t.soundsid"
---| "skin_t.sprites"
---| "skin_t.sprites[]"
---| "vertex_t"
---| "line_t"
---| "side_t"
---| "subsector_t"
---| "sector_t"
---| "ffloor_t"
---| "pslope_t"
---| "vector2_t"
---| "vector3_t"
---| "mapheader_t"
---| "polyobj_t"
---| "consvar_t"
---| "sector_t.lines"
---| "sector_t.taglist"
---| "line_t.sidenum"
---| "line_t.args"
---| "line_t.stringargs"
---| "mapthing_t.args"
---| "mapthing_t.stringargs"
---| "bbox"
---| "hudinfo_t"
---| "patch_t"
---| "colormap"
---| "camera_t"
---| "action"
---| "luabanks[]"


--//


---@class drawerlib
local v = {}

---@class polyobj_t
local polyobj = {}


--//


-- Creates a new hook with the arguments given.
--
---@param hookname hookTypes
---@param callback function
---@param extra? integer | string
function addHook(hookname, callback, extra) end

-- Automatically initializes a new named resource based on the name given, declaring the name for the next "freeslot" available for the appropriate resource type.
--
-- * This function will return the integer representing each resource successfully allocated; unsuccessful allocations will not be returned.
--
---@param resource string
---@param ... string
---@return ... integer
function freeslot(resource, ...) end

-- This calls the original version of the current action.
--
-- * Only use this inside of an overridden `A_` action.
--
---@param actor mobj_t
---@param var1? any
---@param var2? any
function super(actor, var1, var2) end

-- Returns the userdata type of `var` as a string.
--
---@param var userdata
---@return userdataTypes userdata
function userdataType(var) end

-- Reserves and then returns a `luabanks` array.
--
-- * `Luabanks` is a method to save and load custom information in a savefile.
-- * The indexes 0 through 15 in the luabanks array contains `UINT32` integers, which are freely modifiable by the modder.
-- * When reserved in an addon with custom gamedata, this array is automatically updated when a save file is loaded, and saved alongside the normal save information when the game writes the save to a file, akin to saving the emeralds collected in a save.
-- * Trying to call this function in a hook or otherwise calling it more than once, including if another mod has already called it before, will result in an error. As such, only one `luabanks` mod can be loaded in at any one time.
--
---@return UINT32[]
function reserveLuaBanks() end

-- Registers the metatable `metatable`.
--
-- * Currently, tables passed through `NetVars` hooks or stored in custom `player_t`/`mobj_t` fields will not keep their metatable, because SRB2 does not keep track of them by default.
-- * This issue can be solved by calling this function during script loading to have SRB2 register the given metatable, in such a way that the `tables`/`userdata` this metatable is attached to (via `setmetatable()`) will not lose their metatable when sent to a client connecting to the server.
--
---@param metatable table
---@return table | nil
function registerMetatable(metatable) end

-- Takes a string as only argument and returns the metatable associated to the userdata type this string refers to.
--
-- * Returns *`nil`* if the string does not refer to a valid userdata type.
--
---@param userdataname string
---@return table | nil
function userdataMetatable(userdataname) end

-- Returns a modified value of SDL's high resolution counter.
--
-- This is used as a profiling timer function: Two values returned by this function can be substracted from each other to find out how much time (in microseconds) is between them.
--
-- * This can be used to measure the performance of Lua code, and as such shouldn't be used for anything else other than performance measurements.
--
-- * **`NOTE:`** OpenGL and HUD hooks measuring Lua API calls that contain can give unreliable/confusing results because of the asynchronous nature of OpenGL. This applies to measuring HUD drawing functions in OpenGL mode.
--
-- Here's an example:
--
-- ```lua
-- -- Get the time before the code to be profiled
-- local first = getTimeMicros()
--
-- -- Run a slow function/block, like:
-- local nums = {}
-- for i = 1, 10000 do
--     nums[i] = 0
--
--     for j = 1, i do
--         nums[j] = $ + 1
--     end
-- end
--
-- -- Get the time after the code to be profiled
-- local second = getTimeMicros()
--
-- -- Substract the newest time against the oldest time
-- local result = second - first
-- -- This result will represent the time between [first] and [second], in microseconds
-- ```
--
---@return integer
function getTimeMicros() end


--//


-- Returns the absolute value (the number's distance from zero) of `a`.
--
---@param a integer
---@return integer
function abs(a) end

-- Returns the smaller value of `a` or `b`.
--
---@param a integer
---@param b integer
---@return integer
function min(a, b) end

-- Returns the larger value of `a` or `b`.
--
---@param a integer
---@param b integer
---@return integer
function max(a, b) end


--//


-- Returns the sine of the given angle as a fixed-point value. Output values range from `-FRACUNIT` to `FRACUNIT`.
--
---@param a angle_t
---@return fixed_t
function sin(a) end

-- Returns the cosine of the given angle as a fixed-point value. Output values range from `-FRACUNIT` to `FRACUNIT`.
--
---@param a angle_t
---@return fixed_t
function cos(a) end

-- Returns the tangent of the given angle as a fixed-point value. Output values range from about `-1303*FRACUNIT` to about `1303*FRACUNIT`.
--
-- * Undefined values, such as `tan(90°)` or `tan(270°)`, are represented by `INT32_MIN`.
--
---@param a angle_t
---@return fixed_t
function tan(a) end

-- **`FIXME:`** Add a description when the wiki does.
--
---@param x fixed_t
---@return angle_t
function asin(x) end

-- **`FIXME:`** Add a description when the wiki does.
--
---@param x fixed_t
---@return angle_t
function acos(x) end

-- Converts an integer in the fixed-point scale to an angle value.
--
-- * Example: `FixedAngle(90*FRACUNIT)` will return `ANGLE_90`.
--
---@param a fixed_t
---@return angle_t
function FixedAngle(a) end

-- Converts an angle value to an integer in the fixed-point scale.
--
-- * Example: `AngleFixed(ANGLE_90)` will return `90*FRACUNIT`.
--
---@param a angle_t
---@return fixed_t
function AngleFixed(a) end

-- Returns the "inverse" of the given angle, i.e., `360° - a`.
--
-- * Example: `InvAngle(ANGLE_45)` will return `ANGLE_315`.
--
---@param a angle_t
---@return angle_t
function InvAngle(a) end


--//


-- Returns the result of multiplying `a` by `b` in the fixed-point scale.
--
-- * Example: `FixedMul(2*FRACUNIT, 3*FRACUNIT)` will return `6*FRACUNIT`.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedMul(a, b) end

-- Returns the result of dividing `a` by `b` in the fixed-point scale.
--
-- * Example: `FixedDiv(6*FRACUNIT, 3*FRACUNIT)` will return `2*FRACUNIT`.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedDiv(a, b) end

-- Returns the integer component of `a` as a normal integer.
--
-- * Example: `FixedInt(45*FRACUNIT)` will return **45**.
--
---@param a fixed_t
---@return integer
function FixedInt(a) end

-- Returns the remainder of dividing `a` by `b` in the fixed-point scale.
--
-- * **`NOTE:`** Negative values for `b` are not handled correctly and may slow down the game.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedRem(a, b) end

-- Returns the square root of `a` in the fixed-point scale.
--
-- * Example: `FixedSqrt(16*FRACUNIT)` will return `4*FRACUNIT`.
--
---@param a fixed_t
---@return fixed_t
function FixedSqrt(a) end

-- Returns the hypotenuse of `a` and `b` in the fixed-point scale (i.e., the length of the longest side of a right-angled triangle where the other sides have lengths `a` and `b`).
--
-- * Example: `FixedHypot(3*FRACUNIT, 4*FRACUNIT)` will return `5*FRACUNIT`.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedHypot(a, b) end

-- Returns the floor of `a` (the largest integer that is not larger than `a`) in the fixed-point scale.
--
---@param a fixed_t
---@return fixed_t
function FixedFloor(a) end

-- Returns the value of `a` rounded to the nearest whole number towards 0 (or `a` truncated to zero decimal digits) in the fixed-point scale.
--
---@param a fixed_t
---@return fixed_t
function FixedTrunc(a) end

-- Returns the ceiling of `a` (the smallest integer that is not smaller than `a`) in the fixed-point scale.
--
---@param a fixed_t
---@return fixed_t
function FixedCeil(a) end

-- Returns the value of `a` rounded to the nearest whole number away from 0 in the fixed-point scale.
--
---@param a fixed_t
---@return fixed_t
function FixedRound(a) end


--//


-- For a given sector type number `special` and a sector type group `section` (expected to be a value between 1 and 4), returns the number of the sector effect from `section` that `special` uses, or 0 if no effect from this group is used. The output values range from 0 to 15.
--
-- * Example: If the sector `sector` uses the `Fire Damage` sector special from Group 1, `GetSecSpecial(sector.special, 1)` will return 3.
--
---@param special integer
---@param section integer
---@return integer
function GetSecSpecial(special, section) end

-- Returns *`true`* if `flags` contains all the emerald flags from `EMERALD1` to `EMERALD7`.
--
-- * Intended to be used for checking either the Single Player/Co-op emeralds collected by all players (`emeralds`), or the multiplayer emeralds collected by a particular player (`<player_t>.powers[pw_emeralds]`).
--
---@param flags integer
---@return boolean
function All7Emeralds(flags) end

-- Returns both the opposite skincolor for `color`, and the associated sprite frame number for the opposite color.
--
-- * Example: `ColorOpposite(SKINCOLOR_WHITE)` will return the values `SKINCOLOR_BLACK` and 10.
--
---@param color skincolornum_t
---@return skincolornum_t, integer
function ColorOpposite(color) end


--//


---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.linear(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.insine(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outsine(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutsine(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inquad(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outquad(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutquad(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.incubic(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outcubic(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutcubic(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inquart(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outquart(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutquart(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inquint(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outquint(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutquint(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inexpo(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.outexpo(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t
---@param fin? fixed_t
function ease.inoutexpo(x, start, fin) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t | nil
---@param fin? fixed_t | nil
---@param param? fixed_t
function ease.inback(x, start, fin, param) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t | nil
---@param fin? fixed_t | nil
---@param param? fixed_t
function ease.outback(x, start, fin, param) end

---@overload fun(x: fixed_t, fin: fixed_t)
---@param x fixed_t
---@param start? fixed_t | nil
---@param fin? fixed_t | nil
---@param param? fixed_t
function ease.inoutback(x, start, fin, param) end


--//


-- Enables `huditem`, if it was disabled by `hud.disable`.
--
---@param huditem hudTypes
function hud.enable(huditem) end

-- Disables `huditem`, preventing the game from drawing it.
--
---@param huditem hudTypes
function hud.disable(huditem) end

-- Returns *true`* if `huditem` is enabled, *`false`* if it was disabled by `hud.disable`.
--
---@param huditem hudTypes
---@return boolean
function hud.enabled(huditem) end

-- Adds a new HUD drawing function. `hookname` determines when the contents of the function are run.
--
---@param callback function
---@param layer? hudLayers
function hud.add(callback, layer) end


--//


-- Returns *`true`* if a graphic lump `name` exists in any WAD file loaded, returns *`false`* if not.
--
---@param name string
---@return boolean
function v.patchExists(name) end

-- Caches a new patch using a graphic with `name` as the name. Returns *`nil`* if the graphic does not exist.
--
---@param name string
---@return patch_t
function v.cachePatch(name) end

-- Returns a patch corresponding to the arguments given, and a boolean specifying whether the patch should be flipped.
--
-- * `sprite` may be a sprite number (`SPR_POSS`) or sprite prefix (`"POSS"`).
-- * `rotation` is a number between 1 and 8-16. `0` is equivalent to `1` for `rotation` as well.
-- * `rollangle` is an angle to rotate the patch counter clockwise.
--
---@param sprite string | integer
---@param frame? integer
---@param rotation? integer
---@param rollangle? angle_t
---@return patch_t, boolean
function v.getSpritePatch(sprite, frame, rotation, rollangle) end

-- Returns a patch corresponding to the arguments given, and a boolean specifying whether the patch should be flipped. For a description of some of these parameters, see `v.getSpritePatch`.
--
-- * This is specific to sprites belonging to a skin, since they use a special naming system to avoid naming conflicts between themselves.
-- * `super` determines whether to get the super form sprites. This overrides the `FF_SPR2SUPER` flag if it was also set.
--
---@param skin string | integer
---@param sprite2 string | integer
---@param super? boolean
---@param frame? integer
---@param rotation? integer
---@param rollangle? angle_t
---@return patch_t, boolean
function v.getSprite2Patch(skin, sprite2, super, frame, rotation, rollangle) end

-- Draws a patch at the screen coordinates given.
--
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` or `v.getStringColormap` to obtain a value that can be used here.
--
---@param x integer
---@param y integer
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap
function v.draw(x, y, patch, flags, colormap) end

-- Draws a patch at the screen coordinates given, but at a specific scale.
--
-- * Coordinates and scale are required to be fixed point values (e.g.: `FRACUNIT` is one pixel, `FRACUNIT/2` is half a pixel, `2*FRACUNIT` is two pixels, etc).
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` or `v.getStringColormap` to obtain a value that can be used here.
--
---@param x fixed_t
---@param y fixed_t
---@param scale fixed_t
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap
function v.drawScaled(x, y, scale, patch, flags, colormap) end

-- Draws a patch at the screen coordinates given, but at a specific horizontal (`hscale`) and vertical (`vscale`) scale.
--
-- * Coordinates and scale are required to be fixed point values (e.g.: `FRACUNIT` is one pixel, `FRACUNIT/2` is half a pixel, `2*FRACUNIT` is two pixels, etc).
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` or `v.getStringColormap` to obtain a value that can be used here.
--
---@param x fixed_t
---@param y fixed_t
---@param hscale fixed_t
---@param vscale fixed_t
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap
function v.drawStretched(x, y, hscale, vscale, patch, flags, colormap) end

-- Draws a patch at the screen coordinates given, but at a specific horizontal (`hscale`) and vertical (`vscale`) scale, with the sides cut off. (`sx`, `sy`, `w`, `h`)
--
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` or `v.getStringColormap` to obtain a value that can be used here.
-- * `sx` and `sy` determine how many pixels to cut off the left and top sides of the patch (moving the remaining area left and up in the process).
-- * `w` and `h` determine how wide and tall an area of the patch to draw, not how much to cut off the right and bottom sides.
-- * `sx`, `sy`, `w`, and `h` select a region of the patch to draw regardless of `hscale` and `vscale`.
-- * If you set `w` to `5*FRACUNIT` and set `hscale` to `2*FRACUNIT`, the patch will take up 10 pixels of the screen, as the 5 pixels of the patch are doubled in size. The 5 pixels of the patch that get used will be the same regardless of `hscale` and `vscale`'s values, referring to the patch itself.
--
---@param x fixed_t
---@param y fixed_t
---@param hscale fixed_t
---@param vscale fixed_t
---@param patch patch_t
---@param flags integer
---@param colormap colormap
---@param sx fixed_t
---@param sy fixed_t
---@param w fixed_t
---@param h fixed_t
function v.drawCropped(x, y, hscale, vscale, patch, flags, colormap, sx, sy, w, h) end

-- Draws a number at the screen coordinates given.
--
-- * Numbers drawn by this function will use the same font as numbers from the **score/time/rings** area of the normal HUD.
-- * `flags` determines the video flags given, which control extra effects such as color and translucency.
-- * Unlike `v.drawPaddedNum`, this can also handle negative numbers.
--
---@param x integer
---@param y integer
---@param num integer
---@param flags? integer
function v.drawNum(x, y, num, flags) end

-- Draws a number at the screen coordinates given with a set number of digits. Leading zeros will be added as padding if the number is not large enough to fit the number of digits specified.
--
-- * Numbers drawn by this function will use the same font as numbers from the **score/time/rings** area of the normal HUD.
-- * `flags` determines the video flags given, which control extra effects such as color and translucency.
-- * Unlike `v.drawNum` this will not handle negative numbers.
--
---@param x integer
---@param y integer
---@param num integer
---@param digits? integer
---@param flags? integer
function v.drawPaddedNum(x, y, num, digits, flags) end

-- Fills a box of dimensions width by height with a single palette color number at the screen coordinates given.
--
-- * If no parameters are given, this will default to a black box covering the entire screen.
-- * `color` also determines the video flags given, if they are added to the palette color number. Only the flags `V_NOSCALESTART`, `V_SNAPTOTOP`, `V_SNAPTOBOTTOM`, `V_SNAPTOLEFT` and `V_SNAPTORIGHT` will have any effect, however.
--
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@param color? integer
function v.drawFill(x, y, width, height, color) end

-- Draws text on the screen at the screen coordinates given.
--
-- * `flags` determines the video flags given, which control extra effects such as color and translucency.
-- * `align` determines the alignment of the text or otherwise miscellaneous traits.
--
---@param x integer
---@param y integer
---@param text string
---@param flags? integer
---@param align? genericAlignments | extraStringAlignments
function v.drawString(x, y, text, flags, align) end

-- Draws text in the style of the Character Select name tags at the screen coordinates given.
--
-- * `basecolor` and `outlinecolor` should be `SKINCOLOR_*` constants.
-- * `flags` determines the video flags given, which control extra effects such as alignment and translucency.
--
---@param x integer
---@param y integer
---@param text string
---@param flags? integer
---@param basecolor? skincolor_t
---@param outlinecolor? skincolor_t
function v.drawNameTag(x, y, text, flags, basecolor, outlinecolor) end

-- Draws text in the style of the Character Select name tags at the screen coordinates given, but at a specific scale.
--
-- * `basecolor` and `outlinecolor` should be `SKINCOLOR_*` constants.
-- * `flags` determines the video flags given, which control extra effects such as alignment and translucency.
--
---@param x fixed_t
---@param y fixed_t
---@param text string
---@param flags? integer
---@param scale? fixed_t
---@param basecolor? skincolor_t
---@param outlinecolor? skincolor_t
function v.drawScaledNameTag(x, y, text, flags, scale, basecolor, outlinecolor) end

-- Draws text in the style of the titlecard level titles on the screen at the screen coordinates given.
--
-- * `flags` determines the video flags given, which control extra effects such as color and translucency.
--
---@param x integer
---@param y integer
---@param text string
---@param flags integer
function v.drawLevelTitle(x, y, text, flags) end

-- Returns what the width of the text displayed as graphics on the screen would be.
--
-- * `flags` determines the video flags given to the string, though only the scaling flags will have any effect on the size of the width returned by the function.
-- * `widthtype` determines what font the string is in, which can also affect the size of the width returned by the function.
--
---@param text string
---@param flags? integer
---@param widthtype? widthTypes
---@return integer
function v.stringWidth(text, flags, widthtype) end

-- Returns what the width of the text would be if displayed in the style of the Character Select name tag on the screen.
--
---@param text string
---@return integer
function v.nameTagWidth(text) end

-- Returns what the width of the text would be if displayed in the style of the titlecard level titles on the screen.
--
---@param text string
---@return integer
function v.levelTitleWidth(text) end

-- Returns what the height of the text would be if displayed in the style of the titlecard level titles on the screen.
--
-- * This is affected by whether or not the text has capital characters in it.
--
---@param text string
---@return integer
function v.levelTitleHeight(text) end

-- Returns the colormap to apply to a patch for a particular character skin and/or skincolor, as a special type of userdata which can only be used by drawing functions.
--
-- * Skin names such as `"sonic"` or `"tails"` can be used, but their skin slot numbers can also be used.
-- * If either of these are used, the skin's `startcolor` value can affect the range of palette colors replaced by the given skin color's palette colors.
-- * Certain skin values have special effects on the colormap returned for a patch to use.
--
---@param skin? string | integer
---@param color? skincolornum_t
---@return colormap
function v.getColormap(skin, color) end

-- Returns the colormap to apply to a patch for a particular text color code as a special type of userdata which can only be used by any of the drawing functions.
--
---@param textcolor integer
---@return colormap
function v.getStringColormap(textcolor) end

-- Fades the screen to a certain palette color.
--
-- * If `color` is a palette index, the maximum value of `strength` is 10; otherwise, if `color` is one of the defined special values, then the maximum value of `strength` is 31.
-- * Additionally, certain values of `color` have special effects on the resulting color of the screen pixel.
--
---@param color integer
---@param strength integer
function v.fadeScreen(color, strength) end


--//


-- Returns the screen width.
--
---@return integer
function v.width() end

-- Returns the screen height.
--
---@return integer
function v.height() end

-- Returns the screen's X scale, as both an integer and fixed-point value.
--
---@return integer, fixed_t
function v.dupx() end

-- Returns the screen's Y scale, as both an integer and fixed-point value.
--
---@return integer, fixed_t
function v.dupy() end


--//


-- Returns the current renderer used, as a string.
--
-- Possible return values:
--
-- * `"software"` - Software renderer.
-- * `"opengl"` - OpenGL renderer.
-- * `"none"` - None. (Used for dedicated servers)
--
---@return string
function v.renderer() end

-- Returns the value of `translucenthud`, as an alpha video flag, i.e., `V_**TRANS`.
--
---@return integer
function v.userTransFlag() end

-- Returns the maximum recommended translucency value for HUD items, as an alpha video flag, i.e., `V_**TRANS`.
--
-- * This function differs from `v.userTransFlag`, since that function is specified by the user, but `v.localTransFlag` is specified by the game itself.
--
---@return integer
function v.localTransFlag() end


--//


-- Returns a random integer between 0 and `FRACUNIT-1` (65535).
--
---@return fixed_t
function v.RandomFixed() end

-- Returns a random integer between 0 and 255.
--
---@return integer
function v.RandomByte() end

-- Returns a random integer between 0 and `a - 1`.
--
-- * **`NOTE:`** `a` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which will be spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@return integer
function v.RandomKey(a) end

-- Returns a random integer between `a` and `b`, inclusive.
--
-- * **`NOTE:`** The difference between `a` and `b` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which are spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@param b integer
---@return integer
function v.RandomRange(a, b) end

-- Returns a random integer between -128 and 127.
--
---@return integer
function v.SignedRandom() end

-- Returns *`true`* `p`% of the time, where `p` is a fixed-point number between 0 and `FRACUNIT`.
--
-- * For example, `v.RandomChance(FRACUNIT/2)` returns *`true`* 50% of the time.
--
---@param p fixed_t
---@return boolean
function v.RandomChance(p) end


--//


-- * `callback` format: `function(player: player_t, arg?: string, ...)`
--
-- Registers a console command with the name `name` that executes the specified function when called.
--
-- * The first argument of the function is the player who executed the command, and all subsequent arguments are arguments passed to the command.
-- * `flags` may be any of the `COM_*` flags, `OR`'ed together, or none.
--
---@param name string
---@param callback function
---@param flags? integer
function COM_AddCommand(name, callback, flags) end

-- Adds the specified text to `player`'s console buffer, but does not actually execute the command.
--
---@param player player_t
---@param text string
function COM_BufAddText(player, text) end

-- Executes a console command in `player`'s console.
--
---@param player player_t
---@param text string
function COM_BufInsertText(player, text) end

-- * Format of `t`: `{name: string, defaultvalue: string/integer, flags: integer, PossibleValue: table, func: fun(var: consvar_t)}`
--
-- Registers a console variable with the name `name` for use in the console, and returns the console variable created.
--
-- * `defaultvalue` is the default value for the console variable in string form.
-- * `PossibleValue` is a list or range of possible values that are allowed for the variable.
-- * `flags` is an integer storing the flags to be given to the console variable. (`CV_*`)
-- > * If the `CV_CALL` flag is set, the function `func` is executed when the variable is changed: the sole argument passed to such function is the console variable itself.
--
-- Custom `PossibleValue` tables need to be formatted as such:
--
-- ```lua
--    {string1 = value, string2 = value, ...}
-- ```
--
-- This gives each possible value listed in the table a string name of its own, which can be used in the console itself when the variable is in use.
--
-- * If `MIN` and `MAX` are used as string names for possible value entries, these will act as the minimum and maximum of a bounded range of possible values, allowing any value in-between the two to be picked as well. Otherwise, the selectable values for the console variable are limited explicitly only to the possible value entries listed in the table.
--
-- The contents of CV_RegisterVar can alternatively be laid out as such:
--
-- ```lua
-- CV_RegisterVar({name = , defaultvalue = , flags = , PossibleValue = , func = })
-- ```
--
-- Or:
--
-- ```lua
-- CV_RegisterVar({
--    name = ,
--    defaultvalue = ,
--    flags = ,
--    PossibleValue = ,
--    func =
-- })
-- ```
--
-- In the above two layouts, the names of the variables of the table are written out, and so do not need to be placed in any particular order unlike as in the above.
--
---@param t table
---@return consvar_t
function CV_RegisterVar(t) end

-- Returns the corresponding console variable named `var`.
--
---@param var string
---@return consvar_t
function CV_FindVar(var) end

-- Sets the value of the target console variable (`cvar`) to the given value (`value`).
--
-- * This will call the console variable's callback function, if it has one.
--
---@param cvar consvar_t
---@param value string | integer
function CV_Set(cvar, value) end

-- Sets the value of the target console variable (`cvar`) to the given value (`value`) without calling its callback function.
--
---@param cvar consvar_t
---@param value string | integer
function CV_StealthSet(cvar, value) end

-- Adds `increment` to the console variable `cvar`.
--
-- * `increment` can also be a negative number.
--
-- If performing the addition causes the variable's value to go below its minimum or above its maximum, the final value will wrap around those bounds.
--
-- * There are special cases for some console variables:
--
-- > * `pointlimit`: If the current gametype is `GT_MATCH`, `increment` is multiplied by 50.
-- > * `forceskin`: Cycles through the current usable skins. This follows the same conditions as `R_SkinUsable` for the resulting value.
--
---@param cvar consvar_t
---@param increment integer
function CV_AddValue(cvar, increment) end


--//


-- Outputs text in the console. Each output string will be separated into different lines.
--
-- * Certain ASCII characters will have special effects when printed out to the console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`). For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param ... string
function print(...) end


-- Prints the text given to the console for `player`. This is similar to `print(text)`, but this will only print for one player.
--
-- * Certain ASCII characters will have special effects when printed out to the console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`), For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param player player_t
---@param ... string
function CONS_Printf(player, ...) end

-- Outputs text in the chat window (or the console if it cannot be output in the chat window). Each output string will be separated into different lines.
--
-- * If `sound` is set to true, a sound will be played when sent.
-- * Certain ASCII characters will have special effects when printed out to the chat window or console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`). For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param output string
---@param sound? boolean
function chatprint(output, sound) end


-- Outputs text in the chat window (or the console if it cannot be output in the chat window). Each output string will be separated into different lines.
--
-- * Unlike `chatprint`, the text will only be output for the player supplied in `player`.
-- * If `sound` is set to true, a sound will be played when sent.
-- * Certain ASCII characters will have special effects when printed out to the chat window or console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`). For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param player player_t
---@param output string
---@param sound? boolean
function chatprintf(player, output, sound) end


--//


-- Returns *`true`* if the player has been given administrative privileges by the server via the `promote` command, or has logged as an admin via a preset password. Returns *`false`* otherwise.
--
-- * Note that the host themselves will not necessarily return *`true`* to this function, since their administrative powers are there by default.
--
---@param player player_t
---@return boolean
function IsPlayerAdmin(player) end


--//


-- Does a search through a specified area of the blockmap. This can be used to find Objects or linedefs in the area and run a function for each them. This function returns *`true`* if the search was not interrupted at any point, and *`false`* if it was.
--
-- * `searchtype` can determine either `"objects"` (which returns `mobj_t`) or `"lines"` (which returns `line_t`) that can be searched.
-- * `fn`'s format depends on `searchtype`. These are the arguments:
-- > * `"objects"` search – *`function(refmobj: mobj_t, foundmobj: mobj_t)`*
-- > * `"lines"` search – *`function(refmobj: mobj_t, foundline: line_t)`*
--
-- * The return values of `fn` affects how searching works:
-- > * *`return nil`* - Continue searching as normal. (just like `continue` in loops)
-- > * *`return false`* - Stop searching in the current block and move on to the next block.
-- > * *`return true`* - End the search entirely.
--
-- * If `fn` returns *`true`* or *`false`* at any point, `searchBlockmap` will return *`false`*.
--
-- * `refmobj` is a reference Object of your choice used within searching. If you do not supply `X`/`Y` ranges to search in, it defaults to checking within the Object's radius in both axes.
-- * If `refmobj` was removed mid-search, the search stops and searchBlockmap will return false. However, `refmobj` is not an optional argument. (a dummy Object can be used if necessary)
--
-- * `x1`, `x2`, `y1`, and `y2` are optional arguments, determining the range of `X` and `Y` coordinates in the map to search the blockmap between, if given. They determine the left, right, bottom and top block positions of the blockmap to search in, specifically. If not given, `refmobj` is used to set the range by default.
--
---@param searchtype string
---@param fn function
---@param refmobj mobj_t
---@param x1? fixed_t
---@param x2? fixed_t
---@param y1? fixed_t
---@param y2? fixed_t
---@return boolean
function searchBlockmap(searchtype, fn, refmobj, x1, x2, y1, y2) end


--//


-- Returns whether the game control `gc` (a `GC_*` constant) is currently pressed for the first player.
--
---@param gc integer
---@return boolean
function input.gameControlDown(gc) end

-- Returns whether the game control `gc` (a `GC_*` constant) is currently pressed for the second player.
--
---@param gc integer
---@return boolean
function input.gameControl2Down(gc) end

-- Returns the numbers of the keys bound to the game control `gc` (a `GC_*` constant) for the first player.
--
---@param gc integer,
---@return integer, integer
function input.gameControlToKeyNum(gc) end

-- Returns the numbers of the keys bound to the game control `gc` (a `GC_*` constant) for the second player.
--
---@param gc integer,
---@return integer, integer
function input.gameControl2ToKeyNum(gc) end

-- Returns the first player's joystick's position on the axis specified by `axissel` (a `JA_*` constant).
--
---@param axissel integer
---@return integer
function input.joyAxis(axissel) end

-- Returns the second player's joystick's position on the axis specified by `axissel` (a `JA_*` constant).
--
---@param axissel integer
---@return integer
function input.joy2Axis(axissel) end

-- Returns the name of the key specified by the key number `keynum`.
--
---@param keynum integer
---@return string
function input.keyNumToName(keynum) end

-- Returns the number of the key specified by the key name `keyname`.
--
---@param keyname string
---@return integer
function input.keyNumToName(keyname) end

-- Returns whether the key specified by the key number `keynum` corresponds to a printable character.
--
---@param keynum string
---@return boolean
function input.keyNumPrintable(keynum) end

-- Returns the capitalized form of key number `keynum`.
--
---@param keynum string
---@return integer
function input.shiftKeyNum(keynum) end

-- Returns whether the first player's mouse is grabbed (locked and invisible) by the window.
--
---@return boolean
function input.getMouseGrab() end

-- Sets whether the first player's mouse is grabbed (locked and invisible) by the window.
--
-- * The mouse is automatically grabbed by the game in situations where it deems appropriate, so in order to keep the mouse ungrabbed this function may need to be called constantly.
--
---@param grab boolean
function input.setMouseGrab(grab) end

-- Returns the position of the cursor relative to the top-left corner of the window.
--
---@return integer, integer
function input.getCursorPosition() end


--//


-- Converts the given map number to a map name in `MAPXX` format, where `XX` is the extended map number. If no map number is given, the current map's number will be used.
--
-- * Example: `G_BuildMapName(100)` will return `"MAPA0"`.
--
---@param map integer
---@return string
function G_BuildMapName(map) end

-- Returns the name and act number of map number `map`.
--
-- * Example: `G_BuildMapTitle(1)` will return `"Greenflower Zone 1"`.
--
---@param map integer
---@return string
function G_BuildMapTitle(map) end

-- **`FIXME:`** Complete and update the description when the Wiki does.
--
---@param query string
---@return INT32, string, table
function G_FindMap(query) end

-- **`FIXME:`** Complete and update the description when the Wiki does.
--
---@param query string
---@return INT32, string | nil
function G_FindMapByNameOrCode(query) end

-- Respawns the player whose player number is `playernum`.
--
-- * Avoid calling this function directly in Single Player; set the player's `<player_t>.playerstate` to `PST_REBORN` instead.
--
---@param playernum integer
function G_DoReborn(playernum) end

-- Checks if the required players to exit the level is reached.
--
-- * The requirement depends of the `playersforexit` console variable.
--
---@return boolean
function G_EnoughPlayersFinished() end

-- Changes the settings that will apply when the current level is exited, but does not actually exit the level.
--
-- * If a value for `nextmap` is given, it sets the map number the game will change to once the level ends.
-- * If `skipstats` is set to 1 (defaults to 0), the statistics screen will be skipped. If set to 2, it will additionally skip the level end cutscene, if applicable.
--
-- Calling the function with no arguments will clear the custom settings.
--
---@param nextmap? integer
---@param skipstats? integer
function G_SetCustomExitVars(nextmap, skipstats) end

-- Immediately exits the level.
--
-- * If `G_SetCustomExitVars` was called beforehand, the level will exit using the custom settings set.
function G_ExitLevel() end

-- Returns *`true`* if the map with the given map number is a Special Stage, returns *`false`* otherwise.
--
-- * If no map number is given, the current map's number will be used.
--
---@param map? integer
---@return boolean
function G_IsSpecialStage(map) end

-- Registers a custom gametype into the game.
--
---@param t table
function G_AddGametype(t) end

-- Returns *`true`* if the current gametype uses lives (Single Player, Co-op or Competition), returns *`false`* otherwise.
--
-- * If in Record Attack or a NiGHTS level, this returns false regardless of gametype.
--
---@return boolean
function G_GametypeUsesLives() end

-- Returns *`true`* if the current gametype uses the `cooplives` console variable, otherwise it returns *`false`*.
--
---@return boolean
function G_GametypeUsesCoopLives() end

-- Returns *`true`* if the current gametype uses the `coopstarposts` console variable, otherwise it returns false.
--
---@return boolean
function G_GametypeUsesCoopStarposts() end

-- Returns *`true`* if the current gametype has teams (Team Match or CTF); returns false otherwise.
--
---@return boolean
function G_GametypeHasTeams() end

-- Returns *`true`* if the current gametype supports spectators (Match, CTF or Tag); returns false otherwise.
--
---@return boolean
function G_GametypeHasSpectators() end

-- Returns *`true`* if the current gametype supports firing rings (Match, CTF or Tag), or if `ringslinger` is enabled; returns false otherwise.
--
---@return boolean
function G_RingSlingerGametype() end

-- Returns *`true`* if the current gametype is a "platformer" gametype (Single Player, Co-op, Race or Competition); returns false otherwise.
--
---@return boolean
function G_PlatformGametype() end

-- Returns *`true`* if the current gametype is Tag or Hide and Seek; returns false otherwise.
--
---@return boolean
function G_TagGametype() end

-- **`FIXME:`** Complete and update the description when the Wiki does.
--
---@return boolean
function G_CompetitionGametype() end

-- Adds a bot to the game.
--
-- * **`NOTE:`** Console commands can't be executed on a bot at the moment.
--
---@param skin string
---@param color skincolornum_t
---@param name string
---@param bottype integer
---@return player_t
function G_AddPlayer(skin, color, name, bottype) end

-- Removes the specified bot from the game.
--
-- * **`NOTE:`** This cannot be applied to human players.
--
---@param playernum integer
function G_RemovePlayer(playernum) end

-- Converts the given time in tics to hours.
--
---@param tics integer
---@return integer
function G_TicsToHours(tics) end

-- Converts the given time in tics to minutes.
--
-- * By default, this returns only values between 0 and 59, assuming the return value is used for timers with both "hours" and "minutes" displays (e.g., `hours:minutes:seconds`).
-- * If `full` is given and set to true, then hours (or multiples of 60 minutes) will not be truncated, allowing for return values over 59. This latter case is used for timers without an "hours" display (e.g., `minutes:seconds`).
--
---@param tics integer
---@param full? boolean
---@return integer
function G_TicsToMinutes(tics, full) end

-- Converts the given time in tics to seconds.
--
-- * This returns only values between 0 and 59, assuming the return value is used for timers with both "minutes" and "seconds" displays (e.g., `hours:minutes:seconds`).
--
---@param tics integer
---@return integer
function G_TicsToSeconds(tics) end

-- Converts the given time in tics to centiseconds.
--
-- * This returns only values between 0 and 99, assuming the return value is used for timers with both "seconds" and "centiseconds" displays (e.g., `minutes:seconds.centiseconds`).
--
---@param tics integer
---@return integer
function G_TicsToCentiseconds(tics) end

-- Converts the given time in tics to milliseconds.
--
-- * This returns only values between 0 and 999.
--
---@param tics integer
---@return integer
function G_TicsToMilliseconds(tics) end


--//


-- Returns a random integer between 0 and `FRACUNIT - 1`.
--
---@return fixed_t
function P_RandomFixed() end

-- Returns a random integer between 0 and 255.
--
---@return integer
function P_RandomByte() end

-- Returns a random integer between 0 and `a - 1`.
--
-- * **`NOTE:`** `a` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which will be spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@return integer
function P_RandomKey(a) end

-- Returns a random integer between `a` and `b`, inclusive.
--
-- * **`NOTE:`** The difference between `a` and `b` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which are spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@param b integer
---@return integer
function P_RandomRange(a, b) end

-- Returns a random integer between -128 and 127.
--
---@return integer
function P_SignedRandom() end

-- Returns *`true`* `p`% of the time, where `p` is a fixed-point number between 0 and `FRACUNIT`.
--
-- * For example, `P_RandomChance(FRACUNIT/2)` returns *`true`* 50% of the time.
--
---@param p fixed_t
---@return boolean
function P_RandomChance(p) end


--//


-- Returns the map number for a map identified by the last two characters in its name, or 0 if no map corresponds to these characters.
--
---@param name string
---@return INT32
function M_MapNumber(name) end


--//


-- Returns *`true`* if `actor`'s target is within the actor's melee range, *`false`* if not.
--
---@param actor mobj_t
---@return boolean
function P_CheckMeleeRange(actor) end

-- Same as `P_CheckMeleeRange`, except the melee range is adjusted for use with the Jetty-Syn Bomber.
--
---@param actor mobj_t
---@return boolean
function P_JetbCheckMeleeRange(actor) end

-- Same as `P_CheckMeleeRange`, except the melee range is adjusted for use with the CastleBot FaceStabber.
--
---@param actor mobj_t
---@return boolean
function P_FaceStabCheckMeleeRange(actor) end

-- Same as `P_CheckMeleeRange`, except the melee range is adjusted for use with the Skim.
--
---@param actor mobj_t
---@return boolean
function P_SkimCheckMeleeRange(actor) end

-- Returns *`true`* if `actor` is able to shoot its target at the moment.
--
-- * Returns *`false`* if `actor.reactiontime` has not reached 0 or actor cannot see the target. Otherwise, the result is randomly decided based on the distance between them.
--
---@param actor mobj_t
---@return boolean
function P_CheckMissileRange(actor) end

-- Changes `actor.movedir` to be the decided best direction of the actor to be in relation to its target (provided it has one, of course).
--
-- * **`NOTE:`** These directions include only the 8 basic cardinal directions.
--
---@param actor mobj_t
function P_NewChaseDir(actor) end

-- Can `actor` find a player with the conditions provided? If yes, this returns *`true`* and the `actor`'s target is set to the first player found. Otherwise this returns *`false`* and the `actor`'s target is unchanged.
--
-- * `dist` determines the distance limit for the `actor` to check for players in. If dist is set to 0, the distance limit will be infinite.
-- * `allaround` determines whether the `actor` will look all around itself for players or just within 90° of the direction it is currently facing.
-- * `tracer` determines whether to use `actor.tracer` instead of `actor.target`. This is useful for homing missiles such as the Deton, since missiles set their target to the Object who shot them and thus cannot harm it.
--
-- `dist` defaults to 0 if not given, while `allaround` and `tracer` both default to false if not given.
--
---@param actor mobj_t
---@param dist? fixed_t
---@param allaround? boolean
---@param tracer? boolean
function P_LookForPlayers(actor, dist, allaround, tracer) end


--//


-- Removes any shield player may be carrying.
--
-- * This will not throw back the player nor play a sound.
--
---@param player player_t
function P_RemoveShield(player) end

-- Inflicts `damage` on the target Object, causing it to lose a certain amount of health and use the state determined by `target.info.painstate`. However, if target has lost all health as a result of this function, `P_KillMobj` is called by this function instead.
--
-- * The return value of this function depends on whether target was damaged or not – if it was, this returns *`true`*; otherwise, this returns *`false`*.
--
-- `inflictor` and `source` determine where the damage came from: `inflictor` is the Object that dealt the damage, `source` is the source of the damage (or where inflictor came from).
--
-- * For instance, when a projectile fired by a player or enemy damages target, `inflictor` should be set the projectile itself, and `source` to the Object that fired the projectile.
-- * However, in situations where a player or enemy directly damages `target`, `inflictor` and `source` are usually both set to the same Object.
-- * If the damage comes from a level hazard such as damaging sector specials or crushers (or otherwise from nowhere at all), it is best to set both these arguments to *`nil`*.
--
-- `damage` determines the amount of damage to deal to target, or the number of health points removed from it.
--
-- `damagetype` determines the damage type that will be dealt.
--
-- * If the damage type has `DMG_INSTAKILL` set, the target will be killed.
--
-- **`NOTE:`** If not given, `inflictor` and `source` both default to *`nil`*, `damage` defaults to 1 and `damagetype` to 0.
--
-- * The hooks `ShouldDamage` and `MobjDamage` can be used modify or replace some of the effects of this function.
--
---@param target mobj_t
---@param inflictor? mobj_t
---@param source? mobj_t
---@param damage? integer
---@param damagetype? integer
---@return boolean
function P_DamageMobj(target, inflictor, source, damage, damagetype) end

-- Kills the `target` Object, making it become intangible as well as using the state determined by `target.info.deathstate` (if set to *`nil`*, the Object will be removed from existence).
--
-- * If `target` is an enemy or boss, and the Object that killed it was a player or one of their projectiles, points may be awarded to this player.
-- * Flickies (and/or other items) will also be spawned by enemies killed by this function.
-- * `damagetype` determines the damage type that was dealt.
--
-- `inflictor` and `source` follow the same meanings as in `P_DamageMobj`, and both default to *`nil`* if not given.
--
-- * The hook `MobjDeath` can be used to modify or replace some of the effects of this function.
--
---@param target mobj_t
---@param inflictor? mobj_t
---@param source? mobj_t
---@param damagetype? integer
function P_KillMobj(target, inflictor, source, damagetype) end

-- Spills the specified number of rings.
--
-- * Also spills all weapon panels, ammo and emeralds player may be carrying at the time, but does not throw back player.
-- * If `numrings` is not given (or set to -1), it will default to the player's current ring count (i.e. `<player_t>.rings`).
--
-- In normal gameplay, up to 32 rings will be spilled by this function; the remainder will not be spawned.
--
-- * The speed at which the rings are flung depends on the duration since the last time this function was used (determined by `<player_t>.losstime`).
-- * In NiGHTS levels, however, the player will drop all rings if they have the player flag `PF_NIGHTSFALL` (given when the player has run out of time as Super Sonic).
-- * In addition, the rings will always be flung at the same speed regardless of `<player_t>.losstime`'s value.
--
-- **`NOTE:`** This function does not actually affect `<player_t>.rings`; this must be modified manually in order for the player to actually lose rings.
--
-- * This does not apply to any weapon panels, ammo and/or emeralds also spilled by this function.
--
---@param player player_t
---@param numrings? integer
function P_PlayerRingBurst(player, numrings) end

-- Spills all weapon panels that player is carrying, but does not throw back player.
--
-- * Unlike the rings in `P_PlayerRingBurst`, the player will actually lose the weapon panels spilled by this function.
--
---@param player player_t
function P_PlayerWeaponPanelBurst(player) end

-- Spills all weapon panels and ammo that player is carrying, but does not throw back player.
--
-- * Unlike the rings in `P_PlayerRingBurst`, the player will actually lose the weapon ammo spilled by this function.
--
---@param player player_t
function P_PlayerWeaponAmmoBurst(player) end

-- **`TODO:`** Complete the description when the wiki does.
--
---@param player player_t
function P_PlayerWeaponPanelOrAmmoBurst(player) end

-- Spills all emeralds that player is carrying, but does not throw back player.
--
-- * If `toss` is true, all the emeralds are thrown in the player's forward direction and a toss delay of 2 seconds is set (for players tossing emeralds).
-- * Otherwise, the emeralds are spilled around the player (for players dropping emeralds after being hurt).
-- * Unlike the rings in `P_PlayerRingBurst`, the player will actually lose the emeralds spilled by this function.
--
---@param player player_t
---@param toss? boolean
function P_PlayerEmeraldBurst(player, toss) end

-- Spills any CTF flags that player is carrying, but does not throw back player.
--
-- * If `toss` is true, the flag is thrown in the player's forward direction and a toss delay of 2 seconds is set (for players tossing a flag).
-- * Otherwise, the direction is random (for players dropping a flag after being hurt).
--
---@param player player_t
---@param toss boolean
function P_PlayerFlagBurst(player, toss) end

-- Plays one of the 4 player ring spill sounds randomly, which can vary depending on the skin, or plays the Mario ring loss sound if in Mario mode.
--
-- * `source` is the Object the sound came from.
--
---@param source mobj_t
---@param player? player_t
function P_PlayRinglossSound(source, player) end

-- Plays one of the 4 player death sounds randomly, which can vary depending on the skin.
--
-- * `source` is the Object the sound came from.
--
---@param source mobj_t
---@param player? player_t
function P_PlayDeathSound(source, player) end

-- Plays one of the 4 player victory taunt sounds randomly, which can vary depending on the skin.
--
-- * `source` is the Object the sound came from.
--
---@param source mobj_t
---@param player? player_t
function P_PlayVictorySound(source, player) end

-- Plays the extra life jingle.
--
-- * By default this is the extra life music, but in Mario mode maps or if `Use1upSound` is enabled in the MainCfg block, this is instead a sound effect.
-- * If the music is used, the `player`'s `pw_extralife` timer is set to `ExtraLifeTics + 1`.
--
---@param player player_t
function P_PlayLivesJingle(player) end

-- Returns *`true`* if `player` can pick up the item, returns *`false`* if player is a bot or is flashing after being hurt.
--
---@param player player_t
---@param weapon? boolean
---@return boolean
function P_CanPickupItem(player, weapon) end

-- Awards score to `player` NiGHTS-style; spawns a floating score item which changes appearance depending on the player's current link count and whether the player is in bonus time.
--
---@param player player_t
function P_DoNightsScore(player) end

-- Gives invincibility, speed shoes, and steals score form others if `player` has all 7 Match Emeralds.
--
-- * This will remove the emeralds afterwards.
--
---@param player player_t
function P_DoMatchSuper(player) end


--//


-- Checks if the position `(x, y)` is valid for the Object `mobj`.
--
-- * **`NOTE:`** This does not actually teleport the Object to the given coordinates; it only tests what would happen if it was at that position.
--
-- This function returns *`false`* if:
--
-- > * The Object has been blocked by a wall or another Object.
-- > * The Object has been removed from the map during checking; otherwise it will return *`true*` to signal the position is not blocked.
--
-- This function additionally returns the `tmthing` Object set during the run of the function, which in the majority of cases will be `mobj` itself.
--
-- The blockmap is checked for any Objects or walls to collide with; any Objects with `MF_NOBLOCKMAP` cannot be collided with by this function.
--
-- * **`NOTE:`** Objects using this function that have the `MF_NOCLIP` flag will not clip with other Objects or walls at all, while Objects with `MF_NOCLIPTHING` will not clip with Objects but can still be blocked by walls.
--
---@param mobj mobj_t
---@param x fixed_t
---@param y fixed_t
---@return boolean, mobj_t
function P_CheckPosition(mobj, x, y) end

-- Tries to move the Object mobj to the `x`/`y` coordinates supplied (all done in the same tic), checking each position to make sure the Object is not blocked on the way there.
--
-- * If it is blocked by a wall or another Object, or the height of the sector is too small to fit in, this will return *`false`* and leave the Object where it was to begin with (i.e., the move failed); otherwise this will return *`true`* with the Object at the coordinates supplied.
-- * This function additionally returns the `tmthing` Object set during the run of the function, which in the majority of cases will be `mobj` itself.
--
-- `allowdropoff` determines whether to stop the Object from falling off a platform too low to step-down when moving, or let it continue regardless of this.
--
-- * If `allowdropoff` is false and the Object would be falling off a platform if it continued, this will return *`false`*.
--
-- **`NOTE:`** Pushable Objects will also move along anything on top with them when they are moved.
--
-- * Objects with `MF_NOCLIP` will be able to move straight to the specified position without being blocked by anything, and `allowdropoff` will not affect them.
--
---@param mobj mobj_t
---@param x fixed_t
---@param y fixed_t
---@param allowdropoff? boolean
---@return boolean, mobj_t
function P_TryMove(mobj, x, y, allowdropoff) end

-- Moves the actor Object in its current direction (using `actor.movedir` rather than the angle), moving forward a distance of `speed*FRACUNIT`.
--
-- * This returns *`true`* when the actor has moved; returns *`false`* if the actor cannot move, does not have a direction to move in or is dead.
-- * This function additionally returns the `tmthing` Object set during the run of the function, which in the majority of cases will be `actor` itself.
--
---@param actor mobj_t
---@param speed integer
---@return boolean, mobj_t
function P_Move(actor, speed) end

-- Teleports `mobj` to the x, y, and z coordinates supplied without any positional checks.
--
-- * As all interpolation values of the Object are **reset**, this function should be used for instant movement.
-- * It will always return *`true`*, plus the `tmthing` Object set during the run of the function, which in the majority of cases will be `mobj` itself.
--
---@param mobj mobj_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@return boolean, mobj_t
function P_SetOrigin(mobj, x, y, z) end

-- Teleports `mobj` to the x, y, and z coordinates supplied without any positional checks.
--
-- * As all interpolation values of the Object are **kept**, this function should be used for continuous movement.
-- * This function additionally returns the `tmthing` Object set during the run of the function, which in the majority of cases will be `mobj` itself.
--
---@param mobj mobj_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@return boolean, mobj_t
function P_MoveOrigin(mobj, x, y, z) end

-- **`NOTE:`** This function has been deprecated since the introduction of 2.2.11, and we recommend you to use `P_SetOrigin` or `P_MoveOrigin` instead.
--
---@param mobj mobj_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@deprecated
function P_TeleportMove(mobj, x, y, z) end

-- Slides `mo` along a wall using its current `x`/`y` momentum.
--
-- * This assumes that `mo` has already been blocked by a wall, so this searches for the wall that blocked it before sliding.
--
---@param mo mobj_t
function P_SlideMove(mo) end

-- Bounces `mo` off a wall using its current `x`/`y` momentum.
--
-- * This assumes that `mo` has already been blocked by a wall, so this searches for the wall that blocked it before bouncing.
--
---@param mo mobj_t
function P_BounceMove(mo) end

-- Checks if `target` is visible from `source`'s position.
--
-- * If it is, this returns *`true`*; otherwise it returns *`false`*.
-- * This function is also able to check if FOFs are blocking the line of sight.
-- * **`NOTE:`** The angles the Objects are facing are not taken into consideration, only their map coordinates and heights.
--
---@param source mobj_t
---@param target mobj_t
---@return boolean
function P_CheckSight(source, target) end

-- Optimized version of `P_CheckPosition` specifically designed for `MT_HOOPCOLLIDE`.
--
---@param hoop mobj_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
function P_CheckHoopPosition(hoop, x, y, z) end

-- Damages all damageable Objects in the blockmap around `inflictor`, with `source` being the Object that inflictor came from (if not the same as inflictor itself).
--
-- * `radius` is the distance limit around inflictor to damage other Objects in, which will automatically be scaled with `inflictor`'s scale.
-- * `damagetype` determines the type of damage dealt to Objects hit by the attack.
-- * If `sightcheck` is true or not set, the target objects will only be damaged if they have line of sight with the `inflictor`'s position; If false, the attack will be able to harm objects behind walls.
--
-- Objects that cannot be damaged by `P_RadiusAttack` include:
--
-- > * Any Objects sharing the same type as `inflictor`.
-- > * The `source` Object itself.
-- > * Monitors, bosses, non-shootable Objects (if `MF_SHOOTABLE` is not set).
-- > * Any Objects not within the blockmap at all (if `MF_NOBLOCKMAP` is set).
--
---@param inflictor mobj_t
---@param source mobj_t
---@param radius fixed_t
---@param damagetype? integer
---@param sightcheck? boolean
function P_RadiusAttack(inflictor, source, radius, damagetype, sightcheck) end

-- Returns what would be the `floorz` (the absolute Z position of the floor) at the `x`, `y`, and `z` coordinates supplied.
--
-- * `height` should be the height of the Object you want to check this for (needed for checking solid/quicksand FOFs).
-- * Keep in mind the coordinates and perhaps even the height do not necessarily have to be the actual position of an existing Object.
--
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@param height fixed_t
---@return fixed_t
function P_FloorzAtPos(x, y, z, height) end

-- Returns what would be the `ceilingz` (the absolute Z position of the ceiling) at the `x`, `y`, and `z` coordinates supplied.
--
-- * `height` should be the height of the Object you want to check this for (needed for checking solid/quicksand FOFs).
-- * Keep in mind the coordinates and perhaps even the height do not necessarily have to be the actual position of an existing Object.
--
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@param height fixed_t
---@return fixed_t
function P_CeilingzAtPos(x, y, z, height) end

-- The `spring` Object sends `object` into the air like a spring.
--
-- * `spring` does not necessarily have to be an Object with the `MF_SPRING` flag, but it should have least all the same attributes as one.
-- * **`NOTE:`** `object` will also be given the `MFE_SPRUNG` flag, marking it as having already touched a spring this tic; the flag will automatically be removed the next tic.
-- * If this function is called while object has this flag set, it will have no effect.
--
---@param spring mobj_t
---@param object mobj_t
function P_DoSpring(spring, object) end

-- Tries to move `camera` to the `x`/`y` coordinates supplied (all done in the same tic), checking each position to make sure `camera` is not blocked on the way there.
--
-- * If it is blocked by a wall, or the height of the sector is too small to fit in, this will return *`false`* and leave `camera` where it was to begin with; otherwise this will return *`true`* with `camera` at the coordinates supplied.
--
---@param camera camera_t
---@param x fixed_t
---@param y fixed_t
---@return boolean
function P_TryCameraMove(camera, x, y) end

-- Teleports `camera` straight to the `x`, `y`, and `z` coordinates supplied, but does not account for whether `camera` will be stuck in this position.
--
---@param camera camera_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
function P_TeleportCameraMove(camera, x, y, z) end


--//


-- Returns the approximate distance between two points, where dx is the distance between the X coordinates and dy is the distance between the Y coordinates.
--
-- * **`NOTE:`** This function will normally return a positive value, except if the distance is `38768*FRACUNIT` or larger, in which case it will return negative values.
--
---@param dx fixed_t
---@param dy fixed_t
---@return fixed_t
function P_AproxDistance(dx, dy) end

-- Returns the X and Y coordinates (as two separate returned values) of the closest point to the point (`x`, `y`) on the line `line`.
--
-- * If a set of 4 fixed-point integers (`x1`, `y1`, `x2`, `y2`) is given instead of a `line_t` variable, these become the coordinates of a custom-defined line that goes through the points (`x1`, `y1`) and (`x2`, `y2`).
--
---@overload fun(x: fixed_t, y: fixed_t, x1: fixed_t, y1: fixed_t, x2: fixed_t, y2: fixed_t): fixed_t, fixed_t
---@param x fixed_t
---@param y fixed_t
---@param line line_t
---@return fixed_t, fixed_t
function P_ClosestPointOnLine(x, y, line) end

-- Returns 0 if the point (x,y) is on the "front" side of the given line, or 1 if it is on the "back" side.
--
-- * If a set of 4 fixed-point integers (`x1`, `y1`, `x2`, `y2`) is given instead of a `line_t` variable, these become the coordinates of a custom-defined line that goes through the points (`x1`, `y1`) and (`x2`, `y2`).
--
---@overload fun(x: fixed_t, y: fixed_t, x1: fixed_t, y1: fixed_t, x2: fixed_t, y2: fixed_t): integer
---@param x fixed_t
---@param y fixed_t
---@param line line_t
---@return integer
function P_PointOnLineSide(x, y, line) end


--//


-- Creates and returns a new Object of the given type at the given coordinates `x`, `y`, and `z`.
--
-- * Various attributes may be given to it as soon as it is spawned, such as a skincolor or secondary Object flags.
-- * Further Objects may be spawned within this function to be linked to the new Object if necessary. If the new Object is given the `MF_RUNSPAWNFUNC` flag during this function, the action set for the Object type's `SpawnState` property will be run by this function.
-- * The hook `MobjSpawn` can be used to modify or replace some of the effects of this function.
-- * **`NOTE:`** This is the basic function for spawning all Objects in SRB2. All other listed Lua functions (including actions) that spawn an Object therefore use this function internally to spawn them, and any changes made to this function by the `MobjSpawn` hook will affect them as well.
--
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@param type integer
---@return mobj_t
function P_SpawnMobj(x, y, z, type) end

-- Same as `P_SpawnMobj`, except the coordinates given are relative to the `origin` Object.
--
-- * The spawned object's scale and vertical flip are inherited from the origin object.
--
---@param origin mobj_t
---@param x fixed_t
---@param y fixed_t
---@param z fixed_t
---@param type integer
---@return mobj_t
function P_SpawnMobjFromMobj(origin, x, y, z, type) end

-- Removes the Object and its thinker from existence.
--
-- * The hook `MobjRemoved` can be used to apply additional effects to this function.
-- * The removed Object ***cannot*** be referenced again in Lua after using this function.
-- * This function will produce an error if it attempts to remove an object belonging to a player.
--
---@param mobj mobj_t
function P_RemoveMobj(mobj) end

-- Returns *`true`* if `mobj` can properly display `sprite2`, and *`false`* otherwise.
--
-- * This is specific to objects that have a skin, such as players or live monitors.
--
---@param mobj mobj_t
---@param sprite2 integer
---@return boolean
function P_IsValidSprite2(mobj, sprite2) end

-- Spawns `MT_LOCKON` with the given `state`, above `mobj`.
--
---@param player player_t
---@param target mobj_t
---@param state statenum_t
function P_SpawnLockOn(player, target, state) end


--//


-- TODO: P_Polyobj


--//


-- Returns the corresponding `z` position on the slope for the `x`/`y` coordinates given.
--
---@param slope pslope_t
---@param x fixed_t
---@param y fixed_t
---@return fixed_t
function P_GetZAt(slope, x, y) end

-- **`TODO:`** Add a description when the wiki does.
--
---@param mobj mobj_t
function P_ButteredSlope(mobj) end


--//


-- TODO: P_Spec


--//


-- Returns the player's normal height.
--
-- * This is automatically corrected to match the player's current scale.
--
---@param player player_t
---@return fixed_t
function P_GetPlayerHeight(player) end

-- Returns the player's "spin" height.
--
-- This is automatically corrected to match the player's current scale.
--
---@param player player_t
---@return fixed_t
function P_GetPlayerSpinHeight(player) end

-- Returns a value depending on what is happening with the player's movement controls (forwards, backwards and strafing left/right) at the moment, compared to the current movement of the player itself.
--
-- * Return values:
-- > * `0` - No controls are pressed, or there's no movement.
-- > * `1` - Pressing in direction of movement (accelerating).
-- > * `2` - Pressing in opposite direction of movement (decelerating).
--
---@param player player_t
---@return integer
function P_GetPlayerControlDirection(player) end

-- Adds amount to player's score.
--
-- * This also ensures that the score does not exceed `MAXSCORE` (`99999990`), and awards lives for every `50000` points (if not losing points).
-- * This is also handled somewhat differently for NiGHTS stages (both normal and Special Stages), modifying `<player_t>.marescore` instead of `<player_t>.score`.
--
---@param player player_t
---@param amount integer
function P_AddPlayerScore(player, amount) end

-- Causes `player` to steal from everyone else's score in multiplayer.
--
---@param player player_t
---@param amount integer
function P_StealPlayerScore(player, amount) end

-- Checks whether player's skin has `SF_NOJUMPDAMAGE` and returns the appropriate flags to set for their jump.
--
---@param player player_t
---@return integer
function P_GetJumpFlags(player) end

-- Returns *`true`* if `player` is in its pain state with `pw_flashing` set (and not sliding), *`false`* otherwise.
--
---@param player player_t
---@return boolean
function P_PlayerInPain(player) end

-- Throws back the player, setting the state to the player's pain state.
--
-- * `source` is the Object the damage (or `inflictor`) came from.
-- * `inflictor` (which is either `source` itself or a projectile from it) is the object that dealt the damage.
--
---@param player player_t
---@param source? mobj_t
---@param inflictor? mobj_t
function P_DoPlayerPain(player, source, inflictor) end

-- Resets the player.
--
-- * This will halt anything the player is currently doing.
--
---@param player player_t
function P_ResetPlayer(player) end

-- Checks if `player` is capable of damaging `mobj` in their current state and returns *`true`* if so.
--
---@param player player_t
---@param mobj mobj_t
---@return boolean
function P_PlayerCanDamage(player, mobj) end

-- Is `mobj` inside goop? Returns *`true`* if yes, *`false`* if no.
--
-- * If the Object has `MF_NOGRAVITY` or is a spectator player, this will always return *`false`*.
--
---@param mobj mobj_t
---@return boolean
function P_IsObjectInGoop(mobj) end

-- Is mobj on the ground? Returns *`true`* if yes, *`false`* otherwise.
--
-- * The "ground" can be the Object's `floorz` or `ceilingz` depending on whether the Object is in reverse gravity or not.
-- * If the Object is currently within goop water, this will always return *`false`*.
--
---@param mobj mobj_t
---@return boolean
function P_IsObjectOnGround(mobj) end

-- Is `mobj` in a Space Countdown sector/FOF? Returns *`true`* if yes, *`false`* otherwise.
--
---@param mobj mobj_t
---@return boolean
function P_InSpaceSector(mobj) end

-- Is `mobj` in a quicksand FOF? Returns *`true`* if yes, *`false`* otherwise.
--
---@param mobj mobj_t
---@return boolean
function P_InQuicksand(mobj) end

-- Sets `mobj`'s `momz` to the value given.
--
-- * If `relative` is *`true`*, this will be added to the Object's previous momz, otherwise it will replace it.
-- * **`NOTE:`** This also corrects for scaling and reverse gravity.
--
---@param mobj mobj_t
---@param momz fixed_t
---@param relative? boolean
function P_SetObjectMomZ(mobj, momz, relative) end

-- Restores the music to whatever should be depending on whether `player` has any powerups or not.
---@param player player_t
function P_RestoreMusic(player) end

-- Resets `player`'s shield orb appearance to the appropriate one for the `player`'s current shield powers.
---@param player player_t
function P_SpawnShieldOrb(player) end

-- Spawns a "ghost" of mobj.
--
-- * A 50% translucent clone of the Object that lasts only 8 tics normally before disappearing.
--
-- Useful for creating afterimages of Objects such as players, such as with the Super Sneakers power-up or when a player is in Super form.
--
-- * Returns the ghost Object spawned.
-- * If a player Object the ghost was made after possesses a `followitem`, a ghost of that item's Object will additionally be spawn and assigned as the player ghost's tracer, and vice versa.
--
---@param mobj mobj_t
---@return mobj_t
function P_SpawnGhostMobj(mobj) end

-- Adds `amount` to `player`'s ring count.
--
-- * This corrects ring count if `amount` is above 9999 or below 0.
-- * This also awards extra life bonuses for multiples of 100 rings up to the value of `maxXtraLife` in the MainCfg block (by default this is 2, which allows for extra life bonuses up to 200 rings).
--
---@param player player_t
---@param amount integer
function P_GivePlayerRings(player, amount) end

-- Adds `amount` to `player`'s lives count.
--
-- * This corrects lives count if `amount` is above 99 or below 1.
--
---@param player player_t
---@param amount integer
function P_GivePlayerLives(player, amount) end

-- Adds `amount` to the lives pool if the game is using shared lives.
--
-- * When not using shared lives, adds `amount` of lives to all individual players.
--
---@param player player_t
---@param amount integer
---@param playsound? boolean
function P_GiveCoopLives(player, amount, playsound) end

-- Resets `<player_t>.scoreadd` value to 0, ending any score chains in progress.
--
---@param player player_t
function P_ResetScore(player) end

-- If `player` has the shield power `SH_PROTECTELECTRIC`, this will activate the Lightning Shield's double jump.
--
-- * In any other case, `player` peforms a Whirlwind Shield-style jump and switches to their falling animations.
--
---@param player player_t
function P_DoJumpShield(player) end

-- Landing handler for the Bubble Shield.
--
-- * Bounces `player` upwards.
--
---@param player player_t
function P_DoBubbleBounce(player) end

-- This is used by the Armageddon Shield to blow up enemies, flash the palettes of all players within the explosion radius (`1536*FRACUNIT`) and destroy the shield currently being held by `player`.
--
-- * This also plays the Armageddon explosion sound.
--
---@param player player_t
function P_BlackOw(player) end

-- Spawns two Elemental Shield-style flames for both sides and behind `player`, but needs to be used repeatedly to spawn a true Elemental Shield fire trail.
--
-- * If `cropcircle` is true, this instead spawns flames in a circle pattern like that of the Elemental Shield's ground pound attack.
--
---@param player player_t
---@param cropcircle? boolean
function P_ElementalFire(player, cropcircle) end

-- Sets the flag `PF_FINISHED` to `player`, causing it to "finish" the level, while still allowing them to continue moving.
--
-- * If in singleplayer, or if the console variable `exitmove` is not set, this will cause the player thinker to call `P_DoPlayerExit`.
--
---@param player player_t
function P_DoPlayerFinish(player) end

-- This is used to have `player` "complete" the level and become immobile.
--
-- * This will not immediately end the level itself, but prepares to end the level after a set amount of time.
--
---@param player player_t
function P_DoPlayerExit(player) end

-- Set `mobj`'s horizontal momentum to the value of move in the direction of `angle`.
--
-- * **`NOTE:`** This will apply momentum absolutely; i.e., all existing momentum applied to the Object in any direction is lost.
-- * If `mobj` has `MF2_TWOD` applied, only momentum in the `x`-direction is modified; momentum in the `y`-direction is unaffected.
--
-- To add to existing momentum rather than completely replace it, see `P_Thrust`.
---@param mobj? mobj_t
---@param angle angle_t
---@param move fixed_t
---@return fixed_t
function P_InstaThrust(mobj, angle, move) end

-- Returns the `x` component of a set thrust value at a specified `angle`.
--
-- * `mobj` is unused.
--
---@param mobj? mobj_t
---@param angle angle_t
---@param move fixed_t
---@return fixed_t
function P_ReturnThrustX(mobj, angle, move) end

-- Returns the `y` component of a set thrust value at a specified `angle`.
--
-- * `mobj` is unused.
--
---@param mobj? mobj_t
---@param angle angle_t
---@param move fixed_t
---@return fixed_t
function P_ReturnThrustY(mobj, angle, move) end

-- Returns a nearby Object that `player` can hit, if one is found.
--
-- * This is used by the `CA_HOMINGTHOK` and `CA2_GUNSLINGER` character abilities, as well as the Attraction Shield's homing attack ability.
--
-- By default, this only looks for shootable enemies or bosses (not including the Deton), they must be within `RING_DIST` from the `player`'s position, and they cannot be more than `24*FRACUNIT` above the `player`'s `z` position.
--
-- * If `nonenemies` is true, this function will also look for springs and monitors.
-- * If `bullet` is true, the function can look upwards but is limited to a looking span of 30 degrees up or down, the searching distance is doubled (`1024*FRACUNIT`), and monitors and Detons are included in the search.
--
-- **`NOTE:`** Objects with the secondary flag `MF2_INVERTAIMABLE` may invert some of the effects of this function when found by it.
--
---@param player player_t
---@param nonenemies? boolean
---@param bullet? boolean
---@return mobj_t
function P_LookForEnemies(player, nonenemies, bullet) end

-- Instantly defeats all enemies and damages bosses (as well as players in shooting gametypes) within a radius around the `inflictor` Object (the Object causing the damage).
--
-- * `source` is where `inflictor` came from, if not the inflictor itself.
--
---@param inflictor mobj_t
---@param source mobj_t
---@param radius fixed_t
function P_NukeEnemies(inflictor, source, radius) end

-- The `source` Object faces the target Object and moves towards it; needs to be repeatedly used to work properly.
--
-- * `source`'s movement speed depends on what source is; players will move at 2/3 of their `actionspd` value, the Deton will move at 17/20 of the enemy `<player_t>.normalspeed` value, otherwise all other Objects will use their Object type's `speed` value.
-- * Returns *`true`* if the homing attack was successful, returns *`false`* if not.
--
---@param source mobj_t
---@param target mobj_t
---@return boolean
function P_HomingAttack(source, target) end

-- Returns *`true`* if the conditions are right for `player` to turn Super, *`false`* if not.
--
---@param player player_t
---@return boolean
function P_SuperReady(player) end

-- Makes `player` jump.
--
-- * `<player_t>.mo.momz` is set to a particular value depending on the situation, and the `PF_JUMPED` flag is given to `<player_t>.pflags`.
-- * If `soundandstate` is set to true, `<player_t>.mo.state` will be changed to the appropriate jump states and play the jump sound.
-- * If `player` has `PF_JUMPSTASIS` in `<player_t.pflags`, or `<player_t>.jumpfactor` is 0s, this function will do nothing.
--
---@param player player_t
---@param soundandstate? boolean
function P_DoJump(player, soundandstate) end

-- Spawns `<player_t>.thokitem` (defined in S_SKIN) at `player`'s location.
--
-- * Defaults to `MT_THOK` if no object is defined.
--
---@param player player_t
function P_SpawnThokMobj(player) end

-- Spawns a spin trail Object at `player`'s location.
--
-- * `type` determines the type of the Object spawned.
--
---@param player player_t
---@param type integer
function P_SpawnSpinMobj(player, type) end

-- Pushes away all enemies and players within a radius of `range` around `player` with the thrust value `thrust`.
--
-- * If `thrust` is negative, this will instead pull in enemies and players towards player.
--
---@param player player_t
---@param thrust fixed_t
---@param range fixed_t
function P_Telekinesis(player, thrust, range) end

-- Switches the current shield player has with `shieldtype`.
--
-- * This will also cause an unused Armageddon Shield to explode.
--
---@param player player_t
---@param shield integer
function P_SwitchShield(player, shield) end

-- Calls `P_PlayJingleMusic` for the player player with the appropriate arguments as set by `jingletype`.
--
-- * `jingletype` should be one of the `JT_*` constants.
--
---@param player player_t
---@param jingletype integer
function P_PlayJingle(player, jingletype) end

-- Pushes the music `musname` to `player`'s music stack with the properties set by `musflags`, `looping`, and `jingletype`, and plays the music for that player.
--
-- * If not specified, `musflags` will be set to 0, `looping` will be set to true, and `jingletype` will be set to `JT_OTHER`.
--
---@param player player_t
---@param musname string
---@param musflags? integer
---@param looping? boolean
---@param jingletype? integer
function P_PlayJingleMusic(player, musname, musflags, looping, jingletype) end

-- Spawns spindash dust randomly around `player` within a certain `radius`, and plays `sound` if given.
--
---@param player player_t
---@param radius fixed_t
---@param sound? integer
function P_SpawnSkidDust(player, radius, sound) end

-- Damages enemies within the given `radius`.
--
-- * Used for Super Knuckles' landing.
--
---@param inflictor mobj_t
---@param source mobj_t
---@param radius fixed_t
function P_Earthquake(inflictor, source, radius) end

-- **`TODO:`** Complete the description when the wiki does.
--
---@param player player_t
---@return boolean
function P_PlayerFullbright(player) end

-- **`TODO:`** Complete the description when the wiki does.
--
---@param player player_t
function P_MovePlayer(player) end

-- **`TODO:`** Complete the description when the wiki does.
--
---@param player player_t
---@return boolean
function P_PlayerCanEnterSpinGaps(player) end

-- **`TODO:`** Complete the description when the wiki does.
--
---@param player player_t
---@return boolean
function P_PlayerShouldUseSpinHeight(player) end


--//


-- Returns the texture number for the texture whose name is supplied in `name`.
--
---@param name string
---@return integer
function R_TextureNumForName(name) end

-- If a texture with the name given by `name` exists, returns its texture number. Otherwise, returns -1.
--
---@param name string
---@return integer
function R_CheckTextureNumForName(name) end


--//


-- Returns the skin color number that is represented by `name`.
--
-- * If no color is found, returns `SKINCOLOR_NONE`.
--
---@param name string
---@return skincolor_t
function R_GetColorByName(name) end

-- Returns the super color number that is represented by `name`.
--
-- * If no color is found, returns `SKINCOLOR_NONE`.
--
---@param name string
---@return skincolor_t
function R_GetSuperColorByName(name) end

-- Returns the name of the input color.
--
-- * The function will raise an error if an out of bounds number is entered.
---
---@param color skincolornum_t
---@return string
function R_GetNameByColor(color) end


--//


-- Returns the angle between the camera's X and Y coordinates and `x` and `y`.
--
-- * **`NOTE:`** This will not work consistently among multiple players. Use at your own risk.
--
---@param x fixed_t
---@param y fixed_t
---@return angle_t
function R_PointToAngle(x, y) end

-- Returns the angle created by the line from `x` and `y` to `dest_x` and `dest_y`.
--
---@param x fixed_t
---@param y fixed_t
---@param dest_x fixed_t
---@param dest_y fixed_t
---@return angle_t
function R_PointToAngle2(x, y, dest_x, dest_y) end

-- Returns the distance from the camera's X and Y coordinates to `x` and `y`.
--
-- * **`NOTE:`** This will not work consistently among multiple players. Use at your own risk.
--
---@param x fixed_t
---@param y fixed_t
---@return fixed_t
function R_PointToDist(x, y) end

-- Returns the distance from `x` and `y` to `dest_x` and `dest_y`.
--
---@param x fixed_t
---@param y fixed_t
---@param dest_x fixed_t
---@param dest_y fixed_t
---@return fixed_t
function R_PointToDist2(x, y, dest_x, dest_y) end

-- Returns the subsector that the given point is located in. Never returns *`nil`*, even if outside of the map.
--
---@param x fixed_t
---@param y fixed_t
---@return subsector_t
function R_PointInSubsector(x, y) end

-- Same as `R_PointInSubsector`, but returns *`nil`* if point is not in subsector.
--
---@param x fixed_t
---@param y fixed_t
---@return subsector_t | nil
function R_PointInSubsectorOrNil(x, y) end


--//


-- Returns the text character's frame number.
--
-- * Example: `R_Char2Frame("A")` will return 0.
--
---@param char string
---@return integer
function R_Char2Frame(char) end

-- Returns the frame number's text character as both a string and its ASCII value.
--
-- * Example: `R_Frame2Char(0)` will return `"A", 65`.
--
---@param frame integer
---@return string
---@return integer
function R_Frame2Char(frame) end

-- Sets the player's skin.
--
-- * `skin` can be either a skin number or a skin name string.
--
---@param player player_t
---@param skin integer | string
function R_SetPlayerSkin(player, skin) end

-- Checks if `skin` is legal to switch to and returns *`true`* if so.
--
-- * Accounts for factors such as the map `forcecharacter` parameter, and the multiplayer `forceskin` console variable.
--
---@param player player_t
---@param skin integer | string
---@return boolean
function R_SkinUsable(player, skin) end


--//


-- Starts the given sound effect from `origin`, or plays the sound globally if `origin` is *`nil`*.
--
-- * If `origin` exists and has a skin applied, certain sounds may be replaced with custom sounds set for the skin.
-- * If in a Mario mode or Christmas NiGHTS level, certain sounds will automatically be swapped with different sounds for the given level type (these take priority over custom skin sounds).
-- * If the third argument is set, the sound will only be played for that player. Otherwise, it will be heard by all players.
--
---@param origin? mobj_t
---@param soundnum soundnum_t
---@param player? player_t
function S_StartSound(origin, soundnum, player) end

-- Starts the given sound effect at a specific volume from `origin`, or plays the sound globally if `origin` is *`nil`*.
--
-- * If `origin` exists and has a skin applied, certain sounds may be replaced with custom sounds set for the skin.
-- * Unlike `S_StartSound`, Mario mode and Christmas NiGHTS have no effect on the sound used.
-- * Volume ranges from 0 to 255, inclusive.
--
---@param origin? mobj_t
---@param soundnum soundnum_t
---@param volume UINT8
---@param player? player_t
function S_StartSoundAtVolume(origin, soundnum, volume, player) end

-- Stops any sound that the given `mobj` is playing.
--
---@param mobj mobj_t
function S_StopSound(mobj) end

-- Stops the sound `soundnum` that `mobj` may be playing.
--
---@param mobj mobj_t
---@param soundnum soundnum_t
function S_StopSoundByID(mobj, soundnum) end

-- Changes the music to the specified music name or slot number. The music will loop unless `looping` is specified and is false.
--
-- * `mflags` can be used to set flags for the music:
-- > * If `0x4000` is added to the value, the music track will start from the beginning if you attempt to change the music to the same track, instead of having no effect.
-- > * If `0x8000` is added to the value, the music track will be reset when the current level is reloaded.
--
-- If the music format supports multiple tracks, you can supply the track number as well.
--
-- If the new music's name was given, the track number must be added to `mflags`; if a slot number was given, the track number must be stored in the upper 16 bits (i.e., `musicnum == slot number + (track number << 16)`). This also means that the value given for `mflags` will be ignored.
--
-- * Other features:
-- > * `position` determines the position in the music track to start playing from, measured as a time in milliseconds. If set to 0, the music track will be played from the beginning. **`NOTE:`** This feature only works with music formats supported by the Game Music Emu library.  For other music formats, it has no effect.
-- > * `prefadems` determines the time in milliseconds to fade out of the current music track before changing to the new track. If set to 0, no fade out effect will be used.
-- > * `fadeinms` determines the time in milliseconds to fade into the new music track. If set to 0, no fade in effect will be used.
--
-- To set a time in seconds for `position`, `prefadems` or `fadeinms`, multiply the time in seconds by the constant `MUSICRATE`; e.g.: `2*MUSICRATE` for 2 seconds.
--
---@param musicname string
---@param looping? boolean
---@param player? player_t
---@param mflags? integer
---@param position? integer
---@param prefadems? integer
---@param fadeinms? integer
function S_ChangeMusic(musicname, looping, player, mflags, position, prefadems, fadeinms) end

-- Changes the speed of the music.
--
-- * The speed given must be a multiple of `FRACUNIT`, where `FRACUNIT` is the default music speed.
-- * **`NOTE:`** This function only works with music formats supported by the Game Music Emu. For other music formats, it has no effect.
---
---@param musicspeed fixed_t
---@param player? player_t
function S_SpeedMusic(musicspeed, player) end

-- Stops all music from playing.
--
---@param player? player_t
function S_StopMusic(player) end

-- Immediately sets the internal volume of the current music track, as a percentage of the user's configured game volume, where 0 is silent and 100 is full volume.
--
-- * Returns *`true`* if the volume change was done for all players or the user's local player, returns *`false`* if not.
--
---@param volume integer
---@param player? player_t
---@return boolean
function S_SetInternalMusicVolume(volume, player) end

-- Stops any current fade from running. The music will remain playing at the current internal volume.
--
-- * Returns *`true`* if the fade was done for all players or the user's local player, returns *`false`* if not.
--
---@param player? player_t
---@return boolean
function S_StopFadingMusic(player) end

-- Fades the current music track from source volume to target volume, 0-100%.
--
-- * If `source_volume` is not specified, the source volume is the current internal volume. `ms` is the length of the fade, measured in milliseconds. To set a time in seconds, multiply the time in seconds by the constant `MUSICRATE`; e.g.: `2*MUSICRATE` for 2 seconds.
-- * Returns *`true`* if the fade was done for all players or the user's local player, returns *`false`* if not.
--
---@overload fun(target_volume: integer, ms: integer, source_volume?: integer, player?: player_t): boolean
---@param target_volume integer
---@param ms integer
---@param player? player_t
---@return boolean
function S_FadeMusic(target_volume, ms, player) end

-- Fades the current music track from current internal volume to 0%, then stop the music. `ms` is the length of the fade, measured in milliseconds. To set a time in seconds, multiply the time in seconds by the constant `MUSICRATE`; e.g.: `2*MUSICRATE` for 2 seconds.
--
-- * Returns *`true`* if the fade was done for all players or the user's local player, returns *`false`* if not.
--
---@param ms integer
---@param player? player_t
---@return boolean
function S_FadeOutStopMusic(ms, player) end

-- Returns *`true`* if a sound effect with `mobj` as the origin is being played, *`false`* if not.
--
-- * **`NOTE:`** This function only checks sounds being played for the local client, and thus isn't network safe. Use at your own risk.
--
---@param origin mobj_t
---@return boolean
function S_OriginPlaying(origin) end

-- Returns *`true`* if a sound effect with the given ID is being played, *`false`* if not.
--
-- * **`NOTE:`** This function only checks sounds being played for the local client, and thus isn't network safe. Use at your own risk.
--
---@param soundnum soundnum_t
---@return boolean
function S_IdPlaying(soundnum) end

-- Returns *`true`* if a sound effect with the given ID and `mobj` as the origin is being played, *`false`* if not.
--
-- * **`NOTE:`** This function only checks sounds being played for the local client, and thus isn't network safe. Use at your own risk.
--
---@param origin mobj_t
---@param soundnum soundnum_t
---@return boolean
function S_SoundPlaying(origin, soundnum) end

-- If the user has sound captions enabled, this will display the caption `caption` for the duration specified by `lifespan` in a similar manner to the captions displayed for Super Sneakers and Invincibility.
--
-- * If `player` is specified, this will only be displayed for that player.
--
---@param caption string
---@param lifespan tic_t
---@param player? player_t
function S_StartMusicCaption(caption, lifespan, player) end

-- Returns the length of the currently playing music, in milliseconds.
--
-- * **`NOTE:`** This function only checks the music being played for the local client, and thus isn't network safe. Use at your own risk.
--
---@return integer
function S_GetMusicLength() end

-- Returns the position of the currently playing music, in milliseconds.
--
-- * **`NOTE:`** This function only checks the music being played for the local client, and thus isn't network safe. Use at your own risk.
--
---@return integer
function S_GetMusicPosition() end

-- Sets the position of the currently playing music, in milliseconds. Returns *`false`* if no music is playing or a MIDI is currently playing (and therefore the position could not be set), and returns *`true`* otherwise.
--
-- * **`NOTE:`** This may still return *`true`* in some instances where the position could not be set.
--
---@param position integer
---@return boolean
function S_SetMusicPosition(position) end


--//


-- Iterates over all Objects in the map that use `P_MobjThinker`.
--
-- * This excludes all precipitations (rain and snow).
-- * **`NOTE:`** This iterator is extremely slow due to the massive amount of thinkers in a typical map, and should not be used repeatedly so as not to cause framerate drops.
--
---@return mobj_t
---@diagnostic disable-next-line
function mobjs.iterate() end

-- Iterates over all players currently playing in the map.
--
-- * **`NOTE:`** `<player_t>.mo` will return *`nil`* for spectating players.
--
---@return player_t
function players.iterate() end

-- Iterates over all valid skins loaded in the game.
--
---@return skin_t
function skins.iterate() end

-- Iterates over all MapThings in the map.
--
-- * Remember that not all Objects will necessarily have a respective MapThing, and not all MapThings will necessarily have a respective Object.
--
---@return mapthing_t
function mapthings.iterate() end

-- Iterates over all Sectors in the map.
--
---@return sector_t
function sectors.iterate() end

-- Iterates over all Subsectors in the map.
--
---@return subsector_t
function subsectors.iterate() end

-- Iterates over all Linedefs in the map.
--
---@return line_t
function lines.iterate() end

-- Iterates over all Sidedefs in the map.
--
---@return side_t
function sides.iterate() end

-- Iterates over all Vertexes in the map.
--
---@return vertex_t
function vertexes.iterate() end

-- Iterates over all PolyObjects in the map.
--
---@return polyobj_t
---@diagnostic disable-next-line
function polyobjects.iterate() end


--//


-- Special function to check if a `X`/`Y` position is inside the bounds of the PolyObject.
--
---@param x fixed_t
---@param y fixed_t
---@return boolean
function polyobj:pointInside(x, y) end

-- Special function to check if a mobj's `X`/`Y` position intersects with the lines of the PolyObject.
--
---@param mobj mobj_t
---@return boolean
function polyobj:mobjTouching(mobj) end

-- Special function to check if a mobj's `X`/`Y` position is inside the bounds of the PolyObject.
--
---@param mobj mobj_t
---@return boolean
function polyobj:mobjInside(mobj) end

-- Special function that moves a PolyObject horizontally.
--
-- * `x` is the X distance to move, `y` is the Y distance to move, `checkmobjs` is a boolean to enable/disable physics with mobjs (enabled by default).
-- * **`TODO:`** From wiki: `Explain return value.`
--
---@param x fixed_t
---@param y fixed_t
---@param checkmobjs? boolean
---@return boolean
function polyobj:moveXY(x, y, checkmobjs) end

-- Special function that rotates a PolyObject.
--
-- * `delta` is the angle to rotate, `turnthings` is an integer to determine if and which mobjs should be rotated with it, `checkmobjs` is a boolean to enable/disable physics with mobjs (enabled by default).
--
-- * `turnthings` possible values:
-- > * `0` = Nothing
-- > * `1` = Turn only non-players
-- > * `2` = Turn everything
--
-- * **`TODO:`** From wiki: `Explain return value.`
--
---@param delta angle_t
---@param turnthings? integer
---@param checkmobjs? boolean
---@return boolean
function polyobj:rotate(delta, turnthings, checkmobjs) end


--//


-- This loads the lua script file from the `Lua/` folder in the last loaded add-on, which must be a PK3.
--
-- * For instance, to load the file `Lua/script.lua`, use `dofile("script.lua")`.
-- * It is highly recommended this only be used in `init.lua` as the add-on is loading, though it can technically be used at any time.
-- * For addons that are developed on folders, this is highly recommended for file loading.
--
---@param file string
---@return ... any
function dofile(file) end


--//


-- This function opens a file, in the mode specified in the string mode.
--
-- * It returns a new file handle, or, in case of errors, *`nil`* plus an error message.
--
-- The `mode` string can also have a `"b"` at the end, which is needed to open the file in binary (non-text) mode.
--
-- * **`NOTE:`** This function is run locally, and thus isn't network safe.
-- > 1. It is primarily intended to be used for writing to a file.
-- > 2. For reading from a file, it is HIGHLY recommended that you use `io.open` instead, unless you actually need to access data locally, such as a list of passwords.
--
---@param filename string
---@param mode? string
---@return file* | string | nil
function io.openlocal(filename, mode) end


--//