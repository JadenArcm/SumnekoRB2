--[[
	SumnekoRB2 - Global Varibles (+tables)
]]--
---@meta


--//


-- The map number of the map currently being played. 
---@type number
gamemap = nil

-- The **`TypeOfLevel`** flags of the map currently being played.
---@type integer
maptol = nil

-- The game's current "state".
---@type number
gamestate = nil

-- Returns true if playing in Ultimate mode, false if not. 
---@type boolean
ultimatemode = nil

-- Returns true if the map is in Mario mode, false if not.
---@type boolean
mariomode = nil

-- Returns true if the map is in 2D mode, false if not.
---@type boolean
twodlevel = nil

-- Returns true if the map is a Circuit map, false if not.
---@type boolean
circuitmap = nil

-- Returns true if the timer was stopped, false if not.
---@type boolean
stoppedclock = nil

-- Returns true if currently in a netgame, false if not.
---@type boolean
netgame = nil

-- Returns true if currently playing a multiplayer game, false if not.
---@type boolean
multiplayer = nil

-- Returns true if playing in Record Attack or NiGHTS Mode, false if not.
---@type boolean
modeattacking = nil

-- Returns true if playing in two-player mode, false if not.
---@type boolean
splitscreen = nil

-- Returns true if the game has been completed in the current savefile, false if not.
---@type boolean
gamecomplete = nil

-- The current Marathon Mode flags.
---@type integer
marathonmode = nil

-- Returns true if the game is being run with the command line parameter **`-debug`**, false if not. 
---@type boolean
devparm = nil

-- Returns true if the game has been modified and the modification does not have a custom gamedata file, false if not.
---@type boolean
modifiedgame = nil

-- Returns true if a menu is currently active, false if not.
---@type boolean
menuactive = nil

-- Returns true if the game is currently paused, false if not.
---@type boolean
paused = nil

-- The number of Blue Team score have in **`Team Match`** and **`CTF`**.
---@type number
bluescore = nil

-- The number of Red Team score have in **`Team Match`** and **`CTF`**.
---@type number
redscore = nil

-- The time limit before a round ends.
---@type number
timelimit = nil

-- The number of points required before a round can end.
---@type number
pointlimit = nil

-- The map number of the first map in the Single Player campaign.
---@type number
spstage_start = nil

-- The map number of the first map of Marathon Mode.
---@type number
spmarathon_start = nil

-- The map number of the first Single Player Special Stage. 
---@type number
sstage_start = nil

-- The map number of the final Single Player Special Stage, including the unlockable Black Hole Zone.
-- * This will always be equal to `sstage_start + 7`. 
---@type number
sstage_end = nil

-- The map number of the first Coop Special Stage.
---@type number
smpstage_start = nil

-- The map number of the final Coop Special Stage.
-- * This will always be equal to `smpstage_start + 6`. 
---@type number
smpstage_end = nil

-- The map number used as the background for the title screen.
---@type number
titlemap = nil

-- Returns true if a titlemap is currently active, false if not.
---@type boolean
titlemapinaction = nil

-- The map number to warp to immediately when starting the game.
---@type number
bootmap = nil

-- The map number of the tutorial map.
---@type number
tutorialmap = nil

-- Returns true if playing in tutorial mode, false if not.
---@type boolean
tutorialmode = nil

-- The skin color of the Red Team in Team Match and CTF.
---@type skincolor_t
skincolor_redteam = nil

-- The skin color of the Blue Team in Team Match and CTF.
---@type skincolor_t
skincolor_blueteam = nil

-- The skin color of the Red Team thrown ring in Team Match and CTF.
---@type skincolor_t
skincolor_redring = nil

-- The skin color of the Blue Team thrown ring in Team Match and CTF.
---@type skincolor_t
skincolor_bluering = nil

-- How long the Invincibility power-up lasts for.
---@type tic_t
invulntics = nil

-- How long the Super Sneakers power-up lasts for.
---@type tic_t
sneakertics = nil

-- The current gametype being played.
---@type number
gametype = nil

-- The rules of the current gametype being played as a set of **`GTR_*`** flags.
---@type integer 
gametyperules = nil

-- The amount of time that has passed in the current level since it has been loaded, measured in tics.
-- * In most gametypes, this is normally equal to the time displayed on the HUD; however, in Race and Competition modes, **`leveltime`** includes the 4-second pre-timer, meaning that **`leveltime`** will be **`4*TICRATE`** tics ahead of the HUD's displayed time once the latter has started running.
-- * Note: **`leveltime`** will continue to increase after the level is finished, even after the HUD time has stopped, until the tally screen appears.
-- > * The actual time displayed on the player's HUD is set by **`<player_t>.realtime`**. 
---@type tic_t
leveltime = nil

-- Time of how long the special stage can last for, in tics.
-- * The default is **`90*TICRATE`** (90 seconds).
---@type tic_t
sstimer = nil

-- The current weather type set globally.
---@type number
globalweather = nil

-- The current sky set globally.
---@type number
globallevelskynum = nil

-- The server's host player.
---@type player_t
server = nil

-- Returns true if the game is hosting a server, false if not.
---@type boolean
isserver = nil

-- Returns true if the game is a dedicated server, false if not.
---@type boolean
isdedicatedserver = nil

-- This variable stores which Chaos Emeralds have been obtained in the current Single Player or Co-op session, as a set of **`EMERALD<n>`** flags.
---@type integer
emeralds = nil

