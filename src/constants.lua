--[[
	SumnekoRB2 - Constants
]]--
---@meta


--//


INT8_MIN = -128 		-- Signed 8-bit integer minimum.
INT8_MAX = 127  		-- Signed 8-bit integer maximum.

INT16_MIN = -32768	    -- Signed 16-bit integer minimum.
INT16_MAX = 32767	    -- Signed 16-bit integer maximum.

INT32_MIN = -2147483648 -- Signed 32-bit integer minimum.
INT32_MAX = 2147483647  -- Signed 32-bit integer maximum.

UINT8_MAX = 255         -- Unsigned 8-bit integer maximum.
UINT16_MAX = 65535      -- Unsigned 16-bit integer maximum.
UINT32_MAX = 4294967295 -- Unsigned 32-bit integer maximum.


--//


ANG1   = 11930465
ANG2   = 23860929
ANG10  = 119304647
ANG15  = 178956971
ANG20  = 238609294
ANG30  = 357913941
ANG60  = 715827883
ANG64h = 769514974
ANG105 = 1252698795
ANG210 = -1789569707
ANG255 = -1252698795
ANG340 = -238609294
ANG350 = -119304647

ANGLE_11hh = 134217728
ANGLE_22h  = 268435456
ANGLE_45   = 536870912
ANGLE_67h  = 805306368
ANGLE_90   = 1073741824
ANGLE_112h = 1342177280
ANGLE_135  = 1610612736
ANGLE_157h = 1879048192
ANGLE_180  = -2147483648
ANGLE_202h = -1879048192
ANGLE_225  = -1610612736
ANGLE_247h = -1342177280
ANGLE_270  = -1073741824
ANGLE_292h = -805306368
ANGLE_315  = -536870912
ANGLE_337h = -268435456

ANGLE_MAX = -1


--//


-- The basic unit of measurement for lengths, speeds, object scales and sometimes angles.
-- - Values for these measurements are interpreted as fixed-point numbers with `FRACUNIT` as the base unit.
-- - `FRACUNIT` represents one unit/pixel, `2*FRACUNIT` represents 2.0 units/pixels, `FRACUNIT/2` represents 0.5 units/pixels, and so on. 
FRACUNIT = 1 << 16

-- The number of bits to shift up to convert integers to fixed-point numbers in `FRACUNIT` scale, or the number of bits to shift down for vice versa.
-- - This constant is used to define the value of `FRACUNIT` itself.
-- - Modifying the value of `FRACBITS` in the source code would also modify `FRACUNIT`'s value.
-- - Note: Bit-shifting an integer by `FRACBITS` in either direction is equivalent to multiplication or division by `FRACUNIT`. 
FRACBITS = 16

-- The number of tics in a second. 
-- - Anything multiplied by this value is a measurement in seconds.
TICRATE = 35

-- The music playback rate, or the number of milliseconds in a second.
-- - Anything multiplied by this value is a measurement in seconds (in the context of music playback).
-- - This is intended for use with SOC parameters and Lua functions that change or set positions within music tracks and/or applying fade in/out effects to them. 
MUSICRATE = 1000

-- The maximum distance that rings can be from players with an Attraction Shield to be attracted to them.
-- - This is also used by the homing attack character ability as the maximum distance an enemy, spring or monitor can be to able to home in on it.
RING_DIST = 512 * FRACUNIT

-- The speed at which pushable Objects with `MF2_SLIDEPUSH` will be pushed.
PUSHACCEL = 2 * FRACUNIT

-- The executable's Mod ID.
-- - In SRB2 v2.2, `18` is the default value for this constant. 
MODID = 18

-- The executable's Mod Version.
-- - In SRB2 v2.2.10, `51` is the default value for this constant. 
MODVERSION = 51

-- The SRB2 version number the executable is based on.
-- - In SRB2 v2.2, `220` is the default value for this constant.
CODEBASE = 220

-- The game's version number.
VERSION = 202

-- The game's version, as a string.
VERSIONSTRING = "v2.2.10"

-- The game's sub-version number.
SUBVERSION = 10

-- Vertical movement speed for Objects with `MF_FLOAT`.
FLOATSPEED = 4 * FRACUNIT

-- The maximum height an Object can step up/down without being blocked by a wall or falling down.
MAXSTEPMOVE = 24 * FRACUNIT

-- Doom's Use button effect range. *Unused in SRB2.*
USERANGE = 64 * FRACUNIT

-- Doom's melee attack range. Used in SRB2 by `P_CheckMeleeRange` and `P_SkimCheckMeleeRange`.
MELEERANGE = 64 * FRACUNIT

-- Doom's missile attack range. Used in SRB2 by `A_UnidusBall`.
MISSILERANGE = 32 * 64 * FRACUNIT

-- Used by the MapThing spawning code to signify that the Thing's Z position is on the sector's floor.
-- - This is corrected to the appropriate height in `P_SpawnMobj` for newly spawned Objects. 
ONFLOORZ = INT32_MIN

-- Used by the MapThing spawning code to signify that the Thing's Z position is on the sector's ceiling.
-- - This is corrected to the appropriate height in `P_SpawnMobj` for newly spawned Objects.
ONCEILINGZ = INT32_MAX

-- Used by `<player_t>.lives` to indicate that this player has infinite lives.
INFLIVES = 0x7F

-- The maximum magnitude for values returned by `input.joyAxis` and `input.joyAxis2`.
JOYAXISRANGE = 1023


--//


