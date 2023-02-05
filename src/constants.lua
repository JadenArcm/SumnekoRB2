---@meta _


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
-- * Values for these measurements are interpreted as fixed-point numbers with `FRACUNIT` as the base unit.
-- * `FRACUNIT` represents one unit/pixel, `2*FRACUNIT` represents 2.0 units/pixels, `FRACUNIT/2` represents 0.5 units/pixels, and so on. 
FRACUNIT = 1 << 16

-- The number of bits to shift up to convert integers to fixed-point numbers in `FRACUNIT` scale, or the number of bits to shift down for vice versa.
-- * This constant is used to define the value of `FRACUNIT` itself.
-- * Modifying the value of `FRACBITS` in the source code would also modify `FRACUNIT`'s value.
-- * **`NOTE:`** Bit-shifting an integer by `FRACBITS` in either direction is equivalent to multiplication or division by `FRACUNIT`. 
FRACBITS = 16

-- The number of tics in a second. 
-- * Anything multiplied by this value is a measurement in seconds.
TICRATE = 35

-- The music playback rate, or the number of milliseconds in a second.
-- * Anything multiplied by this value is a measurement in seconds (in the context of music playback).
-- * This is intended for use with SOC parameters and Lua functions that change or set positions within music tracks and/or applying fade in/out effects to them. 
MUSICRATE = 1000

-- The maximum distance that rings can be from players with an Attraction Shield to be attracted to them.
-- * This is also used by the homing attack character ability as the maximum distance an enemy, spring or monitor can be to able to home in on it.
RING_DIST = 512 * FRACUNIT

-- The speed at which pushable Objects with `MF2_SLIDEPUSH` will be pushed.
PUSHACCEL = 2 * FRACUNIT

-- The executable's Mod ID.
-- * In SRB2 v2.2, `18` is the default value for this constant. 
MODID = 18

-- The executable's Mod Version.
-- * In SRB2 v2.2.10, `51` is the default value for this constant. 
MODVERSION = 51

-- The SRB2 version number the executable is based on.
-- * In SRB2 v2.2, `220` is the default value for this constant.
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
-- * This is corrected to the appropriate height in `P_SpawnMobj` for newly spawned Objects. 
ONFLOORZ = INT32_MIN

-- Used by the MapThing spawning code to signify that the Thing's Z position is on the sector's ceiling.
-- * This is corrected to the appropriate height in `P_SpawnMobj` for newly spawned Objects.
ONCEILINGZ = INT32_MAX

-- Used by `<player_t>.lives` to indicate that this player has infinite lives.
INFLIVES = 0x7F

-- The maximum magnitude for values returned by `input.joyAxis` and `input.joyAxis2`.
JOYAXISRANGE = 1023


--//


-- When an Object with this flag is touched by the player, the function `P_TouchSpecialThing` is called to determine what should happen with the Object and/or the player.
-- * Objects that interact with the player in some way upon being touched, such as enemies, hazards or collectible items, should have this flag.
-- * Objects with `MF_ENEMY`, `MF_BOSS` and/or `MF_FIRE` in particular require this flag to be able to damage the player on touch or be damaged by the player on touch.
-- * If there is no existing behavior set, touching the Object will by default kill the Object (sending it to its `DeathState`) and play its `DeathSound`.
-- * Lua is capable of modifying the effect of this flag for particular Object types, using the `TouchSpecial` Lua hook. 
MF_SPECIAL = 1 << 0

-- This makes the Object solid, and it will act as such to the player.
MF_SOLID = 1 << 1

-- The Object can be damaged.
-- * Combined with `MF_SOLID`, this makes it vulnerable to missiles, but not normal attacks. 
MF_SHOOTABLE = 1 << 2

-- Removes the Object from the sector links, making it invisible. 
-- * Don't change this flag during runtime. To make something invisible during the game, use `MF2_DONTDRAW` or set the sprite to `SPR_NULL`.
MF_NOSECTOR = 1 << 3

-- Removes the Object from the blockmap, making it intangible.
-- * Just like `MF_NOSECTOR` though, don't change this flag during runtime; use `MF_NOCLIP` instead.
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
-- * The Object's `SeeSound` is constantly played, and `SpawnHealth` sets the interval between each time `SeeSound` is played. 
MF_AMBIENT = 1 << 10

-- The Object will slide along walls when colliding with them.
MF_SLIDEME = 1 << 11

-- The Object is intangible and will go through walls and other Objects.
-- * When `noclip` is turned on, the player will be given this flag.
MF_NOCLIP = 1 << 12

-- The Object will automatically floats up or down to the height of its target, unless `MF2_INFLOAT` or `MF2_SKULLFLY` are set. 
-- * This is most commonly used by flying or underwater enemies and bosses that need to chase the player vertically.
-- * `MF_NOGRAVITY` has to be checked for this to work as intended.
-- * The Object will move up/down at a fixed speed of `4` fracunits/tic.
-- * **`NOTE:`** The Egg Mobile's floating behavior and speed works differently to that of other Objects that use this flag.
MF_FLOAT = 1 << 13

-- The Object is a monitor icon and will float upwards upon being spawned.
-- * `Damage` sets how high the Object will rise before disappearing, and `Speed` sets how fast it will rise.
MF_BOXICON = 1 << 14

-- The Object is a projectile of some sort.
MF_MISSILE = 1 << 15

-- The Object is a spring and will be treated as such when touched.
MF_SPRING = 1 << 16

-- The Object will bounce off walls and other Objects, playing its `ActiveSound` whenever this happens.
MF_BOUNCE = 1 << 17

-- The Object is a monitor; it will be popped when hit by a normal attack from the player and award a power.
-- * If the Object falls on a player, the player will be crushed and die.
-- * In multiplayer, a player is awarded points if they manage to pop the monitor Object before it falls on another player. 
MF_MONITOR = 1 << 18

-- The Object has no AI. 
-- * Use this to save CPU power for static scenery Objects.
-- * Objects with this flag will not animate and cannot use any actions.
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
-- * This effect will override any extra effects on touch from flags such as `MF_SPECIAL`.
MF_PAIN = 1 << 24

-- The Object will stick to any surface or solid Object it touches.
MF_STICKY = 1 << 25

-- Used by NiGHTS power-up items.
-- * When the Object is paralooped, it goes into its `SeeState` and adds the `MF_SPECIAL` flag, allowing the player to collect it.
MF_NIGHTSITEM = 1 << 26

-- The Object is partially intangible, it will pass through other Objects, but not walls.
-- * This is used for the flickies that are released from destroyed enemies, for example.
-- * Objects with the `MF_MISSILE` flag use this for an extra purpose: When a missile explodes, this flag is set to indicate that is has exploded and prevent it from exploding again.
MF_NOCLIPTHING = 1 << 27

-- Used by grenade-like projectiles, such as the Grenade Ring, to be used with `MF_MISSILE`.
-- * Instead of exploding on collision with the floor, it will bounce off it instead. `ActiveSound` is played for every collision.
MF_GRENADEBOUNCE = 1 << 28

-- When an Object is spawned and its `SpawnState` has an action, the action will normally not be performed; if this flag is set, the action will be performed.
-- * **`NOTE:`** Some actions rely on information that is not yet available when the Object is still being spawned, such as the Object's target or tracer.
-- * These actions may crash the game when performed on spawn, so use caution with this flag.
MF_RUNSPAWNFUNC = 1 << 29


--//