-- The number of Special Stage Tokens collected in the current level.
---@type number
token = nil

-- The current global gravity value.
-- * The default value is **`FRACUNIT/2`**.
---@type fixed_t
gravity = nil


--//


-- The current weather type set locally.
---@type number
curWeather = nil

-- The current sky set locally.
---@type number
levelskynum = nil

-- The name of the main music track currently used for playback, if there is no active jingle track being played back.
-- * This is by default the music set by current map's level header, but it will be modified when the console command tunes is used, or **`Linedef Type 413`** is executed in the map.
-- * Note: Jingles, **`S_ChangeMusic`** and the **`tunes`** command doesn't modify this variable.
---@type string
mapmusname = nil

-- The flags set for the main music track currently used for playback.
-- * Note: Jingles, **`S_ChangeMusic`** and the **`tunes`** command doesn't modify this variable.
---@type integer
mapmusflags = nil

-- Position in which the music starts at.
---@type number
mapmusposition = nil

-- The local player.
---@type player_t
consoleplayer = nil

-- The player visible on screen.
---@type player_t
displayplayer = nil

-- The secondary player, when **`splitscreen`** mode is active.
---@type player_t 
secondarydisplayplayer = nil

-- The primary camera in-game.
---@type camera_t
camera = nil

-- The secondary camera in-game, only on **`splitscreen`**.
---@type camera_t
camera2 = nil

-- The first player's mouse.
---@type mouse_t
mouse = nil

-- The second player's mouse, only on **`splitscreen`**.
---@type mouse_t
mouse2 = nil


--//


-- This table is used to look up the properties of a player, where the table key is an integer between 0 and 31.
-- * For example, **`players[0]`** is the `player_t` userdata for player 1, **`players[1]`** for player 2, and so on. 
---@type player_t[]
players = {}

-- This table is used to look up the properties of a skin, where the table key is an integer between 0 and 31.
-- * Alternatively, the table key is the skin's name attribute, which can be given instead of the skin number. 
---@type skin_t[]
skins = {}


--//


-- This table is used to look up or modify attributes for a specific Object type, where **`MT_<NAME>`** is an integer that is expected to be the **`MT_*`** constant for the Object type in question.
-- * Whole entries for **`mobjinfo[]`** can be recreated from scratch if needed. 
---@type mobjinfo_t[]
mobjinfo = {}

-- This table is used to look up or modify attributes for a specific state, where **`S_<NAME>`** is an integer that is expected to be the **`S_*`** constant for the state in question.
-- * Whole entries for **`states[]`** can be recreated from scratch if needed.
---@type state_t[]
states = {}

-- This table is used to look up or modify attributes for a specific sound, where **`sfx_<name>`** is an integer that is expected to be the **`sfx_*`** constant for the sound in question.
-- * Whole entries for **`sfxinfo[]`** can be recreated from scratch if needed.
---@type sfxinfo_t[]
sfxinfo = {}

-- Converts a sprite prefix number to a string consisting of the 4-letter sprite name, or vice versa.
-- * **`SPR_NAME`** is an integer that is expected to be the **`SPR_*`** constant for the sprite prefix number in question.
-- * Likewise, **`"NAME"`** must be a four-letter prefix belonging to an existing sprite set.
---@type string[] | number[]
sprnames = {}

-- Converts a sprite2 prefix number to a string consisting of the 4-letter sprite2 name, or vice versa.
-- * **`SPR2_NAME`** is an integer that is expected to be the **`SPR2_*`** constant for the sprite2 prefix number in question.
-- Likewise, **`"NAME"`** must be a four-letter prefix belonging to an existing sprite2.
---@type string[] | number[]
spr2names = {}

-- This table is used to look up the properties of a level header.
---@type mapheader_t[]
mapheaderinfo = {}

-- This table is used to look up or modify attributes for a specific HUD item, where **`HUD_<NAME>`** is an integer that is expected to be the **`HUD_*`** constant for the HUD item in question.
---@type hudinfo_t[]
hudinfo = {}

-- This table is used to access the pivots of each of a sprite's frames, where **`SPR_NAME`** is an integer expected to be the **`SPR_*`** constant for the sprite in question.
-- * Likewise, **`"NAME"`** must be a four-letter prefix belonging to an existing sprite set.
-- * Each of the entries of this table contain an array of `spriteframepivot_t` userdata, each index corresponding to a frame of animation the sprite possesses.
---@type spriteinfo_t
spriteinfo = {}

-- This table is used to look up or set the sprite to fallback to on a specific sprite2, if a character is missing such sprite, where **`SPR2_NAME`** is an integer that is expected to be the **`SPR2_*`** constant for the sprite2 in question.
-- * Likewise, **`"NAME"`** must be a four-letter prefix belonging to an existing sprite set.
-- * Note: Only custom sprite2 defaults can be modified.
---@type playersprite_t
spr2defaults = {}

-- This table is used to look up or modify attributes for a specific skin color, where **`SKINCOLOR_<NAME>`** is an integer that is expected to be the **`SKINCOLOR_*`** constant for the skin color in question.
---@type skincolor_t[]
skincolors = {}

-- This table is used to look up or modify the pressed state for a specific key.
---@type boolean[]
gamekeydown = {}


--//


---@type hudlib_t
hud = {}

---@type drawerlib_t
v = {}


--//