-- When an Object with this flag is touched by the player, the function `P_TouchSpecialThing` is called to determine what should happen with the Object and/or the player.
-- - Objects that interact with the player in some way upon being touched, such as enemies, hazards or collectible items, should have this flag.
-- - Objects with `MF_ENEMY`, `MF_BOSS` and/or `MF_FIRE` in particular require this flag to be able to damage the player on touch or be damaged by the player on touch.
-- - If there is no existing behavior set, touching the Object will by default kill the Object (sending it to its `DeathState`) and play its `DeathSound`.
-- - Lua is capable of modifying the effect of this flag for particular Object types, using the `TouchSpecial` Lua hook. 
MF_SPECIAL = 1 << 0

-- This makes the Object solid, and it will act as such to the player.
MF_SOLID = 1 << 1

-- The Object can be damaged.
-- - Combined with `MF_SOLID`, this makes it vulnerable to missiles, but not normal attacks. 
MF_SHOOTABLE = 1 << 2

-- Removes the Object from the sector links, making it invisible. 
-- - Don't change this flag during runtime. To make something invisible during the game, use `MF2_DONTDRAW` or set the sprite to `SPR_NULL`.
MF_NOSECTOR = 1 << 3

-- Removes the Object from the blockmap, making it intangible.
-- - Just like `MF_NOSECTOR` though, don't change this flag during runtime; use `MF_NOCLIP` instead.
MF_NOBLOCKMAP = 1 << 4

-- The Object's hitbox will be treated as a line instead of a box, lining up with the appearance of states with the `FF_PAPERSPRITE` flag. 
MF_PAPERCOLLISION = 1 << 5

-- The Object is a pushable, and as such can be pushed by players and other pushables.
MF_PUSHABLE = 1 << 6

-- The Object is a boss and will use a boss thinker.
MF_BOSS = 1 << 7

-- The Object spawns on the ceiling rather than the floor, unless the `Flip` flag is checked on the Object's MapThing. 
MF_SPAWNCEILING = 1 << 8

-- The Object is unaffected by gravity and will keep its height unless moved by something else.
MF_NOGRAVITY = 1 << 9

-- The Object is an ambient sound effect.
-- - The Object's `SeeSound` is constantly played, and `SpawnHealth` sets the interval between each time `SeeSound` is played. 
MF_AMBIENT = 1 << 10

-- The Object will slide along walls when colliding with them.
MF_SLIDEME = 1 << 11

-- The Object is intangible and will go through walls and other Objects.
-- - When `noclip` is turned on, the player will be given this flag.
MF_NOCLIP = 1 << 12

-- The Object will automatically floats up or down to the height of its target, unless `MF2_INFLOAT` or `MF2_SKULLFLY` are set. 
-- - This is most commonly used by flying or underwater enemies and bosses that need to chase the player vertically.
-- - `MF_NOGRAVITY` has to be checked for this to work as intended.
-- - The Object will move up/down at a fixed speed of `4` fracunits/tic.
-- - Note: The Egg Mobile's floating behavior and speed works differently to that of other Objects that use this flag.
MF_FLOAT = 1 << 13

-- The Object is a monitor icon and will float upwards upon being spawned.
-- - `Damage` sets how high the Object will rise before disappearing, and `Speed` sets how fast it will rise.
MF_BOXICON = 1 << 14

-- The Object is a projectile of some sort.
MF_MISSILE = 1 << 15

-- The Object is a spring and will be treated as such when touched.
MF_SPRING = 1 << 16

-- The Object will bounce off walls and other Objects, playing its `ActiveSound` whenever this happens.
MF_BOUNCE = 1 << 17

-- The Object is a monitor; it will be popped when hit by a normal attack from the player and award a power.
-- - If the Object falls on a player, the player will be crushed and die.
-- - In multiplayer, a player is awarded points if they manage to pop the monitor Object before it falls on another player. 
MF_MONITOR = 1 << 18

-- The Object has no AI. 
-- - Use this to save CPU power for static scenery Objects.
-- - Objects with this flag will not animate and cannot use any actions.
MF_NOTHINK = 1 << 19

-- The Object is flaming; it will hurt players without an Elemental Shield (provided `MF_SPECIAL` or `MF_PAIN` is also checked) and vanish when it touches water.
MF_FIRE = 1 << 20

-- The Object is not restricted to the top and bottom heights of the sector it is in, and can go into the floor or ceiling.
MF_NOCLIPHEIGHT = 1 << 21

-- The Object is an enemy; provided it has `MF_SPECIAL` also checked it can hurt the player on touch, can be killed by various means, and gives the player who killed it 100 points.
MF_ENEMY = 1 << 22

-- The Object is a scenery item and will use a reduced thinker, taking up less CPU power than a regular Object would.
MF_SCENERY = 1 << 23

-- The Object hurts players on contact.
-- - This effect will override any extra effects on touch from flags such as `MF_SPECIAL`.
MF_PAIN = 1 << 24

-- The Object will stick to any surface or solid Object it touches.
MF_STICKY = 1 << 25

-- Used by NiGHTS power-up items.
-- - When the Object is paralooped, it goes into its `SeeState` and adds the `MF_SPECIAL` flag, allowing the player to collect it.
MF_NIGHTSITEM = 1 << 26

-- The Object is partially intangible, it will pass through other Objects, but not walls.
-- - This is used for the flickies that are released from destroyed enemies, for example.
-- - Objects with the `MF_MISSILE` flag use this for an extra purpose: When a missile explodes, this flag is set to indicate that is has exploded and prevent it from exploding again.
MF_NOCLIPTHING = 1 << 27

-- Used by grenade-like projectiles, such as the Grenade Ring, to be used with `MF_MISSILE`.
-- - Instead of exploding on collision with the floor, it will bounce off it instead. `ActiveSound` is played for every collision.
MF_GRENADEBOUNCE = 1 << 28

-- When an Object is spawned and its `SpawnState` has an action, the action will normally not be performed; if this flag is set, the action will be performed.
-- - Note: Some actions rely on information that is not yet available when the Object is still being spawned, such as the Object's target or tracer.
-- - These actions may crash the game when performed on spawn, so use caution with this flag.
MF_RUNSPAWNFUNC = 1 << 29


