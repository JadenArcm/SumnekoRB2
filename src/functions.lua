--[[
    SumnekoRB2 - Functions
]]--


--//


-- Creates a new hook with the arguments given.
--
---@param hookname string
---@param callback function
---@param extra?   integer | string
function addHook(hookname, callback, extra) end

-- Automatically initializes a new named resource based on the name given, declaring the name for the next `freeslot` available for the appropriate resource type.
-- * This function will return the integer representing each resource successfully allocated; unsuccessful allocations will not be returned.
--
---@param resource string
---@vararg string
---@return integer
function freeslot(resource, ...) end

-- This calls the original version of the current action.
-- * Only use this inside of an overridden `A_` action.
--
---@param actor mobj_t
---@param var1? any
---@param var2? any
function super(actor, var1, var2) end


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
-- * Undefined values, such as `tan(90°)` or `tan(270°)`, are represented by `INT32_MIN`.
--
---@param a angle_t
---@return fixed_t
function tan(a) end

-- Converts an integer in the fixed-point scale to an angle value.
-- * Example: `FixedAngle(90*FRACUNIT)` will return `ANGLE_90`.
--
---@param a fixed_t
---@return angle_t
function FixedAngle(a) end

-- Converts an angle value to an integer in the fixed-point scale.
-- * Example: `AngleFixed(ANGLE_90)` will return `90*FRACUNIT`.
--
---@param a angle_t
---@return fixed_t
function AngleFixed(a) end

-- Returns the "inverse" of the given angle, i.e., `360° - a`.
-- * Example: `InvAngle(ANGLE_45)` will return `ANGLE_315`.
--
---@param a angle_t
---@return angle_t
function InvAngle(a) end

-- Returns the result of multiplying `a` by `b` in the fixed-point scale.
-- * Example: `FixedMul(2*FRACUNIT, 3*FRACUNIT)` will return `6*FRACUNIT`.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedMul(a, b) end

-- Returns the result of dividing `a` by `b` in the fixed-point scale.
-- * Example: `FixedDiv(6*FRACUNIT, 3*FRACUNIT)` will return `2*FRACUNIT`.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedDiv(a, b) end

-- Returns the integer component of `a` as a normal integer.
-- * Example: `FixedInt(45*FRACUNIT)` will return 45.
--
---@param a fixed_t
---@return integer
function FixedInt(a) end

-- Returns the remainder of dividing `a` by `b` in the fixed-point scale.
-- * Note: Negative values for `b` are not handled correctly and may slow down the game.
--
---@param a fixed_t
---@param b fixed_t
---@return fixed_t
function FixedRem(a, b) end

-- Returns the square root of `a` in the fixed-point scale.
-- * Example: `FixedSqrt(16*FRACUNIT)` will return `4*FRACUNIT`.
--
---@param a fixed_t
---@return fixed_t
function FixedSqrt(a) end