-- This flag is automatically set for the NiGHTS Axis, Axis Transfer and Axis Transfer Line.
-- * It is used internally to make it more convenient to check if an Object is one of those three.
MF2_AXIS = 1 << 0

-- This flag is given to Objects if they are in 2D mode or are supposed to behave as such.
-- * In general, this prevents movement along the y-axis, with exceptions such as being propelled by springs.
-- * Can be given to/removed from players through `Linedef Type 432`.
MF2_TWOD = 1 << 1

-- The Object does not respawn.
-- * Given to any rings, ammo and panels dropped by players who have been hit.
-- * This does not do anything for most Objects otherwise. 
MF2_DONTRESPAWN = 1 << 2

-- The Object does not generate a visible sprite.
-- * Frequently used for sprite flickering effects, such as when a player is recovering from being hit, usually by turning on and off this flag every other tic.
MF2_DONTDRAW = 1 << 3

-- This flag is given to thrown Automatic Rings to identify them as such.
MF2_AUTOMATIC = 1 << 4

-- This flag is given to thrown Rail Rings to identify them as such.
-- * This does not in fact allow Objects to instantanously fly across the map as with Rail Rings themselves, unless when fired by a player specifically.
-- * For players that have just been hit by an Object with this flag, they will have a greatly increased knockback speed (45 fracunits/tic); combined with `MF2_EXPLOSION` however, this is slightly decreased to 38 fracunits/tic.
-- * Overridden by the knockback effect of `MF2_SCATTER`.
MF2_RAILRING = 1 << 5

-- This flag is given to thrown Bounce Rings to identify them as such.
MF2_BOUNCERING = 1 << 6

-- This flag is given to thrown Explosion Rings and Grenade Rings to identify them as such.
-- * For players that have just been hit by an Object with this flag, they will have a greatly increased knockback speed (30 fracunits/tic); combined with `MF2_RAILRING` this is further increased to 38 fracunits/tic.
-- * Overridden by the knockback effect of `MF2_SCATTER`.
MF2_EXPLOSION = 1 << 7

-- This flag is given to thrown Scatter Rings to identify them as such.
-- * For players that have just been hit by an Object with this flag, their knockback speed will depend on how far away the Object has moved from the Object that fired it if one exists.
-- * Players very close to the firer will receive a massive knockback speed up to 128 fracunits/tic maximum, players far away meanwhile will receive a much smaller knockback (minimum is 4 fracunits/tic, the normal knockback speed).
MF2_SCATTER = 1 << 8

-- This flag is given to projectiles when the player who threw them has since died and respawned.
MF2_BEYONDTHEGRAVE = 1 << 9

-- The Object slides after being pushed.
-- * `MF_SOLID` and `MF_PUSHABLE` have to be checked for this to work.
-- * The maximum speed at which an Object with this flag can slide is set by its Speed value.
-- * Also used by flung emeralds in Match/CTF to prevent them from being collected if they are moving upwards.
MF2_SLIDEPUSH = 1 << 10

-- If the Object is falling, it will stop all horizontal movement and drop straight down.
-- * This flag is given to pushables whose MapThings have both the `Special` and `Ambush` flag checked.
MF2_CLASSICPUSH = 1 << 11

-- Inverts the conditions for this Object to be able to be targeted by `A_LookForEnemies`, for mechanics such as Fang's pop gun.
-- * Objects with the `MF_SHOOTABLE` and at least `MF_ENEMY`, `MF_BOSS`, and/or `MF_MONITOR` normally are the only targets, but this flag will disallow those objects & allow others.
MF2_INVERTAIMABLE = 1 << 12

-- If an Object has the `MF_FLOAT` flag set, it automatically floats to the height of its target.
-- * If it shouldn't do that, this flag is used.
-- * This flag is automatically given and removed during use of `A_Chase`-style actions, when the actor Object's movement is blocked and the actor has to concentrate on adjusting its height to get past a blocking wall.
MF2_INFLOAT = 1 << 13

-- Exploded Explosion Rings and Grenade Rings are given this flag to signify that they have already exploded.
-- * Missile Objects with this flag will not play `DeathSound` when exploding.
MF2_DEBRIS = 1 << 14

-- This flag is used for the item attraction in NiGHTS.
-- * Spheres, rings and coins that are inside the player's attraction radius are given this flag.
MF2_NIGHTSPULL = 1 << 15

-- The Object has just attacked, and cannot attack again immediately.
-- * Objects using actions such as `A_Chase`, `A_FaceStabChase`, `A_SkimChase`, `A_Boss1Chase` or `A_BrakChase` add this flag when they first attack.
-- * When they try to attack again, this flag is removed instead of attacking, and then the process repeats again once they are ready to attack again.
-- * CTF flags have this flag set when they are outside their respective bases.
MF2_JUSTATTACKED = 1 << 16

-- This flag is used signify that an Object is currently firing some type of projectile.
-- * Used by the Turret and the Flame Jets.
-- * `A_TurretFire` and `A_SuperTurretFire` add this flag to the Object, `A_TurretStop` removes it, while `A_ToggleFlameJet` can do either depending on whether the flag is already set or not.
MF2_FIRING = 1 << 17

-- Missile Objects with this flag will be able to make even Super players be flung back when collided with.
-- * However, it will not make them lose rings as with normal players.
-- * Objects with `MF2_FIRING` and this flag will pass on this flag to the missiles they fire.
MF2_SUPERFIRE = 1 << 18

-- The Object's sprite is automatically drawn with `tr_trans80` translucency and full brightness, overriding the current state's settings.
-- * Set by the Force Shield when it has only one health point left.
-- * Also used in Single Player to make the player translucent when the camera is too close.
MF2_SHADOW = 1 << 19

-- This flag is given to Strong Random Monitors to identify them as such.
-- * This flag is also given to Objects with `MF_NIGHTSITEM` whose map Things have the Special flag checked, to mark that the item can only be activated during bonus time.
MF2_STRONGBOX = 1 << 20

-- This flag forces Objects to have permanently flipped gravity, regardless of the current gravity in the sector (unless the Object is a player).
-- * For players however, this can be combined with the gravity boots powerup to cancel out the flipped gravity temporarily.
-- * Can be given to/removed from players through `Linedef Type 433`, and will be given to any Object whose MapThings have the Flip flag checked.
MF2_OBJECTFLIP = 1 << 21

-- This flag is set by the action `A_SkullAttack` to signify that the Object is currently flying at the player.
-- * If the Object is the Egg Mobile or a custom Object with `MF_BOSS`, ghost trails of the Object will be spawned while this flag is set.
MF2_SKULLFLY = 1 << 22

-- This flag is used to signify that a boss has been hit by the player.
-- * Among other things, it makes the boss's outlines flash white and makes it temporarily immune to the player.
-- * The Crawla Commander also uses this in a similar fashion.
MF2_FRET = 1 << 23

-- This flag is given to bosses whose MapThings have the Special flag checked.
-- * If the flag is set and `A_BossDeath` is called, no Egg Capsule will appear and the level will end instead.
-- * Also given to spinning maces when Special is checked to make them silent.
MF2_BOSSNOTRAP = 1 << 24

-- This flag is given to bosses who are fleeing to control their movement.
MF2_BOSSFLEE = 1 << 25

-- This flag is given to bosses who have died but are not necessarily fleeing.
-- * While SRB2 itself never makes use of this flag, it can be used in Lua scripts to identify bosses that have been defeated.
MF2_BOSSDEAD = 1 << 26