--//


-- This flag is automatically set for the NiGHTS Axis, Axis Transfer and Axis Transfer Line.
-- - It is used internally to make it more convenient to check if an Object is one of those three.
MF2_AXIS = 1 << 0

-- This flag is given to Objects if they are in 2D mode or are supposed to behave as such.
-- - In general, this prevents movement along the y-axis, with exceptions such as being propelled by springs.
-- - Can be given to/removed from players through `Linedef Type 432`.
MF2_TWOD = 1 << 1

-- The Object does not respawn.
-- - Given to any rings, ammo and panels dropped by players who have been hit.
-- - This does not do anything for most Objects otherwise. 
MF2_DONTRESPAWN = 1 << 2

-- The Object does not generate a visible sprite.
-- - Frequently used for sprite flickering effects, such as when a player is recovering from being hit, usually by turning on and off this flag every other tic.
MF2_DONTDRAW = 1 << 3

-- This flag is given to thrown Automatic Rings to identify them as such.
MF2_AUTOMATIC = 1 << 4

-- This flag is given to thrown Rail Rings to identify them as such.
-- - This does not in fact allow Objects to instantanously fly across the map as with Rail Rings themselves, unless when fired by a player specifically.
-- - For players that have just been hit by an Object with this flag, they will have a greatly increased knockback speed (45 fracunits/tic); combined with `MF2_EXPLOSION` however, this is slightly decreased to 38 fracunits/tic.
-- - Overridden by the knockback effect of `MF2_SCATTER`.
MF2_RAILRING = 1 << 5

-- This flag is given to thrown Bounce Rings to identify them as such.
MF2_BOUNCERING = 1 << 6

-- This flag is given to thrown Explosion Rings and Grenade Rings to identify them as such.
-- - For players that have just been hit by an Object with this flag, they will have a greatly increased knockback speed (30 fracunits/tic); combined with `MF2_RAILRING` this is further increased to 38 fracunits/tic.
-- - Overridden by the knockback effect of `MF2_SCATTER`.
MF2_EXPLOSION = 1 << 7

-- This flag is given to thrown Scatter Rings to identify them as such.
-- - For players that have just been hit by an Object with this flag, their knockback speed will depend on how far away the Object has moved from the Object that fired it if one exists.
-- - Players very close to the firer will receive a massive knockback speed up to 128 fracunits/tic maximum, players far away meanwhile will receive a much smaller knockback (minimum is 4 fracunits/tic, the normal knockback speed).
MF2_SCATTER = 1 << 8

-- This flag is given to projectiles when the player who threw them has since died and respawned.
MF2_BEYONDTHEGRAVE = 1 << 9

-- The Object slides after being pushed.
-- - `MF_SOLID` and `MF_PUSHABLE` have to be checked for this to work.
-- - The maximum speed at which an Object with this flag can slide is set by its Speed value.
-- - Also used by flung emeralds in Match/CTF to prevent them from being collected if they are moving upwards.
MF2_SLIDEPUSH = 1 << 10

-- If the Object is falling, it will stop all horizontal movement and drop straight down.
-- - This flag is given to pushables whose MapThings have both the `Special` and `Ambush` flag checked.
MF2_CLASSICPUSH = 1 << 11

-- Inverts the conditions for this Object to be able to be targeted by `A_LookForEnemies`, for mechanics such as Fang's pop gun.
-- - Objects with the `MF_SHOOTABLE` and at least `MF_ENEMY`, `MF_BOSS`, and/or `MF_MONITOR` normally are the only targets, but this flag will disallow those objects & allow others.
MF2_INVERTAIMABLE = 1 << 12

-- If an Object has the `MF_FLOAT` flag set, it automatically floats to the height of its target.
-- - If it shouldn't do that, this flag is used.
-- - This flag is automatically given and removed during use of `A_Chase`-style actions, when the actor Object's movement is blocked and the actor has to concentrate on adjusting its height to get past a blocking wall.
MF2_INFLOAT = 1 << 13

-- Exploded Explosion Rings and Grenade Rings are given this flag to signify that they have already exploded.
-- - Missile Objects with this flag will not play `DeathSound` when exploding.
MF2_DEBRIS = 1 << 14

-- This flag is used for the item attraction in NiGHTS.
-- - Spheres, rings and coins that are inside the player's attraction radius are given this flag.
MF2_NIGHTSPULL = 1 << 15

-- The Object has just attacked, and cannot attack again immediately.
-- - Objects using actions such as `A_Chase`, `A_FaceStabChase`, `A_SkimChase`, `A_Boss1Chase` or `A_BrakChase` add this flag when they first attack.
-- - When they try to attack again, this flag is removed instead of attacking, and then the process repeats again once they are ready to attack again.
-- - CTF flags have this flag set when they are outside their respective bases.
MF2_JUSTATTACKED = 1 << 16

-- This flag is used signify that an Object is currently firing some type of projectile.
-- - Used by the Turret and the Flame Jets.
-- - `A_TurretFire` and `A_SuperTurretFire` add this flag to the Object, `A_TurretStop` removes it, while `A_ToggleFlameJet` can do either depending on whether the flag is already set or not.
MF2_FIRING = 1 << 17

-- Missile Objects with this flag will be able to make even Super players be flung back when collided with.
-- - However, it will not make them lose rings as with normal players.
-- - Objects with `MF2_FIRING` and this flag will pass on this flag to the missiles they fire.
MF2_SUPERFIRE = 1 << 18

-- The Object's sprite is automatically drawn with `tr_trans80` translucency and full brightness, overriding the current state's settings.
-- - Set by the Force Shield when it has only one health point left.
-- - Also used in Single Player to make the player translucent when the camera is too close.
MF2_SHADOW = 1 << 19