-- Returns the hypotenuse of `a` and `b` in the fixed-point scale (i.e., the length of the longest side of a right-angled triangle where the other sides have lengths `a` and `b`).
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
-- * Example: If the sector `sector` uses the [Damage (Fire)](https://wiki.srb2.org/wiki/Damage_(Fire)) sector special from Group 1, `GetSecSpecial(sector.special, 1)` will return 3.
--
---@param special integer
---@param section integer
---@return integer
function GetSecSpecial(special, section) end

-- Returns true if `flags` contains all the emerald flags from `EMERALD1` to `EMERALD7`.
-- * Intended to be used for checking either the Single Player/Co-op emeralds collected by all players (`emeralds`), or the multiplayer emeralds collected by a particular player (`player.powers[pw_emeralds]`).
--
---@param flags integer
---@return boolean
function All7Emeralds(flags) end

-- Returns both the opposite skincolor for `color`, and the associated sprite frame number for the opposite color.
-- * Example: `ColorOpposite(SKINCOLOR_WHITE)` will return the values `SKINCOLOR_BLACK` and 10.
--
---@param color integer
---@return integer, integer
function ColorOpposite(color) end


--//


-- Enables `huditem`, if it was disabled by `hud.disable`.
--
---@param huditem string
function hud.enable(huditem) end

-- Disables `huditem`, preventing the game from drawing it.
--
---@param huditem string
function hud.disable(huditem) end

-- Returns true if `huditem` is enabled, false if it was disabled by `hud.disable`.
--
---@param huditem string
function hud.enabled(huditem) end

-- Adds a new HUD drawing function. `hookname` determines when the contents of the function are run.
--
---@param callback function
---@param hookname string
function hud.add(callback, hookname) end


--//


-- Returns true if a graphic lump `name` exists in any WAD file loaded, returns false if not.
--
---@param name string
---@return boolean
function v.patchExists(name) end

-- Caches a new patch using a graphic with `name` as the name. Returns nil if the graphic does not exist.
--
---@param name string
---@return patch_t
function v.cachePatch(name) end

-- Draws a patch at the screen coordinates given.
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` to obtain a value that can be used here.
--
---@param x integer
---@param y integer
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap_t
function v.draw(x, y, patch, flags, colormap) end

-- Returns a patch corresponding to the arguments given, and a boolean specifying whether the patch should be flipped.
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

-- Draws a patch at the screen coordinates given, but at a specific scale.
-- * Coordinates and scale are required to be fixed point values (e.g.: `FRACUNIT` is one pixel, `FRACUNIT/2` is half a pixel, `2*FRACUNIT` is two pixels, etc).
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` to obtain a value that can be used here.
--
---@param x fixed_t
---@param y fixed_t
---@param scale fixed_t
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap_t
function v.drawScaled(x, y, scale, patch, flags, colormap) end

-- Draws a patch at the screen coordinates given, but at a specific horizontal (`hscale`) and vertical (`vscale`) scale.
-- * Coordinates and scale are required to be fixed point values (e.g.: `FRACUNIT` is one pixel, `FRACUNIT/2` is half a pixel, `2*FRACUNIT` is two pixels, etc).
-- * `flags` determines the video flags given, which control extra effects such as translucency.
-- * `colormap` determines the colormap applied to the patch. Use `v.getColormap` to obtain a value that can be used here.
--
---@param x fixed_t
---@param y fixed_t
---@param hscale fixed_t
---@param vscale fixed_t
---@param patch patch_t
---@param flags? integer
---@param colormap? colormap_t
function v.drawStretched(x, y, hscale, vscale, patch, flags, colormap) end

-- Draws a number at the screen coordinates given.
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
-- * `flags` determines the video flags given, which control extra effects such as color and translucency.
-- * `align` determines the alignment of the text or otherwise miscellaneous traits.
--
---@param x integer
---@param y integer
---@param text string
---@param flags? integer
---@param align? string
function v.drawString(x, y, text, flags, align) end

-- Returns what the width of the text displayed as graphics on the screen would be.
-- * `flags` determines the video flags given to the string, though only the scaling flags will have any effect on the size of the width returned by the function.
-- * `widthtype` determines what font the string is in, which can also affect the size of the width returned by the function.
--
---@param text string
---@param flags? integer
---@param widthtype? string
---@return integer
function v.stringWidth(text, flags, widthtype) end

-- Returns the colormap to apply to a patch for a particular character skin and/or skincolor, as a special type of userdata which can only be used by drawing functions. 
-- * Skin names such as `"sonic"` or `"tails"` can be used, but their skin slot numbers can also be used. 
-- * If either of these are used, the skin's `startcolor` value can affect the range of palette colors replaced by the given skin color's palette colors.
-- * Certain skin values have special effects on the colormap returned for a patch to use. They are represented by the following constants:
--
---@param skin? string | integer
---@param color? integer
---@return colormap_t
function v.getColormap(skin, color) end

-- Fades the screen to a certain palette color.
-- * If `color` is a palette index, the maximum value of `strength` is 10; otherwise, if `color` is one of the defined special values, then the maximum value of `strength` is 31.
-- * Additionally, certain values of `color` have special effects on the resulting color of the screen pixel.
--
---@param color integer
---@param strength integer
function v.fadeScreen(color, strength) end

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

-- Returns the current renderer used, as a string.
--
-- Possible return values:
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
-- * This function differs from `v.userTransFlag`, since that function is specified by the user, but `v.localTransFlag` is specified by the game itself.
--
---@return integer
function v.localTransFlag() end

-- Returns a random integer between 0 and `FRACUNIT-1` (65535).
--
---@return fixed_t
function v.RandomFixed() end

-- Returns a random integer between 0 and 255.
--
---@return integer
function v.RandomByte() end

-- Returns a random integer between 0 and `a - 1`.
-- * Note: `a` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which will be spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@return integer
function v.RandomKey(a) end

-- Returns a random integer between `a` and `b`, inclusive.
-- * Note: The difference between `a` and `b` should not be larger than 65536. Otherwise, there will be only 65536 possible different results this function can return, which are spread out across the full range given; the rest of the numbers will be skipped.
--
---@param a integer
---@param b integer
---@return integer
function v.RandomRange(a, b) end

-- Returns a random integer between -128 and 127.
--
---@return integer
function v.SignedRandom() end

-- Returns true `p`% of the time, where `p` is a fixed-point number between 0 and `FRACUNIT`.
-- * For example, `v.RandomChance(FRACUNIT/2)` returns true 50% of the time.
--
---@param p fixed_t
---@return boolean
function v.RandomChance(p) end


--//

-- Registers a console command with the name `name` that executes the specified function when called.
-- * The first argument of the function is the player who executed the command, and all subsequent arguments are arguments passed to the command.
-- * `flags` may be any of the flags listed below, `OR`'ed together, or none.
-- * `callback` format: `function(player_t player, [string arg1, [...]])`
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

-- Registers a console variable with the name `name` for use in the console and returns the console variable created.
-- * `defaultvalue` is the default value for the console variable in string form.
-- * `PossibleValue` is a list or range of possible values that are allowed for the variable.
-- * `flags` is an integer storing the flags to be given to the console variable.
--
---@param t table
---@return consvar_t
function CV_RegisterVar(t) end

-- Returns the corresponding console variable named `var`.
--
---@param var string
---@return consvar_t
function CV_FindVar(var) end


--//


-- Prints the text given to the console for `player`. This is similar to `print(text)`, but this will only print for one player.
-- * Certain ASCII characters will have special effects when printed out to the console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`), e.g.: `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param player player_t
---@param text string
function CONS_Printf(player, text) end

-- Outputs text in the chat window (or the console if it cannot be output in the chat window). Each output string will be separated into different lines.
-- * If `sound` is set to true (defaults to false), a sound will be played when sent.
-- * Certain ASCII characters will have special effects when printed out to the chat window or console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`).For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param output string
---@param sound? boolean
function chatprint(output, sound) end


-- Outputs text in the chat window (or the console if it cannot be output in the chat window). Each output string will be separated into different lines.
-- * Unlike `chatprint`, the text will only be output for the player supplied in `player`.
-- * If `sound` is set to true (defaults to false), a sound will be played when sent.
-- * Certain ASCII characters will have special effects when printed out to the chat window or console by this function. These can either be given using decimal (`\nnn`) or hexadecimal codes (`\xnn` or `\xnnnn`). For example, `\130` and `\x82` will both cause text following the code to turn yellow.
--
---@param player player_t
---@param output string
---@param sound? boolean
function chatprintf(player, output, sound) end


--//


-- Returns true if the player has been given administrative privileges by the server via the `promote` command, or has logged as an admin via a preset password. Returns false otherwise.
-- * Note that the host themselves will not necessarily return true to this function, since their administrative powers are there by default.
--
---@param player player_t
---@return boolean
function IsPlayerAdmin(player) end


--//


-- Respawns the player whose player number is `playernum`.
-- * Avoid calling this function directly in Single Player; set the player's `player.playerstate` to `PST_REBORN` instead.
--
---@param playernum integer
function G_DoReborn(playernum) end

-- Checks if the required players to exit the level is reached.
-- * The requirement depends of `playersforexit`.
--
---@return boolean
function G_EnoughPlayersFinished() end

-- Changes the settings that will apply when the current level is exited, but does not actually exit the level.
-- * If a value for `nextmap` is given, it sets the map number the game will change to once the level ends.
-- * If `skipstats` is set to 1 (defaults to 0), the statistics screen will be skipped. If set to 2, it will additionally skip the level end cutscene, if applicable.
--
-- Calling the function with no arguments will clear the custom settings.
--
---@param nextmap? integer
---@param skipstats? integer
---@return nil
function G_SetCustomExitVars(nextmap, skipstats) end

-- Immediately exits the level.
-- * If `G_SetCustomExitVars` was called beforehand, the level will exit using the custom settings set.
--
function G_ExitLevel() end

-- Returns true if the map with the given map number is a Special Stage, returns false otherwise.
-- * If no map number is given, the current map's number will be used.
--
---@param map? integer
---@return boolean
function G_IsSpecialStage(map) end

-- Registers a custom gametype into the game.
--
---@param t table
function G_AddGametype(t) end

-- Returns true if the current gametype uses lives (Single Player, Co-op or Competition), returns false otherwise.
-- * If in Record Attack or a NiGHTS level, this returns false regardless of gametype.
--
---@return boolean
function G_GametypeUsesLives() end