-- This flag is used for various purposes, usually to signify an alternate type of behavior for an Object.
-- * Its effect depends on the Object's other flags and the actions being used.
-- * Checking the Ambush flag on a Thing will usually activate this flag for the corresponding Object.
MF2_AMBUSH = 1 << 27

-- This Object will be drawn immediately before or after its tracer is drawn, depending on its dispoffset and position, essentially creating multi-sprite Objects that are drawn as a single Object.
-- * This is notably used for character followitems, such as Tails' tail overlay and Metal Sonic's jet fume.
MF2_LINKDRAW = 1 << 28

-- This Object's thinker calls `P_AddShield` and `P_ShieldLook`.
-- * Used for Shield overlay objects.
-- * For this flag to work, the `MF_SCENERY` flag also needs applied.
MF2_SHIELD = 1 << 29

-- The Object will be drawn on a horizontal plane, also called a floor sprite, or a "splat".
MF2_SPLAT = 1 << 30


--//


-- This flag is given when the Object's "ground" is a solid floor, whether it is the sector's main floor or the top of an FOF/PolyObject.
-- * If the Object's ground is instead an Object with `MF_SOLID`, this flag will not be given. 
MFE_ONGROUND = 1 << 0

-- This flag is given to mark when the Object has just landed on the floor from falling down (or on the ceiling when in flipped gravity).
-- * The flag will subsequently be removed on the next tic afterwards.
MFE_JUSTHITFLOOR = 1 << 1

-- The Object is "touching" water. 
-- * For example: The Object's bottom is below the surface of a water FOF, but the Object's top is still above.
MFE_TOUCHWATER = 1 << 2

-- The Object is "underwater". 
-- * For example: The Object is submerged at least half its height into a water FOF.
-- * For players, this causes the underwater timer to activate, which may result in drowning unless the player escapes or is wearing an Elemental Shield; however, it allows characters with the Swim ability (`CA_SWIM`) to use their ability while this flag is set.
MFE_UNDERWATER = 1 << 3

-- This flag is given to mark when a player has just "stepped" down from a floor to another floor under `24*FRACUNIT`'s below it (the flag is not given for non-player Objects).
-- * If the `Non-Ramp Sector` sector special is applied to the sector floor the player is standing in, the player will instead fall down and this flag will not be given. 
MFE_JUSTSTEPPEDDOWN = 1 << 4

-- This flag is given to mark when the Object's sprites/physics should be vertically flipped.
-- * Not to be confused with `MF2_OBJECTFLIP`, which forces this flag on constantly for permanent reverse gravity.
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
-- * This is rather used by certain Thing types for turning on extra features or alternative behavior. 
MTF_EXTRA = 1 << 0

-- This flag inverts the Thing's gravity direction, and also inverts whether the Thing's Z position is measured from the floor or ceiling.
-- * For instance, power-up monitors will be flipped upside-down and laid on the ceiling instead of the floor.
-- * Things that hang from the ceiling by default (e.g., chains) will be flipped upside-down but laid on the floor instead of the ceiling. 
--
-- In most cases, this flag will also give the corresponding Object(s) the secondary Object flag `MF2_OBJECTFLIP` when checked. Exceptions to this include the following Thing types:
-- * **NiGHTS Bumper**.
-- * **Hoops** (including customizable hoops).
-- * **All Circles of Rings and/or Blue Spheres**.
MTF_OBJECTFLIP = 1 << 1

-- This is a special flag that has no general effect.
-- This is rather used by certain Thing types for turning on extra features or alternative behavior. 
MTF_OBJECTSPECIAL = 1 << 2

-- This is a special flag that has no general effect.
-- * This is rather used by certain Thing types for turning on extra features or alternative behavior.
--
-- In most cases, this flag will also give the corresponding Object(s) the Object flag `MF2_AMBUSH` when checked. Exceptions to this include the following Thing types:
-- * **Axis, Axis Transfer** and **Axis Transfer Line**.
-- * **NiGHTS Bumper**.
-- * **Star Post**.
-- * All **monitors** that cannot turn into **WRMs**.
-- * **Pushable** Objects if `MTF_OBJECTSPECIAL` is also set.	
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
-- * If a second one is played, the one already playing is interrupted and the new one is played instead (cannot be combined with any other flags).
SF_TOTALLYSINGLE = 1 << 0

-- The sound can only be played once at a time on any sound channel, no matter which Object started the sound.
-- * Attempting to play the sound more than once at the same time has no effect and the one already playing is not interrupted.
-- * This overrides the `Singular` parameter.
SF_NOMULTIPLESOUND = 1 << 1

-- The volume of the sound depends on how close the player is to an "outside area" (any sector with F_SKY1 as its ceiling flat).
-- * The closer the player is, the louder the volume. (This is used by the rain sound, for example.)
SF_OUTSIDESOUND = 1 << 2

-- The sound can be heard from four times the regular distance.
SF_X4AWAYSOUND = 1 << 3

-- The sound can be heard from eight times the regular distance.
SF_X8AWAYSOUND = 1 << 4

-- The sound does not interrupt other sounds; if it is attempted to be played in a situation where it would be interrupting another sound, it is not played.
-- * This does not work in combination with the `Singular` parameter, use the `SF_NOMULTIPLESOUND` flag instead. 
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
-- * Used by Sonic, Knuckles and Metal Sonic in unmodified SRB2.
SF_SUPER = 1 << 0

-- The character's Super form will use standing, walking or running animations, instead of the normal spinning animation, when jumping, spindashing or otherwise rolling on the ground.
-- * This replicates the old Super Sonic animations in versions of SRB2 before v1.09.4.
SF_NOSUPERSPIN = 1 << 1

-- The character does not create dust particles when charging a spindash.
SF_NOSPINDASHDUST = 1 << 2

-- The character's sprites will be rendered at a different scale, which is set by the highresscale parameter.
-- * This allows you to use high-resolution (or low-resolution) sprites for your character.
SF_HIRES = 1 << 3

-- The character does not display skid particles and play the skidding sound when braking or making sharp turns.
SF_NOSKID = 1 << 4

-- The character's animations will not be automatically adjusted according to the player's speed, for example when Sonic's walking animation speeds up as he walks faster.
-- * The animations will use the default state durations as set in the player's states.
SF_NOSPEEDADJUST = 1 << 5

-- Allows the character to run on top of water and goop FOFs.
SF_RUNONWATER = 1 << 6

-- The character will not curl up into a ball when jumping.
-- * They will use a falling state when going down, and their height will not be reduced.
-- * If the character does not have dedicated jump frames, then they will also use spring frames instead of rolling frames.
-- * Used by Fang and Amy in unmodified SRB2.
SF_NOJUMPSPIN = 1 << 7

-- This character cannot damage enemies by jumping in them from any angle.
-- * Used by Fang and Amy in unmodified SRB2.
SF_NOJUMPDAMAGE = 1 << 8

-- This character will always be able to damage enemies by landing on them, regardless of their vulnerability.
SF_STOMPDAMAGE = 1 << 9

-- This character cannot damage enemies from any angle, but they can still land on enemies.
-- * This is equivalent to combining `SF_NOJUMPDAMAGE` and `SF_STOMPDAMAGE`.
SF_MARIODAMAGE = (SF_NOJUMPDAMAGE | SF_STOMPDAMAGE)