-- This flag is given to Strong Random Monitors to identify them as such.
-- - This flag is also given to Objects with `MF_NIGHTSITEM` whose map Things have the Special flag checked, to mark that the item can only be activated during bonus time.
MF2_STRONGBOX = 1 << 20

-- This flag forces Objects to have permanently flipped gravity, regardless of the current gravity in the sector (unless the Object is a player).
-- - For players however, this can be combined with the gravity boots powerup to cancel out the flipped gravity temporarily.
-- - Can be given to/removed from players through `Linedef Type 433`, and will be given to any Object whose MapThings have the Flip flag checked.
MF2_OBJECTFLIP = 1 << 21

-- This flag is set by the action `A_SkullAttack` to signify that the Object is currently flying at the player.
-- - If the Object is the Egg Mobile or a custom Object with `MF_BOSS`, ghost trails of the Object will be spawned while this flag is set.
MF2_SKULLFLY = 1 << 22

-- This flag is used to signify that a boss has been hit by the player.
-- - Among other things, it makes the boss's outlines flash white and makes it temporarily immune to the player.
-- - The Crawla Commander also uses this in a similar fashion.
MF2_FRET = 1 << 23

-- This flag is given to bosses whose MapThings have the Special flag checked.
-- - If the flag is set and `A_BossDeath` is called, no Egg Capsule will appear and the level will end instead.
-- - Also given to spinning maces when Special is checked to make them silent.
MF2_BOSSNOTRAP = 1 << 24

-- This flag is given to bosses who are fleeing to control their movement.
MF2_BOSSFLEE = 1 << 25

-- This flag is given to bosses who have died but are not necessarily fleeing.
-- - While SRB2 itself never makes use of this flag, it can be used in Lua scripts to identify bosses that have been defeated.
MF2_BOSSDEAD = 1 << 26

-- This flag is used for various purposes, usually to signify an alternate type of behavior for an Object.
-- - Its effect depends on the Object's other flags and the actions being used.
-- - Checking the Ambush flag on a Thing will usually activate this flag for the corresponding Object.
MF2_AMBUSH = 1 << 27

-- This Object will be drawn immediately before or after its tracer is drawn, depending on its dispoffset and position, essentially creating multi-sprite Objects that are drawn as a single Object.
-- - This is notably used for character followitems, such as Tails' tail overlay and Metal Sonic's jet fume.
MF2_LINKDRAW = 1 << 28

-- This Object's thinker calls `P_AddShield` and `P_ShieldLook`.
-- - Used for Shield overlay objects.
-- - For this flag to work, the `MF_SCENERY` flag also needs applied.
MF2_SHIELD = 1 << 29

-- The Object will be drawn on a horizontal plane, also called a floor sprite, or a "splat".
MF2_SPLAT = 1 << 30


--//


-- This flag is given when the Object's "ground" is a solid floor, whether it is the sector's main floor or the top of an FOF/PolyObject.
-- - If the Object's ground is instead an Object with `MF_SOLID`, this flag will not be given. 
MFE_ONGROUND = 1 << 0

-- This flag is given to mark when the Object has just landed on the floor from falling down (or on the ceiling when in flipped gravity).
-- - The flag will subsequently be removed on the next tic afterwards.
MFE_JUSTHITFLOOR = 1 << 1

-- The Object is "touching" water. 
-- - For example: The Object's bottom is below the surface of a water FOF, but the Object's top is still above.
MFE_TOUCHWATER = 1 << 2

-- The Object is "underwater". 
-- - For example: The Object is submerged at least half its height into a water FOF.
-- - For players, this causes the underwater timer to activate, which may result in drowning unless the player escapes or is wearing an Elemental Shield; however, it allows characters with the Swim ability (`CA_SWIM`) to use their ability while this flag is set.
MFE_UNDERWATER = 1 << 3

-- This flag is given to mark when a player has just "stepped" down from a floor to another floor under `24*FRACUNIT`'s below it (the flag is not given for non-player Objects).
-- - If the `Non-Ramp Sector` sector special is applied to the sector floor the player is standing in, the player will instead fall down and this flag will not be given. 
MFE_JUSTSTEPPEDDOWN = 1 << 4

-- This flag is given to mark when the Object's sprites/physics should be vertically flipped.
-- - Not to be confused with `MF2_OBJECTFLIP`, which forces this flag on constantly for permanent reverse gravity.
MFE_VERTICALFLIP = 1 << 5

-- The Object is at least partially submerged in THZ goop, so must have THZ goop gravity/physics applied to it.
MFE_GOOWATER = 1 << 6

-- The mobj is touching a lava block.
MFE_TOUCHLAVA = 1 << 7

-- The Object was already pushed this tic.
MFE_PUSHED = 1 << 8

-- The Object was already sprung this tic.
MFE_SPRUNG = 1 << 9

-- Used to tell the game when to apply Z momentum from platforms.
MFE_APPLYPMOMZ = 1 << 10

-- Compute and trigger on mobj angle relative to tracer.
MFE_TRACERANGLE = 1 << 11


--//

-- This is a special flag that has no general effect.
-- - This is rather used by certain Thing types for turning on extra features or alternative behavior. 
MTF_EXTRA = 1 << 0

-- This flag inverts the Thing's gravity direction, and also inverts whether the Thing's Z position is measured from the floor or ceiling.
-- - For instance, power-up monitors will be flipped upside-down and laid on the ceiling instead of the floor.
-- - Things that hang from the ceiling by default (e.g., chains) will be flipped upside-down but laid on the floor instead of the ceiling. 
--
-- In most cases, this flag will also give the corresponding Object(s) the secondary Object flag `MF2_OBJECTFLIP` when checked. Exceptions to this include the following Thing types:
-- - **NiGHTS Bumper**.
-- - **Hoops** (including customizable hoops).
-- - **All Circles of Rings and/or Blue Spheres**.
MTF_OBJECTFLIP = 1 << 1