-- This character is considered a "robot".
-- * While dying, they will spawn explosion effects.
-- * While underwater or in space, this character will get unique drowning numbers, sound effects, and electric short-out particle effects.
-- * Used by Metal Sonic in unmodified SRB2.
SF_MACHINE = 1 << 10

-- This character will have the "Boost Mode" ability, giving them increased top speed and jump height the longer they run without losing speed.
-- * When paired with SF_MACHINE, Boost Mode will also be able to damage enemies and destroy spikes.
-- * Used by Metal Sonic in unmodified SRB2.
SF_DASHMODE = 1 << 11

-- This character's edge teeter animation will play faster than usual.
-- * Used by Fang in unmodified SRB2. 
SF_FASTEDGE = 1 << 12

-- This character's primary ability can be used more than once per jump.
-- * Used by Metal Sonic in unmodified SRB2. 
SF_MULTIABILITY = 1 << 13

-- The character's NiGHTS Mode sprites will not use automatic sprite rotation.
SF_NONIGHTSROTATION = 1 << 14

-- The character's NiGHTS Mode sprites will not use super color gradients.
-- * The skin must also have `SF_SUPER` for this flag to work. 
SF_NONIGHTSSUPER = 1 << 15

-- The character will not use super sprites while super.
SF_NOSUPERSPRITES = 1 << 16

-- The character will not receive a jump boost while super.
-- * Used by Knuckles in unmodified SRB2.
SF_NOSUPERJUMPBOOST = 1 << 17

-- The character can naturally bust strong walls on contact.
SF_CANBUSTWALLS = 1 << 18

-- The character will not be able to use shield abilities.
-- * This will also prevent the Attraction Shield's target indicator from appearing.
SF_NOSHIELDABILITY = 1 << 19


--//


-- The character will not have a special ability.
-- * This is the default setting when this parameter is not supplied.
CA_NONE = 0

-- Sonic's default ability, loosely based on Sonic's air dash attack from Sonic Adventure.
-- * Pressing jump a second time in mid-air will thrust the player forward at a speed determined by `actionspd`.
CA_THOK = 1

-- Tails' default ability, based on Tails' flight ability from Sonic 3.
-- * Pressing jump a second time in mid-air will make the player start flying in mid-air; repeatedly pressing jump afterwards will allow the player to fly further upwards.
-- * However, the player can only fly for a limited amount of time (determined by `TailsFlyTics` in the `MainCfg` block, which is 8 seconds by default); afterwards, they will slowly descend to the ground.
-- * The speed at which the player moves upwards or downwards when flying is determined by `actionspd`.
--
-- Other notes about flying:
-- * The player's top speed is reduced when flying, but acceleration is increased to compensate.
-- * The spin button can be used to descend more quickly if necessary.
-- * The player will be unable to inflict damage to enemies, except by flying into them from below.
--
-- The sprite name `FLY_` is used for the flying animation, `SWIM` is used when flying underwater, and `TIRE` is used when the character is tired and cannot fly anymore. 
-- * If the player does not have a `FLY_` sprite, `SPNG` is used instead.
CA_FLY = 2

-- Knuckles' default ability, based on Knuckles' abilities (gliding, climbing and rock smashing) from Sonic & Knuckles.
-- * Pressing jump a second time in mid-air will make the player start a glide; the player will accelerate forward from a starting speed determined by `actionspd` for as long as the jump button is held down.
-- * However, the player will gradually lose height while doing so.
-- * The player will be able to damage all enemies by aiming their glide into them while using this ability.
-- * When landing on the ground from gliding, the player will skid to a halt in the glide animation.
-- * When releasing a glide, the player will lose momentum and go into a landing animation.
-- * As of 2.2.5 and above, if the player is underwater, they will swim rather than glide.
-- * Swimming is slower than gliding but it provides more horizontal control.
--
-- If the player glides into a wall, they will latch onto it and can climb up, down or sideways on it, as well as climb over to adjacent walls.
-- * If the player is climbing, pressing jump will make them jump off and face away from the wall; pressing spin will make them jump off while still facing the wall.
-- * However, not all walls are climbable; some linedefs may have `Flag [6] / Not Climbable` checked, which prevents characters with this ability from climbing it.
-- * Any walls that are part of the sky will also not be climbable regardless of linedef flags.
--
-- Additionally, characters with this ability will be able to destroy all types of bustable FOFs on touch, rather than needing to spin into them.
-- * Bustable FOFs that have the `FF_KNUXONLY` flag set can be destroyed by characters with this ability.
--
-- The sprite name `GLID` is used for the gliding animation, `SWIM` is used for swimming, `CLNG` is used for attaching to a wall without moving, `CLMB` is used for the climbing animation, and `LAND` is used for the landing animation.
-- * If the player does not have a `GLID` or `SWIM` sprite, `FLY_` (or if not that, `SPNG`) is used instead.
-- * `SPIN` replaces `CLNG`, `CLMB`, and `LAND` if the player does not have one of those sprites.
CA_GLIDEANDCLIMB = 3

-- A weakened version of the speed thok ability, but with the addition of a homing attack feature similar to that in Sonic Adventure and beyond.
-- * If an enemy, spring or monitor is close enough to the player when triggering the ability, an arrow will appear over the target Object and the player will home in towards it until they touch/destroy it.
-- * If the character fails to reach the Object within 3 seconds, the homing attack is automatically canceled.
--
-- Unlike the thok, this ability does not keep the player in their spin state and instead switches to their `FALL` sprite unless they are performing a homing attack, again like in Sonic Adventure.
CA_HOMINGTHOK = 4

-- Similar to the flying ability, except this ability will work only underwater; attempting to use this ability outside of water will do nothing.
-- * Unlike `CA_FLY`, the ability can be used indefinitely while underwater.
CA_SWIM = 5

-- Pressing jump a second time in mid-air will make the player perform a second jump.
CA_DOUBLEJUMP = 6

-- Metal Sonic's default ability.
-- * Pressing jump a second time in mid-air and holding the button down will allow the player to hold their vertical position in mid-air continuously, but without spinning.
-- * While moving slowly, they will slowly fall over time.
CA_FLOAT = 7

-- Pressing jump a second time in mid-air and holding the button down will cause the player to fall downwards at a slower rate than normal, again without spinning.
-- * This is similar to E-102 Gamma's booster powerup from Sonic Adventure.
-- * The falling speed is fixed and cannot be adjusted with the `actionspd` parameter.
CA_SLOWFALL = 8

-- Pressing the jump button a second time in mid-air will push enemies and players within a radius of `(384*FRACUNIT)` around the player away; pressing the spin button in mid-air will pull them closer instead.
-- * The thrust of the pushing/pulling is determined by `actionspd`.
CA_TELEKINESIS = 9

-- Reverses the player's vertical momentum when pressing jump a second time in mid-air, thrusting them in the opposite direction instead.
CA_FALLSWITCH = 10

-- The player's jump strength increases with the player's running speed; the faster the player moves, the higher they can jump.
-- * `actionspd` is used as a multiplier for the jump boost given.
-- * Pressing the jump button in mid-air has no effect.
CA_JUMPBOOST = 11

-- Pressing jump a second time in mid-air will initiate an air drill, thrusting the player forward and upward.
-- * The player will fly upwards in an arc, eventually finishing the drill when the player starts falling down to the ground.
-- * Holding the spin button while drilling will cause the player to descend more quickly.
-- * `actionspd` is used as an angular speed for the drill; the higher the value is, the steeper and quicker the player's ascent will be.
CA_AIRDRILL = 12

-- A hybrid between the thok and the double jump, which thrusts the player both forward and upward.
-- * As with the regular thok, `actionspd` determines the horizontal thrust.
CA_JUMPTHOK = 13

-- Fang's default ability.
-- * Pressing jump a second time and holding it lets you bounce high off of enemies and on any hazards, similar to Scrooge McDuck's ability from DuckTales.
--
-- This uses the sprite name `BNCE` while in the air, and `LAND` during the pause when hitting the ground.
-- * If the player does not have a `BNCE` and `LAND` sprite, `FALL` and `SPIN` are used instead.
CA_BOUNCE = 14

-- Amy's default ability.
-- * Lets you roll up temporarily, allowing you to damage enemies, get a boost from springs, and break spikes, by timing a second jump press.
-- * This ability will also occur when you press jump and spin without a shield.
-- * Bustable FOFs that have the `FF_KNUXONLY` flag set can be destroyed by characters with this ability.
CA_TWINSPIN = 15


--//


-- The player will not have a secondary special ability.
CA2_NONE = 0

-- The default secondary ability, which is used by Sonic, Tails, Knuckles, and Metal Sonic.
-- * The player can use the Spin control to charge a spindash, or otherwise spin on the ground while moving.
-- * The player will also jump with the spinning animation (sprite prefix `ROLL`).
CA2_SPINDASH = 1

-- The secondary ability used by Fang.
-- * This character will get an arrow hovering over enemies and monitors.
-- * Pressing the Spin control while not moving will put the character in their firing animation and shoot their `revitem` toward the target.
CA2_GUNSLINGER = 2

-- The secondary ability used by Amy.
-- * This character will do a small hop and damage any enemies from the front when they press the Spin control on the ground.
-- * Bustable FOFs that have the `FF_KNUXONLY` flag set can be destroyed by characters with this ability.
--
-- The parameters `mindash` and `maxdash` control the vertical and horizontal thrust of the hop, respectively.
CA2_MELEE = 3


--//


-- The player is alive.
PST_LIVE = 0

-- The player is dead and waiting to respawn.
PST_DEAD = 1

-- The player just respawned, after being dead.
PST_REBORN = 2


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


-- Enables third-person camera flipping in reverse gravity.
-- * This is controlled by the console variable `flipcam`.
PF_FLIPCAM = 1 << 0

-- The player is using analog controls.
PF_ANALOGMODE = 1 << 1

-- The player has the Character Angle option set to "Movement".
PF_DIRECTIONCHAR = 1 << 2

-- The player has Automatic Braking enabled.
PF_AUTOBRAKE = 1 << 3

-- The player is invincible to everything, including instant kill hazards like bottomless pits and crushers.
-- * This is controlled by the console command `god`.
PF_GODMODE = 1 << 4

-- Turns off the player's collision, allowing them to walk through solid walls, as well as immediately move on top of raised ground regardless of height.
-- * This is controlled by the console command `noclip`.
PF_NOCLIP = 1 << 5

-- Prevents enemies and bosses from noticing the player, except after the player has attacked them. 
-- * This is controlled by the console command `notarget`. 
PF_INVIS = 1 << 6

-- The Ring Toss control button was pressed the previous tic.
PF_ATTACKDOWN = 1 << 7

-- The Spin control button was pressed the previous tic.
PF_SPINDOWN = 1 << 8

-- The Jump control button was pressed the previous tic.
PF_JUMPDOWN = 1 << 9

-- The Next Weapon or Prev Weapon control buttons were pressed the previous tic. 
PW_WPNDOWN = 1 << 10

-- The player is not allowed to move, except for jumping.
-- * This flag can be given if the player has a value set for `<player_t>.powers[pw_nocontrol]`, or the player has `PF_GLIDING` and is skidding; otherwise, the flag will automatically be removed the following tic.
PF_STASIS = 1 << 11

-- The player is not allowed to jump.
-- * This flag can be given if the 16th bit (`1<<15`) of `<player_t>.powers[pw_nocontrol]` is set, or the player has `PF_GLIDING` and is skidding; otherwise, the flag will automatically be removed the following tic.
PF_JUMPSTASIS = 1 << 12

-- The player is not allowed to move or jump.
-- * In short, this is `PF_STASIS` and `PF_JUMPSTASIS` combined.
-- * This flag can be given if the player has a value set for `<player_t>.powers[pw_nocontrol]`, or the player has `PF_GLIDING` and is skidding; otherwise, the flag will automatically be removed the following tic.
PF_FULLSTASIS = PF_STASIS | PF_JUMPSTASIS

-- The player is slowing down due to automatic braking.
PF_APPLYAUTOBRAKE = 1 << 13

-- The player has started a jump and not yet cut their upwards momentum in half by releasing the jump button.
PF_STARTJUMP = 1 << 14

-- The player has just jumped.
PF_JUMPED = 1 << 15

-- The player's jump will not damage enemies.
PF_NOJUMPDAMAGE = 1 << 16

-- The player is spinning.
PF_SPINNING = 1 << 17

-- The player is charging up their spindash.
PF_STARTDASH = 1 << 18

-- The player has used their character's ability.
PF_THOKKED = 1 << 19

-- The player has used their Shield ability.
PF_SHIELDABILITY = 1 << 20

-- The player is gliding.
PF_GLIDING = 1 << 21

-- The player is tail-bouncing.
PF_BOUNCING = 1 << 22

-- The player is in a slide.
-- * Example: Deep Sea Zone's waterslides.
PF_SLIDING = 1 << 23

-- NiGHTS Super Sonic is being transferred to the next axis.
PF_TRANSFERTOCLOSEST = 1 << 24

-- NiGHTS Super Sonic is drilling.
PF_DRILLING = 1 << 25

-- The player has received a Time Over in Race mode, or is has been tagged in Hide & Seek mode.
PF_GAMETYPEOVER = 1 << 26

-- The player is "it" in Tag mode.
PF_TAGIT = 1 << 27

-- Forces the turn left/right controls to become strafing controls.
-- * This is reserved for Lua scripting purposes.
PF_FORCESTRAFE = 1 << 28

-- The player can carry another player as Tails with their flight.
PF_CANCARRY = 1 << 29

-- The player has finished the level.
-- * This is separate from `<player_t>.exiting`, as its for cases where players can move around while waiting for others to finish the level.
PF_FINISHED = 1 << 30


--//


-- Animations that do not fit with the others.
-- * Belongs to: `Nothing.`
PA_ETC = 0

-- Idle animations, such as standing or waiting.
-- * Belongs to: `S_PLAY_STND`, `S_PLAY_WAIT`, and `S_PLAY_NIGHTS_STAND`.
PA_IDLE = 1

-- The teetering animation.
-- * Belongs to: `S_PLAY_EDGE`.
PA_EDGE = 2

-- The walking animations.
-- * Belongs to: `S_PLAY_WALK`, `S_PLAY_SKID`, and `S_PLAY_FLOAT`.
PA_WALK = 3

-- The running animations.
-- * Belongs to: `S_PLAY_RUN`, and `S_PLAY_FLOAT_RUN`.
PA_RUN = 4

-- The dashmode animation.
-- * Belongs to: `S_PLAY_DASH`.
PA_DASH = 5

-- The pain animations.
-- * Belongs to: `S_PLAY_PAIN`, and `S_PLAY_STUN`.
PA_PAIN = 6

-- The rolling ston- i mean animations.
-- * Belongs to: `S_PLAY_ROLL`, and `S_PLAY_NIGHTS_ATTACK`.
PA_ROLL = 7