-- This is a special flag that has no general effect.
-- This is rather used by certain Thing types for turning on extra features or alternative behavior. 
MTF_OBJECTSPECIAL = 1 << 2

-- This is a special flag that has no general effect.
-- - This is rather used by certain Thing types for turning on extra features or alternative behavior.
--
-- In most cases, this flag will also give the corresponding Object(s) the Object flag `MF2_AMBUSH` when checked. Exceptions to this include the following Thing types:
-- - **Axis, Axis Transfer** and **Axis Transfer Line**.
-- - **NiGHTS Bumper**.
-- - **Star Post**.
-- - All **monitors** that cannot turn into **WRMs**.
-- - **Pushable** Objects if `MTF_OBJECTSPECIAL` is also set.	
MTF_AMBUSH = 1 << 3


--//


-- Frame number mask.
FF_FRAMEMASK = 0xFF

-- Blending mode mask.
FF_BLENDMASK = 0x7000

-- Translucency mask.
FF_TRANSMASK = 0xF0000

-- Brightness mask.
FF_BRIGHTMASK = 0x00300000


-- Number of bits to shift up to convert `AST_` constants to `FF_` constants.
FF_BLENDSHIFT = 0x0C

-- Number of bits to shift up to convert `tr_trans<n>` constants to `FF_TRANS<n>` constants.
FF_TRANSSHIFT = 0x10


-- Super form... (*um i dont know*)
FF_SPR2SUPER = 0x80

-- State changes at the end of a sprite2 animation.
FF_SPR2ENDSTATE = 0x100

-- 50% chance of starting in the middle of a sprite2 animation.
FF_SPR2MIDSTART = 0x200

-- Sprite uses additive blending.
FF_ADD = 0x1000

-- Sprite uses subtractive blending.
FF_SUBTRACT = 0x2000

-- Sprite uses reverse subtractive blending.
FF_REVERSESUBTRACT = 0x3000

-- Sprite uses modulative blending.
FF_MODULATE = 0x4000

-- Sprite is 10% translucent. (90% opaque)
FF_TRANS10 = 0x10000

-- Sprite is 20% translucent. (80% opaque)
FF_TRANS20 = 0x20000

-- Sprite is 30% translucent. (70% opaque)
FF_TRANS30 = 0x30000

-- Sprite is 40% translucent. (60% opaque)
FF_TRANS40 = 0x40000

-- Sprite is 50% translucent. (50% opaque)
FF_TRANS50 = 0x50000

-- Sprite is 60% translucent. (40% opaque)
FF_TRANS60 = 0x60000

-- Sprite is 70% translucent. (30% opaque)
FF_TRANS70 = 0x70000

-- Sprite is 80% translucent. (20% opaque)
FF_TRANS80 = 0x80000

-- Sprite is 90% translucent. (10% opaque)
FF_TRANS90 = 0x90000

-- Sprite is always at full brightness, and not affected by lighting.
FF_FULLBRIGHT = 0x00100000

-- Sprite is always at full darkness, and not affected by lighting.
FF_FULLDARK = 0x00200000

-- Sprite is drawn between full brightness & lighting.
FF_SEMIBRIGHT = 0x00300000

-- Sprite is drawn along a vertical plane. (paper-like)
FF_PAPERSPRITE = 0x00400000

-- Sprite is drawn along a horizontal plane. (squished-like)
FF_FLOORSPRITE = 0x00800000

-- Sprite is flipped vertically.
FF_VERTICALFLIP = 0x01000000

-- Sprite is flipped horizontally.
FF_HORIZONTALFLIP = 0x02000000

-- The state sprite is animated and cycles through several frames. (via `var1` and `var2`.)
FF_ANIMATE = 0x10000000

-- Animation is synced to a global timer.
FF_GLOBALANIM = 0x20000000

-- Animation starts at a random frame.
FF_RANDOMANIM = 0x40000000


--//


-- Floor sprite mask.
RF_SPLATMASK = 0x00F0

-- Lighting mask.
RF_BRIGHTMASK = 0x0300

-- Sprite type mask.
RF_SPRITETYPEMASK = 0x3000


-- Flips the sprite horizontally.
RF_HORIZONTALFLIP = 1 << 0

-- Flips the sprite vertically.
RF_VERTICALFLIP = 1 << 1

-- The sprite will use the values of `spritexoffset` and `spriteyoffset` absolutely, instead of relatively to the sprite's original offsets. 
RF_ABSOLUTEOFFSETS = 1 << 2

-- The values of `spritexoffset` and `spriteyoffset` will be applied flipped to the sprite's original offsets.
RF_FLIPOFFSETS = 1 << 3

-- The floor sprite will be drawn along a slope plane.
RF_SLOPESPLAT = 1 << 4

-- The floor sprite will adjust to the slope its Object is standing on.
RF_OBJECTSLOPESPLAT = 1 << 5

-- The sprite will face its Object's angle rather than the camera.
RF_NOSPLATBILLBOARD = 1 << 6

-- The Object will use angle sprites instead of a single rotated sprite.
RF_NOSPLATROLLANGLE = 1 << 7

-- The sprite will always be drawn at full brightness.
RF_FULLBRIGHT = 1 << 8

-- The sprite will be drawn completely dark.
RF_FULLDARK = 1 << 9

-- The sprite will be drawn between full brightness and sector brightness.
RF_SEMIBRIGHT = (RF_FULLBRIGHT | RF_FULLDARK)

-- The sprite will not be affected by colormaps.
RF_NOCOLORMAPS = 1 << 10

-- The sprite will be drawn in a vertical plane, also known as a papersprite.
RF_PAPERSPRITE = 1 << 11

-- The sprite will be drawn in a horizontal plane, also known as a floor sprite, or a "splat".
RF_FLOORSPRITE = 1 << 12

-- The sprite will be skewed and stretched onto the floor as if it was a projected shadow.
RF_SHADOWDRAW = 1 << 13

-- The sprite will be scaled and made transparent as if it was a projected shadow.
RF_SHADOWEFFECTS = 1 << 14

-- The sprite will fully behave as a projected shadow.
RF_DROPSHADOW = (RF_SHADOWDRAW | RF_SHADOWEFFECTS | RF_FULLDARK)


--//


-- No blending.
AST_COPY = 0

-- Default translucency effect.
AST_TRANSLUCENT = 1

-- Additive blend mode.
AST_ADD = 2

-- Subtractive blend mode.
AST_SUBTRACT = 3

-- Difference blend mode.
AST_REVERSESUBTRACT = 4

-- Multiply blend mode.
AST_MODULATE = 5

-- Overlay blend mode.
AST_OVERLAY = 6


--//


-- An Object can only play one sound with this flag at a time.
-- - If a second one is played, the one already playing is interrupted and the new one is played instead (cannot be combined with any other flags).
SF_TOTALLYSINGLE = 1 << 0

-- The sound can only be played once at a time on any sound channel, no matter which Object started the sound.
-- - Attempting to play the sound more than once at the same time has no effect and the one already playing is not interrupted.
-- - This overrides the `Singular` parameter.
SF_NOMULTIPLESOUND = 1 << 1

-- The volume of the sound depends on how close the player is to an "outside area" (any sector with F_SKY1 as its ceiling flat).
-- - The closer the player is, the louder the volume. (This is used by the rain sound, for example.)
SF_OUTSIDESOUND = 1 << 2

-- The sound can be heard from four times the regular distance.
SF_X4AWAYSOUND = 1 << 3

-- The sound can be heard from eight times the regular distance.
SF_X8AWAYSOUND = 1 << 4

-- The sound does not interrupt other sounds; if it is attempted to be played in a situation where it would be interrupting another sound, it is not played.
-- - This does not work in combination with the `Singular` parameter, use the `SF_NOMULTIPLESOUND` flag instead. 
SF_NOINTERRUPT = 1 << 5

-- The sound can be heard from two times the regular distance.
SF_X2AWAYSOUND = 1 << 6


--//


-- Default colormap.
TC_DEFAULT = -1

-- Boss flash colormap.
TC_BOSS = -2

-- Metal Sonic boss flash colormap.
TC_METALSONIC = -3

-- All-white flash colormap (used by Brak Eggman).
TC_ALLWHITE = -4

-- Remaps all colors to a skincolor range.
TC_RAINBOW = -5

-- Remaps all colors to a single color index.
TC_BLINK = -6

-- For Metal Sonic's dashmode.
TC_DASHMODE = -7


--//


-- No direction.
DI_NODIR = -1

-- East.
DI_EAST = 0

-- North east.
DI_NORTHEAST = 1

-- North.
DI_NORTH = 2

-- North west.
DI_NORTHWEST = 3

-- West.
DI_WEST = 4

-- South west.
DI_SOUTHWEST = 5

-- South.
DI_SOUTH = 6

-- South east.
DI_SOUTHEAST = 7

-- Total number of directions.
NUMDIRS = 8


--//


-- Damage dealt by liquids.
DMG_WATER = 1

-- Damage dealt by fire objects and sectors.
DMG_FIRE = 2

-- Damage dealt by electricity.
DMG_ELECTRIC = 3

-- Damage dealt by spikes.
DMG_SPIKE = 4

-- Damage dealt by the Armageddon shield.
DMG_NUKE = 5

-- *Flag* - Whether the source is able to damage itself or their team.
DMG_CANHURTSELF = 0x40


-- Instant Death.
DMG_INSTAKILL = 0x80

-- Death dealt by drowning (in liquids).
DMG_DROWNED = 0x81

-- Death dealt by drowning (in space).
DMG_SPACEDROWN = 0x82

-- Death dealt by pits.
DMG_DEATHPIT = 0x83

-- Death dealt by being crushed.
DMG_CRUSHED = 0x84

-- Death dealt to spectators (Other damage types do not kill spectators).
DMG_SPECTATOR = 0x85

-- *Flag* - Whether this damage type is a death type.
DMG_DEATHMASK = 0x80


--//


-- The character can turn Super in Single Player/Coop after collecting all Chaos Emeralds.
-- - Used by Sonic, Knuckles and Metal Sonic in unmodified SRB2.
SF_SUPER = 1 << 0

-- The character's Super form will use standing, walking or running animations, instead of the normal spinning animation, when jumping, spindashing or otherwise rolling on the ground.
-- - This replicates the old Super Sonic animations in versions of SRB2 before v1.09.4.
SF_NOSUPERSPIN = 1 << 1

-- The character does not create dust particles when charging a spindash.
SF_NOSPINDASHDUST = 1 << 2

-- The character's sprites will be rendered at a different scale, which is set by the highresscale parameter.
-- - This allows you to use high-resolution (or low-resolution) sprites for your character.
SF_HIRES = 1 << 3

-- The character does not display skid particles and play the skidding sound when braking or making sharp turns.
SF_NOSKID = 1 << 4

-- The character's animations will not be automatically adjusted according to the player's speed, for example when Sonic's walking animation speeds up as he walks faster.
-- - The animations will use the default state durations as set in the player's states.
SF_NOSPEEDADJUST = 1 << 5

-- Allows the character to run on top of water and goop FOFs.
SF_RUNONWATER = 1 << 6