-- The jumping animation.
-- * Belongs to: `S_PLAY_JUMP`.
PA_JUMP = 8

-- The spring animation.
-- * Belongs to: `S_PLAY_SPRING`.
PA_SPRING = 9

-- The falling animations.
-- * Belongs to: `S_PLAY_FALL`, and `S_PLAY_NIGHTS_FLOAT`.
PA_FALL = 10

-- Character-specific animations.
-- * This is for the primary abilities.
-- * Belongs to: `S_PLAY_FLY`, `S_PLAY_FLY_TIRED`, `S_PLAY_SWIM`, `S_PLAY_GLIDE`, `S_PLAY_BOUNCE`, `S_PLAY_BOUNCE_LANDING`, and `S_PLAY_TWINSPIN`.
PA_ABILITY = 11

-- Character-specific animations.
-- * This is for the secondary abilities.
-- * Belongs to: `S_PLAY_SPINDASH`, `S_PLAY_FIRE`, `S_PLAY_FIRE_FINISH`, `S_PLAY_MELEE`, `S_PLAY_MELEE_FINISH`, and `S_PLAY_MELEE_LANDING`.
PA_ABILITY2 = 12

-- The animation for being carried or riding something.
-- * Belongs to: `S_PLAY_RIDE`.
PA_RIDE = 13


--//


-- The player has no shield.
SH_NONE = 0x0000

-- The player has a Pity shield.
SH_PITY = 0x0001

-- The player has a Whirlwind shield.
SH_WHIRLWIND = 0x0002

-- The player has an Armageddon shield.
SH_ARGAGEDDON = 0x0003

-- The player has a Pink Pity shield, which was given by Amy's ability.
SH_PINK = 0x0004

-- The player has an Elemental Shield.
-- * This is equivalent to combining `SH_PITY|SH_PROTECTFIRE|SH_PROTECTWATER`.
SH_ELEMENTAL = 0x0C01

-- The player has an Attraction Shield.
-- * This is equivalent to combining `SH_PITY|SH_PROTECTELECTRIC`.
SH_ATTRACT = 0x1001

-- The player has the S3K Flame Shield.
-- * This is equivalent to combining `SH_PITY|SH_PROTECTFIRE`.
SH_FLAMEAURA = 0x0401

-- The player has the S3K Bubble Shield.
-- * This is equivalent to combining `SH_PITY|SH_PROTECTWATER`. 
SH_BUBBLEWRAP = 0x0801

-- The player has the S3K Lightning Shield.
-- * This is equivalent to combining `SH_WHIRLWIND|SH_PROTECTELECTRIC`.
SH_THUNDERCOIN = 0x1002

-- The player has the force shield. Take account that this is a **flag**.
-- * On its own this flag only gives one health point to the shield, the lower 8 bits can be used as extra health points.
-- * **`NOTE:`** This cannot be combined with any of the values `SH_PITY` to `SH_PINK`.
-- * In Lua scripts, use `<player_t>.powers[pw_shield] & SH_FORCE` to check if a player has the Force Shield. 
SH_FORCE = 0x0100

-- The amount for max extra health points of the Force Shield.
-- * In Lua scripts, if the player is known to have a Force Shield, use `<player_t>.powers[pw_shield] & SH_FORCEHP` to check if the shield has extra health points. 
SH_FORCEHP = 0x00FF

-- The player has the Fire Flower. Take account that this is a **flag**.
-- * **`NOTE:`** This can be combined with any of the other shields.
-- * In Lua scripts, use `<player_t>.powers[pw_shield] & SH_FIREFLOWER` to check if the player has the Fire Flower power-up. 
SH_FIREFLOWER = 0x0200

-- Mask for all shields that can be combined with others.
-- * This only includes the Fire Flower currently.
-- * In Lua scripts, use `<player_t>.powers[pw_shield] & SH_STACK` to get all shields that can be stacked with others.
SH_STACK = 0x0200

-- Inverse of `SH_STACK`, mask for all shields that cannot be combined with others.
-- * This is equivalent to typing `~SH_STACK`.
-- * In Lua scripts, use `<player_t>.powers[pw_shield] & SH_NOSTACK` to return everything except for shields that can be stacked with others.
SH_NOSTACK = 0xFDFF

-- Flag for shields that protect the user from Fire damage.
SH_PROTECTFIRE = 0x0400

-- Flag for shields that protect the user from Water damage.
SH_PROTECTWATER = 0x0800

-- Flag for shields that protect the user from Electric damage.
SH_PROTECTELECTRIC = 0x1000

-- Flag for shields that protect the user from Spike damage.
SH_PROTECTSPIKE = 0x2000


--//


-- Not being carried.
CR_NONE = 0

-- Generic, default case for miscellaneous objects.
CR_GENERIC = 1

-- Being carried by a flying Tails player.
CR_PLAYER = 2

-- The player is currently in NiGHTS mode.
CR_NIGHTSMODE = 3

-- The player has ran out of time in NiGHTS.
CR_NIGHTSFALL = 4

-- Stuck in old Brak Eggman's goop.
CR_BRAKGOOP = 5

-- Using a Zoom Tube.
CR_ZOOMTUBE = 6

-- Using a Rope Hang.
CR_ROPEHANG = 7

-- Using a Mace swing.
CR_MACESPIN = 8

-- Using a Minecart.
CR_MINECART = 9

-- Using a Rollout Rock.
CR_ROLLOUT = 10

-- Being carried by a Pterabyte.
CR_PTERABYTE = 11

-- Being carried by a Dust Devil.
CR_DUSTDEVIL = 12


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
-- * **`NOTE:`** This is used internally as a timer for how long the player has been super, in tics.
pw_super = 12

-- The player's "Gravity Boots" duration.
pw_gravityboots = 13

-- Current amount of Infinity Rings.
pw_infinityring = 14

-- Current amount of Automatic Rings.
pw_automaticring = 15

-- Current amount of Bounce Rings.
pw_bouncering = 16

-- Current amount of Scatter Rings.
pw_scatterring = 17

-- Current amount of Grenade Rings.
pw_grenadering = 18

-- Current amount of Explosion Rings.
pw_explosionring = 19

-- Current amount of Rail Rings.
pw_railring = 20

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


-- Automatic Ring.
WEP_AUTO = 1

-- Bounce Ring.hud.
WEP_BOUNCE = 2

-- Scatter Ring.
WEP_SCATTER = 3

-- Grenade Ring.
WEP_GRENADE = 4

-- Explode Ring.
WEP_EXPLODE = 5

-- Rail Ring.
WEP_RAIL = 6

-- Total number of weapons.
MAXWEAPONS = 7


--//


-- Automatic Ring.
RW_AUTO = 1 << 0

-- Bounce Ring.
RW_BOUNCE = 1 << 1

-- Scatter Ring.
RW_SCATTER = 1 << 2

-- Grenade Ring.
RW_GRENADE = 1 << 3

-- Explode Ring.
RW_EXPLODE = 1 << 4

-- Rail Ring.
RW_RAIL = 1 << 5


--//


-- SRB2's palette with a 75% white tint, of `RGB(255, 255, 255)`.
-- * This flash palette is used for Attraction Shields shorting out in water and Ideya Capture defeat.
PAL_WHITE = 1

-- SRB2's palette with a 75% white tint, of `RGB(255, 255, 255)`.
-- * This flash palette is used for teleports and Teleport Monitors.
PAL_MIXUP = 2

-- SRB2's palette with a 75% white tint, of `RGB(255, 255, 255)`.
-- * This flash is palette used for Recycler Monitors.
PAL_RECYCLE = 3

-- SRB2's palette tinted red. 
-- * This flash palette is used for Armageddon Shield explosions.
-- * **`NOTE:`** This palette can be reproduced by tinting SRB2's palette 75% white as with the palettes above, but then changing the green/blue levels of all color indexes to `113`.
PAL_NUKE = 4

-- SRB2's palette, but inverted and slightly darker.
-- * This isn't used anywhere, but you can!
PAL_INVERT = 5


--//


-- The player is carrying the red CTF flag.
GF_REDFLAG = 1 << 0

-- The player is carrying the blue CTF flag.
GF_BLUEFLAG = 1 << 1


--//


-- TODO: more and more...


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


-- These bits are reserved for an 8-bit integer parameter internally.
-- * For example, when drawing individual characters in a string, this determines which character in the font is to be drawn.
-- * You cannot set nor control these bits using cechoflags or Lua's HUD library functions.
-- * An exception to this is Lua's `v.drawFill`, where these bits are the palette index to use as the fill color.
V_PARAMMASK = 0x000000FF

-- These bits determine how to scale text and patches.
V_SCALEPATCHMASK = 0x00000300

-- These bits determine text spacing types.
V_SPACINGMASK = 0x00000C00

-- These bits determine the color of text. 
V_CHARCOLORMASK = 0x0000F000

-- These bits determine the alpha or translucency of text and patches.
V_ALPHAMASK = 0x000F0000


-- Text or patches are not scaled.
-- * This will cause them to be sized as if the resolution was the default of 320×200, while still retaining their starting positions for the resolution currently being used, assuming V_NOSCALESTART is not being used.
-- * This causes text or patches to appear smaller in higher resolutions.
-- * Generally not recommended because text or patches will look different in different resolutions.
-- * This flag is used with `con_textsize small`.
V_NOSCALEPATCH = 0x00000100

-- Text or patches are scaled to half of their normal scale.
-- * This will have no effect for resolutions 640×400 and smaller.
-- * This flag is used with `con_textsize medium`.
V_SMALLSCALEPATCH = 0x00000200

-- Text or patches are scaled to 2/3 of their normal scale.
-- * This will have no effect for 320×200.
-- * This flag is used with `con_textsize large`.
V_MEDSCALEPATCH = 0x00000300


-- Spaces are 6 pixels wide; all other characters have a width matching their real image width.
-- * Good ol' v2.1-style spacing.
-- * This has another effect in SRB2Kart; if the align type in `v.drawString` is "thin", the width between every letter will be reduced by 1.
V_6WIDTHSPACE = 0x00000400

-- All characters are 8 pixels wide, and spaces are 4 pixels wide.
-- * This is the spacing used by all versions of SRB2 prior to v2.1, and some parts of the game still use it.
V_OLDSPACING = 0x00000800

-- All characters are 8 pixels wide, spaces included.
V_MONOSPACE = 0x00000C00