-- The character will not curl up into a ball when jumping.
-- - They will use a falling state when going down, and their height will not be reduced.
-- - If the character does not have dedicated jump frames, then they will also use spring frames instead of rolling frames.
-- - Used by Fang and Amy in unmodified SRB2.
SF_NOJUMPSPIN = 1 << 7

-- This character cannot damage enemies by jumping in them from any angle.
-- - Used by Fang and Amy in unmodified SRB2.
SF_NOJUMPDAMAGE = 1 << 8

-- This character will always be able to damage enemies by landing on them, regardless of their vulnerability.
SF_STOMPDAMAGE = 1 << 9

-- This character cannot damage enemies from any angle, but they can still land on enemies.
-- - This is equivalent to combining `SF_NOJUMPDAMAGE` and `SF_STOMPDAMAGE`.
SF_MARIODAMAGE = (SF_NOJUMPDAMAGE | SF_STOMPDAMAGE)

-- This character is considered a "robot".
-- - While dying, they will spawn explosion effects.
-- - While underwater or in space, this character will get unique drowning numbers, sound effects, and electric short-out particle effects.
-- - Used by Metal Sonic in unmodified SRB2.
SF_MACHINE = 1 << 10

-- This character will have the "Boost Mode" ability, giving them increased top speed and jump height the longer they run without losing speed.
-- - When paired with SF_MACHINE, Boost Mode will also be able to damage enemies and destroy spikes.
-- - Used by Metal Sonic in unmodified SRB2.
SF_DASHMODE = 1 << 11

-- This character's edge teeter animation will play faster than usual.
-- - Used by Fang in unmodified SRB2. 
SF_FASTEDGE = 1 << 12

-- This character's primary ability can be used more than once per jump.
-- - Used by Metal Sonic in unmodified SRB2. 
SF_MULTIABILITY = 1 << 13

-- The character's NiGHTS Mode sprites will not use automatic sprite rotation.
SF_NONIGHTSROTATION = 1 << 14

-- The character's NiGHTS Mode sprites will not use super color gradients.
-- - The skin must also have `SF_SUPER` for this flag to work. 
SF_NONIGHTSSUPER = 1 << 15

-- The character will not use super sprites while super.
SF_NOSUPERSPRITES = 1 << 16

-- The character will not receive a jump boost while super.
-- - Used by Knuckles in unmodified SRB2.
SF_NOSUPERJUMPBOOST = 1 << 17

-- The character can naturally bust strong walls on contact.
SF_CANBUSTWALLS = 1 << 18

-- The character will not be able to use shield abilities.
-- - This will also prevent the Attraction Shield's target indicator from appearing.
SF_NOSHIELDABILITY = 1 << 19


--//


-- TODO: character abilities


--//


-- TODO: player states


--//


-- `sfx_spin` replacement sound.
SKSSPIN = 0

-- `sfx_putput` replacement sound.
SKSPUTPUT = 1

-- `sfx_pudpud` replacement sound.
SKSPUDPUD = 2

-- `sfx_altow1` replacement sound.
SKSPLPAN1 = 3

-- `sfx_altow2` replacement sound.
SKSPLPAN2 = 4

-- `sfx_altow3` replacement sound.
SKSPLPAN3 = 5

-- `sfx_altow4` replacement sound.
SKSPLPAN4 = 6

-- `sfx_altdi1` replacement sound.
SKSPLDET1 = 7

-- `sfx_altdi2` replacement sound.
SKSPLDET2 = 8

-- `sfx_altdi3` replacement sound.
SKSPLDET3 = 9

-- `sfx_altdi4` replacement sound.
SKSPLDET4 = 10

-- `sfx_victr1` replacement sound.
SKSPLVCT1 = 11

-- `sfx_victr2` replacement sound.
SKSPLVCT2 = 12

-- `sfx_victr3` replacement sound.
SKSPLVCT3 = 13

-- `sfx_victr4` replacement sound.
SKSPLVCT4 = 14

-- `sfx_thok` replacement sound.
SKSTHOK = 15

-- `sfx_spndsh` replacement sound.
SKSSPNDSH = 16

-- `sfx_zoom` replacement sound.
SKSZOOM = 17

-- `sfx_skid` replacement sound.
SKSSKID = 18

-- `sfx_gasp` replacement sound.
SKSGASP = 19

-- `sfx_jump` replacement sound.
SKSJUMP = 20


--//


-- TODO: internal player flags


--//


-- TODO: player animations


--//


-- TODO: shield types


--//


-- TODO: carry types


--//


-- Invincibility timer.
pw_invulnerability = 0

-- Super Sneakers timer.
pw_sneakers = 1

-- Temporary invincibility timer. (as if the player has just been hit)
pw_flashing = 2

-- The shield(s) that the player currently has.
pw_shield = 3

-- What is the player currently being carried by?
pw_carry = 4

-- The amount of time left in the player's flight timer.
pw_tailsfly = 5

-- The player's current drowning timer.
pw_underwater = 6

-- The player's current space countdown timer. 
pw_spacetime = 7

-- How long the extra life music lasts?
pw_extralife = 8

-- Time for how recently this player pushed something.
pw_pushing = 9

-- Timer to prevent Springs from activating multiple times.
pw_justsprung = 10

-- How long is left to disable autobrake?
pw_noautobrake = 11

-- Checks whether the player is Super.
-- * The player must still meet the criteria for becoming Super.
-- * Note: This is used internally as a timer for how long the player has been super, in tics.
pw_super = 12

-- The player's "Gravity Boots" duration.
pw_gravityboots = 13

-- The player's current flags of multiplayer Chaos Emeralds.
pw_emeralds = 21

-- The current Super Paraloop power-up timer. (NiGHTs only) 
pw_nights_superloop = 22

-- The current Nightopian Helper power-up timer. (NiGHTs only)
pw_nights_helper = 23