-- >> ![](https://wiki.srb2.org/w/images/3/3f/Sampletext-magenta.png)
V_MAGENTAMAP = 0x00001000

-- >> ![](https://wiki.srb2.org/w/images/5/52/Sampletext-yellow.png)
V_YELLOWMAP = 0x00002000

-- >> ![](https://wiki.srb2.org/w/images/f/fe/Sampletext-green.png)
V_GREENMAP = 0x00003000

-- >> ![](https://wiki.srb2.org/w/images/d/db/Sampletext-blue.png)
V_BLUEMAP = 0x00004000

-- >> ![](https://wiki.srb2.org/w/images/d/d7/Sampletext-red.png)
V_REDMAP = 0x00005000

-- >> ![](https://wiki.srb2.org/w/images/f/fd/Sampletext-gray.png)
V_GRAYMAP = 0x00006000

-- >> ![](https://wiki.srb2.org/w/images/f/fa/Sampletext-orange.png)
V_ORANGEMAP = 0x00007000

-- >> ![](https://wiki.srb2.org/w/images/0/0a/Sampletext-sky.png)
V_SKYMAP = 0x00008000

-- >> ![](https://wiki.srb2.org/w/images/8/88/Sampletext-purple.png)
V_PURPLEMAP = 0x00009000

-- >> ![](https://wiki.srb2.org/w/images/7/7a/Sampletext-aqua.png)
V_AQUAMAP = 0x0000A000

-- >> ![](https://wiki.srb2.org/w/images/f/fd/Sampletext-peridot.png)
V_PERIDOTMAP = 0x0000B000

-- >> ![](https://wiki.srb2.org/w/images/6/6b/Sampletext-azure.png)
V_AZUREMAP = 0x0000C000

-- >> ![](https://wiki.srb2.org/w/images/f/f1/Sampletext-brown.png)
V_BROWNMAP = 0x0000D000

-- >> ![](https://wiki.srb2.org/w/images/b/bc/Sampletext-rosy.png)
V_ROSYMAP = 0x0000E000

-- >> ![](https://wiki.srb2.org/w/images/f/f6/Sampletext-inverted.png)
V_INVERTMAP = 0x0000F000


-- Text or patches are 10% translucent.
V_10TRANS = 0x00010000

-- Text or patches are 20% translucent.
V_20TRANS = 0x00020000

-- Text or patches are 30% translucent.
V_30TRANS = 0x00030000

-- Text or patches are 40% translucent.
V_40TRANS = 0x00040000

-- Text or patches are 50% translucent.
V_TRANSLUCENT = 0x00050000

-- Text or patches are 60% translucent.
V_60TRANS = 0x00060000

-- Text or patches are 70% translucent.
V_70TRANS = 0x00070000

-- Text or patches are 80% translucent.
V_80TRANS = 0x00080000

-- Text or patches are 90% translucent.
V_90TRANS = 0x00090000

-- Text or patches will be adjusted to be half as opaque (twice as translucent) as the translucency determined by the `translucenthud` console variable.
V_HUDTRANSHALF = 0x000A0000

-- Text or patches will be adjusted to the translucency determined by the `translucenthud` console variable.
V_HUDTRANS = 0x000B0000


-- Text or patches use additive blending.
-- * By default, the intensity is at 100%, but can be combined with `V_10TRANS`–`V_90TRANS` for 90%–10% intensity. 
V_ADD = 0x00100000

-- Text or patches use subtractive blending.
-- * By default, the intensity is at 100%, but can be combined with `V_10TRANS`–`V_90TRANS` for 90%–10% intensity. 
V_SUBSTRACT = 0x00200000

-- Text or patches use reverse subtractive blending.
-- * By default, the intensity is at 100%, but can be combined with `V_10TRANS`–`V_90TRANS` for 90%–10% intensity. 
V_REVERSESUBSTRACT = 0x00300000

-- Text or patches use modulate blending.
V_MODULATE = 0x00400000


-- Allows use of lowercase letters, instead of forcing letters to be all-uppercase by default.
-- * This is only for **strings**.
V_ALLOWLOWERCASE = 0x00800000

-- Flips the patch across the X axis (horizontally).
-- * This is only for **patches**.
V_FLIP = 0x00800000

-- Centers the name tag text horizontally.
-- * This is only for **nametags**.
V_CENTERNAMETAG = 0x00800000


-- Text or patches snap to the top edge of the screen in non-green resolutions.
-- * This means that the top of the string or patch will remain the same distance from the top edge of the screen as if it were using a green resolution.
-- * This flag has no effect if `V_NOSCALESTART` or any of the scaling flags are set.
V_SNAPTOTOP = 0x01000000

-- Text or patches snap to the bottom edge of the screen in non-green resolutions.
-- * This means that the bottom of the string or patch will remain the same distance from the bottom edge of the screen as if it were using a green resolution.
-- * This flag has priority over `V_SNAPTOTOP`.
-- * This flag has no effect if `V_NOSCALESTART` or any of the scaling flags are set.
V_SNAPTOBOTTOM = 0x02000000

-- Text or patches snap to the left edge of the screen in non-green resolutions.
-- * This means that the left end of the string or patch will remain the same distance from the left edge of the screen as if it were using a green resolution, and text will be left-aligned.
-- * This flag has no effect if `V_NOSCALESTART` or any of the scaling flags are set.
V_SNAPTOLEFT = 0x04000000

-- Text or patches snap to the right edge of the screen in non-green resolutions.
-- * This means that the right end of the string or patch will remain the same distance from the right edge of the screen as if it were using a green resolution, and text will be right-aligned.
-- * This flag has priority over `V_SNAPTOLEFT`.
-- * This flag has no effect if `V_NOSCALESTART` or any of the scaling flags are set.
V_SNAPTORIGHT = 0x08000000


-- Makes `cecho` text automatically fade out before disappearing.
-- * This does not have any effect for non-`cecho` text or patches. 
V_AUTOFADEOUT = 0x10000000

-- Line breaks in text move the start of the next line of text down by 8 pixels rather than 12.
-- * Since text characters are normally 8 characters tall, this means lines of text will have no distance between them vertically.
-- * This has no effect for patches.
V_RETURN8 = 0x20000000

-- Do not scale the text or patch's starting position, i.e., the top-left corner of the text/patch.
-- * This will cause it to be placed as if the resolution was the default of 320×200, while still retaining the size of the text/patch for the resolution currently being used, assuming `V_NOSCALEPATCH` is not being used.
-- * This causes the text/patch to be in the top-left in higher resolutions.
-- * Generally not recommended because the resulting appearance will vary depending on the resolution used.
--
-- If this flag is set, the flags `V_SNAPTOTOP`, `V_SNAPTOBOTTOM`, `V_SNAPTOLEFT` and `V_SNAPTORIGHT` will have no effect. 
V_NOSCALESTART = 0x40000000

-- In Splitscreen mode, text and patches will automatically adjust coordinates and scaling to fit on-screen.
V_PERPLAYER = 0x80000000


-- Number of bits to shift up to convert integers 1–16 to the color flags `V_PURPLEMAP`–`V_INVERTMAP`, or the number of bits to shift down for vice versa.
-- * Example: `1<<V_CHARCOLORSHIFT` is `V_MAGENTAMAP`, and `V_MAGENTAMAP>>V_CHARCOLORSHIFT` is 1.
V_CHARCOLORSHIFT = 12

-- Number of bits to shift up to convert integers 1–9 to the alpha flags `V_10TRANS`–`V_90TRANS`, and integers 10–12 to the alpha flags `V_HUDTRANSHALF`–`V_HUDTRANSDOUBLE`, or the number of bits to shift down for vice versa.
-- * Example: `1<<V_ALPHASHIFT` is V_10TRANS, and `V_10TRANS>>V_ALPHASHIFT` is 1.
V_ALPHASHIFT = 16

-- Number of bits to shift up to convert integers 1–4 to the blending mode flags `V_ADD`, `V_SUBTRACT`, `V_REVERSESUBTRACT` and `V_MODULATE`, or the number of bits to shift down for vice versa.
-- * Example: `1<<V_BLENDSHIFT` is `V_ADD`, and `V_ADD>>V_BLENDSHIFT` is 1.
V_BLENDSHIFT = 20


--//


-- The character icon, character name, and remaining amount of lives in Single Player and Co-op.
-- * The character icon and name are still shown even in gametypes that don't have limited lives.
-- * They are however not displayed in NiGHTS levels nor Multiplayer Special Stages.
-- > Properties:
-- > * `x`: 16
-- > * `y`: 176
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_LIVES = 0

-- The yellow "RINGS" text beside the player's ring count in normal stages.
-- * The "RINGS" text flashes red when the player has no rings.
-- > Properties:
-- > * `x`: 16
-- > * `y`: 42
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_RINGS = 1

-- The amount of rings in the player's possession in normal stages.
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is not** set to "Mania".
-- > Properties:
-- > * `x`: 96
-- > * `y`: 42
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_RINGSNUM = 2

-- The amount of rings in the player's possession in normal stages.
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is** set to "Mania".
-- > Properties:
-- > * `x`: 120
-- > * `y`: 42
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_RINGSNUMTICS = 3

-- The yellow "SCORE" text in normal stages.
-- > Properties:
-- > * `x`: 16
-- > * `y`: 10
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_SCORE = 4

-- The player's current score in normal stages.
-- > Properties:
-- > * `x`: 120
-- > * `y`: 10
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_SCORENUM = 5

-- The yellow "TIME" text beside the time display in normal stages.
-- > Properties:
-- > * `x`: 16
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_TIME = 6

-- The time display's minute in normal stages.
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is not** set to "Tics".
-- * Counts down if there is a time limit (e.g. in Match by default), otherwise, this counts up.
-- > Properties:
-- > * `x`: 72
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_MINUTES = 7

-- The colon graphic between minutes and seconds in the time display in normal stages.
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is not** set to "Tics". 
-- > Properties:
-- > * `x`: 72
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_TIMECOLON = 8

-- The time display's second (or tic if `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is** set to "Tics") in normal stages.
-- * Counts down if there is a time limit, otherwise, this counts up.
-- > Properties:
-- > * `x`: 96
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_SECONDS = 9

-- The period graphic between seconds and centiseconds in the time display in normal stages.
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is** set to "Centiseconds" or "Mania".
-- > Properties:
-- > * `x`: 96
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_TIMETICCOLON = 10

-- The time display's centisecond in normal stages
-- * Shown when `Options > Video Options... > Heads-Up Display > Score/Time/Rings` **is** set to "Centiseconds" or "Mania".
-- * Counts down if there is a time limit, otherwise, this counts up.
-- * ****`NOTE:`**** Despite this HUD item's name, this is not used if that setting is set to "Tics".
-- > Properties:
-- > * `x`: 120
-- > * `y`: 26
-- > * `flags`: `V_SNAPTOLEFT|V_SNAPTOTOP`
HUD_TICS = 11

-- The radar in Emerald Hunt levels and when the Emblem Radar unlockable is enabled.
-- * Extends both left and right if there's more than one Emerald Hunt Location or Emblem in the level, so it's best to place this somewhere centred.
-- > Properties:
-- > * `x`: 152
-- > * `y`: 168
-- > * `flags`: None
HUD_HUNTPICS = 18

-- The HUD icons for shields and other power-ups, displayed based on `Options > Video Options... > Heads-Up Display > Show Powerups`.
-- * Note that when the player has multiple powerups, this HUD item will stack leftwards, so it's best to place this on the right side of the screen.
-- > Properties:
-- > * `x`: 288
-- > * `y`: 176
-- > * `flags`: `V_SNAPTORIGHT|V_SNAPTOBOTTOM`
HUD_POWERUPS = 19


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