-- The current Link Freeze power-up timer. (NiGHTs only)
pw_nights_linkfreeze = 24

-- Takes control away from the player.
-- * Adding `32768` to this value will allow the player to jump while affected. 
pw_nocontrol = 25

-- Sets the player's color to this value, and sets `<player_t>.mo.colorized` to `true`.
pw_dye = 26

-- Checks whether the player launched off a slope this tic, and what type of slope they've launched off of.
pw_justlaunched = 27

-- While non-zero, prevents the player from latching to `CR_GENERIC` objects.
-- * Adding `32768` to this value will additionally prevent the player from latching to any object except for NiGHTs carrying objects.
-- * This does not prevent new attachments due to `A_MixUp` teleportation.
pw_ignorelatch = 28


--//


-- Green Emerald.
EMERALD1 = 1 << 0

-- Purple Emerald.
EMERALD2 = 1 << 1

-- Blue Emerald.
EMERALD3 = 1 << 2

-- Light Blue Emerald.
EMERALD4 = 1 << 3

-- Orange Emerald.
EMERALD5 = 1 << 4

-- Red Emerald.
EMERALD6 = 1 << 5

-- Gray/Silver Emerald.
EMERALD7 = 1 << 6


--//


-- Weapon slot buttons.
-- * When checking (`<player_t>.cmd.buttons & BT_WEAPONMASK`), returns the value of the weapon slot button pressed, from 1 to 7.
BT_WEAPONMASK = 15

-- Next Weapon.
BT_WEAPONNEXT = 1 << 4

-- Previous Weapon.
BT_WEAPONPREV = 1 << 5

-- Ring Toss.
BT_ATTACK = 1 << 6

-- Spin.
BT_SPIN = 1 << 7

-- Rotate the camera. (Left)
BT_CAMLEFT = 1 << 8

-- Rotate the camera. (Right)
BT_CAMRIGHT = 1 << 9

-- Tossflag.
BT_TOSSFLAG = 1 << 10

-- Jump.
BT_JUMP = 1 << 11

-- Ring Toss Normal.
BT_FIRENORMAL = 1 << 12

-- Custom Action 1.
BT_CUSTOM1 = 1 << 13

-- Customm Action 2.
BT_CUSTOM2 = 1 << 14

-- Custom Action 3.
BT_CUSTOM3 = 1 << 15


--//


-- TODO: mouse button flags


--//


-- TODO: A lot more...


--//


-- TODO: Jingle types.


--//


-- The console variable's value is saved to `config.cfg` when changed.
-- * This currently does not really work for custom Lua-defined console variables, because they are erased from `config.cfg` if they are not defined when the game is launched.
CV_SAVE = 1 << 0

-- A function is called when the variable is changed.
CV_CALL = 1 << 1

-- The variable is synchronized for everyone in netgames; only the server or admin can modify it.
CV_NETVAR = 1 << 2

-- If a function is called when the variable is changed (`CV_CALL`), the function is not called when the variable is first registered. 
CV_NOINIT = 1 << 3

-- The variable takes floating-point values, so numbers such as `0.5` and `0.45` are accepted.
-- * These are then converted to a fixed-point integer value (`0.5` becomes `FRACUNIT/2`).
CV_FLOAT = 1 << 4

-- The variable cannot be changed in netgames.
CV_NOTINNET = 1 << 5

-- This flag is set when the variable is modified.
CV_MODIFIED = 1 << 6

-- The console displays a message when the variable is modified.
CV_SHOWMODIF = 1 << 7

-- The console displays a message when the variable is modified, but only once.
CV_SHOWMODIFONETIME = 1 << 8

-- The variable is not shown in the list generated by the `help` console command.
CV_NOSHOWHELP = 1 << 9

-- The variable is not accessible by the console.
CV_HIDDEN = 1 << 10

-- The variable is a cheat, and can be reset to its default value by using `cheats off` in the console. 
CV_CHEAT = 1 << 11

-- The variable cannot be set from Lua.
CV_NOLUA = 1 << 12


--//


-- The command is only available to server hosts or administrators.
COM_ADMIN = 1 << 0

-- The command is only available in Splitscreen mode.
COM_SPLITSCREEN = 1 << 1

-- The command is not synchronised over the network, and should only affect the client who executed the command.
COM_LOCAL = 1 << 2


--//


-- TODO: Video drawing flags


--//


-- TODO: HUD items


--//


-- The player was kicked intentionally by the server or an admin.
KR_KICK = 1

-- The player broke the ping limit.
KR_PINGLIMIT = 2

-- The player has reached the synch failure.
KR_SYNCH = 3

-- The player reached the connection timeout.
KR_TIMEOUT = 4

-- The player was banned from the server.
KR_BAN = 5

-- The player quit the game manually.
KR_LEAVE = 6


--//


-- None, game load.
GS_NULL = 0

-- Gameplay.
GS_LEVEL = 1

-- Intermission screen.
GS_INTERMISSION = 2

-- Continue screen.
GS_CONTINUING = 3

-- Title screen.
GS_TITLESCREEN = 4

-- Credits sequence.
GS_CREDITS = 5

-- Singleplayer/Marathon Run evaluation screen.
GS_EVALUATION = 6

-- Game End screen.
GS_GAMEEND = 7

-- Intro cutscene.
GS_INTRO = 8

-- Ending animation.
GS_ENDING = 9

-- Cutscene sequence.
GS_CUTSCENE = 10

-- Dedicated Server.
GS_DEDICATEDSERVER = 11

-- Waiting for players in multiplayer.
GS_MULTIPLAYER = 12


--//


-- TODO: Game controls (oh god)


--//


-- TODO: Joystick axes (oh sweet neptune)


--//


FU = FRACUNIT
V_50TRANS = V_TRANSLUCENT
CV_HIDEN = CV_HIDDEN


--//