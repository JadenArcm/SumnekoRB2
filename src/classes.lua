---@meta _


--//


---@class SINT8  : integer
---@class UINT8  : integer
---@class INT16  : integer
---@class UINT16 : integer
---@class INT32  : integer
---@class UINT32 : integer


--//


---@class fixed_t : INT32
---@class angle_t : UINT32
---@class tic_t   : INT32


--//


---@class mobj_t
---@field valid boolean
---@field x fixed_t
---@field y fixed_t
---@field z fixed_t
---@field snext mobj_t
---@field angle angle_t
---@field rollangle angle_t
---@field sprite number
---@field frame UINT32
---@field sprite2 UINT32
---@field anim_duration UINT16
---@field renderflags UINT32
---@field blendmode number
---@field spritexscale fixed_t
---@field spriteyscale fixed_t
---@field spritexoffset fixed_t
---@field spriteyoffset fixed_t
---@field floorspriteslope pslope_t
---@field subsector subsector_t
---@field floorz fixed_t
---@field ceilingz fixed_t
---@field floorrover ffloor_t
---@field ceilingrover ffloor_t
---@field radius fixed_t
---@field height fixed_t
---@field momx fixed_t
---@field momy fixed_t
---@field momz fixed_t
---@field pmomz fixed_t
---@field tics INT32
---@field state number
---@field flags UINT32
---@field flags2 UINT32
---@field eflags UINT32
---@field skin string
---@field color skincolornum_t
---@field colorized boolean
---@field bnext mobj_t
---@field hprev mobj_t
---@field hnext mobj_t
---@field type number
---@field info mobjinfo_t
---@field health INT32
---@field movedir angle_t
---@field movecount INT32
---@field target mobj_t
---@field reactiontime INT32
---@field threshold INT32
---@field player player_t
---@field lastlook INT32
---@field spawnpoint mapthing_t
---@field tracer mobj_t
---@field friction fixed_t
---@field movefactor fixed_t
---@field fuse INT32
---@field watertop fixed_t
---@field waterbottom fixed_t
---@field scale fixed_t
---@field destscale fixed_t
---@field scalespeed fixed_t
---@field extravalue1 INT32
---@field extravalue2 INT32
---@field cusval INT32
---@field cvmem INT32
---@field standingslope pslope_t
---@field mirrored boolean
---@field shadowscale fixed_t


--//


---@class player_t
---@field valid boolean
---@field name string
---@field mo mobj_t
---@field realmo mobj_t
---@field cmd ticcmd_t
---@field playerstate number
---@field camerascale fixed_t
---@field shieldscale fixed_t
---@field viewz fixed_t
---@field viewheight fixed_t
---@field deltaviewheight fixed_t
---@field bob fixed_t
---@field viewrollangle angle_t
---@field aiming angle_t
---@field drawangle angle_t
---@field rings INT16
---@field spheres INT16
---@field pity SINT8
---@field currentweapon INT32
---@field ringweapons INT32
---@field ammoremoval UINT16
---@field ammoremovaltimer tic_t
---@field ammoremovalweapon INT32
---@field powers UINT16[]
---@field pflags number
---@field panim number
---@field flashcount UINT16
---@field flashpal UINT16
---@field skin string|INT32
---@field skincolor skincolornum_t
---@field availabilities UINT32
---@field score UINT32
---@field dashmode tic_t
---@field dashspeed fixed_t
---@field normalspeed fixed_t
---@field runspeed fixed_t
---@field thrustfactor UINT8
---@field accelstart UINT8
---@field acceleration UINT8
---@field charability UINT8
---@field charability2 UINT8
---@field charflags UINT32
---@field thokitem number
---@field spinitem number
---@field revitem number
---@field followitem number
---@field followmobj mobj_t
---@field actionspd fixed_t
---@field mindash fixed_t
---@field maxdash fixed_t
---@field jumpfactor fixed_t
---@field height fixed_t
---@field spinheight fixed_t
---@field lives SINT8
---@field continues SINT8
---@field xtralife SINT8
---@field gotcontinue UINT8
---@field speed fixed_t
---@field secondjump UINT8
---@field fly1 UINT8
---@field scoreadd UINT8
---@field glidetime tic_t
---@field climbing UINT8
---@field deadtimer INT32
---@field exiting tic_t
---@field homing UINT8
---@field skidtime tic_t
---@field cmomx fixed_t
---@field cmomy fixed_t
---@field rmomx fixed_t
---@field rmomy fixed_t
---@field numboxes INT16
---@field totalring INT16
---@field realtime tic_t
---@field laps UINT8
---@field ctfteam INT32
---@field gotflag UINT16
---@field weapondelay INT32
---@field tossdelay INT32
---@field starpostx INT16
---@field starposty INT16
---@field starpostz INT16
---@field starpostnum INT32
---@field starposttime tic_t
---@field starpostscale fixed_t
---@field angle_pos angle_t
---@field old_angle_pos angle_t
---@field axis1 mobj_t
---@field axis2 mobj_t
---@field bumpertime tic_t
---@field flyangle INT32
---@field drilltimer tic_t
---@field linkcount INT32
---@field linktimer tic_t
---@field anotherflyangle INT32
---@field nightstime tic_t
---@field drillmeter INT32
---@field drilldelay tic_t
---@field bonustime boolean
---@field capsule mobj_t
---@field drone mobj_t
---@field oldscale fixed_t
---@field mare UINT8
---@field marelap UINT8
---@field marebonuslap UINT8
---@field marebegunat tic_t
---@field startedtime tic_t
---@field finishedtime tic_t
---@field lapbegunat tic_t
---@field lapstartedtime tic_t
---@field finishedspheres tic_t
---@field finishedrings tic_t
---@field marescore UINT32
---@field lastmarescore UINT32
---@field totalmarescore UINT32
---@field lastmare UINT8
---@field lastmarelap UINT8
---@field lastmarebonuslap UINT8
---@field totalmarelap UINT8
---@field totalmarebonuslap UINT8
---@field maxlink INT32
---@field texttimer UINT8
---@field textvar UINT8
---@field lastsidehit INT16
---@field lastlinehit INT16
---@field losstime tic_t
---@field timeshit UINT8
---@field onconveyor INT32
---@field awayviewmobj mobj_t
---@field awayviewtics INT32
---@field awayviewaiming angle_t
---@field spectator boolean
---@field outofcoop boolean
---@field bot UINT8
---@field botleader player_t
---@field lastbuttons UINT16
---@field blocked boolean
---@field jointime tic_t
---@field quittime tic_t
---@field fovadd fixed_t


--//


---@class skin_t
---@field valid boolean
---@field name string
---@field flags number
---@field realname string
---@field hudname string
---@field ability UINT8
---@field ability2 UINT8
---@field thokitem INT32
---@field spinitem INT32
---@field revitem INT32
---@field followitem INT32
---@field actionspd fixed_t
---@field mindash fixed_t
---@field maxdash fixed_t
---@field normalspeed fixed_t
---@field runspeed fixed_t
---@field thrustfactor UINT8
---@field accelstart UINT8
---@field acceleration UINT8
---@field jumpfactor fixed_t
---@field radius fixed_t
---@field height fixed_t
---@field spinheight fixed_t
---@field shieldscale fixed_t
---@field camerascale fixed_t
---@field starttranscolor UINT8
---@field prefcolor number
---@field prefoppositecolor number
---@field supercolor number
---@field highresscale fixed_t
---@field contspeed UINT8
---@field contangle UINT8
---@field availability UINT8
---@field soundsid number[]
---@field sprites any


--//


---@class ticcmd_t
---
--- Value related to forwards/backwards buttons; positive values move the player forward, negative values move the player backwards.
---
--- * Ranges from -50 to 50.
---@field forwardmove SINT8
---
--- Value related to strafe left/right buttons; positive values move the player right, negative values move the player left.
---
--- * Ranges from -50 to 50.
---@field sidemove SINT8
---
--- Value related to turn left/right buttons; to use as `angle_t` this needs to be shifted up by 16 bits (`cmd.angleturn << 16` or `cmd.angleturn * 65536`).
---@field angleturn INT16
---
--- Value related to look up/down buttons; to use as `angle_t` this needs to be shifted up by 16 bits (`cmd.aiming << 16` or `cmd.aiming * 65536`).
---@field aiming INT16
---
--- Contains flags representing buttons currently pressed.
---
--- * `BT_*` constants should be used.
---@field buttons UINT16
---
--- Player's latency in number of frames.
---@field latency UINT8


--//


---@class mapthing_t
---@field valid boolean
---@field x INT16
---@field y INT16
---@field z INT16
---@field angle INT16
---@field pitch INT16
---@field roll INT16
---@field scale fixed_t
---@field type UINT16
---@field options UINT16
---@field extrainfo UINT8
---@field mobj mobj_t
---@field tag INT16
---@field taglist INT16[]
---@field args integer[]
---@field stringargs string[]


--//


---@class sector_t
---@class subsector_t
---@class line_t
---@class side_t
---@class vertex_t
---@class ffloor_t
---@class pslope_t
---@class polyobj_t
---@class taglist_t


--//


---@class camera_t
---
--- Returns true if the third-person camera is enabled, false if not.
---@field chase boolean
---
--- The vertical viewing angle of the camera.
---@field aiming angle_t
---
--- The camera's absolute X position in the map.
---@field x fixed_t
---
--- The camera's absolute Y position in the map.
---@field y fixed_t
---
--- The camera's absolute Z position in the map.
---@field z fixed_t
---
--- The absolute angle the camera is facing.
---
--- * `0` is East, `ANGLE_90` is North, `ANGLE_180` is West, and `ANGLE_270` is South.
---@field angle angle_t
---
--- The subsector the camera is currently in.
---
--- * To obtain the sector the camera is in, use `camera.subsector.sector`.
---@field subsector subsector_t
---
--- The absolute "floor" position for the camera (i.e. the height that it considers to be the floor).
---
--- * This can be different from the floor height of the sector the camera is in, for example if it is above a solid FOF.
---@field floorz fixed_t
--- The absolute "ceiling" position for the camera (i.e. the ceiling that it considers to be the ceiling).
---
--- * This can be different from the ceiling height of the sector the camera is in, for example if it is below a solid FOF.
---@field ceilingz fixed_t
---
--- The current radius of the camera.
---
--- * By default this is `20*FRACUNIT`, but it will automatically scale along with the corresponding player's scale.
---@field radius fixed_t
---
--- The current height of the camera.
---
--- * By default this is `16*FRACUNIT`, but it will automatically scale along with the corresponding player's scale.
---@field height fixed_t
---
--- The camera's current X-Axis momentum.
---
--- * Positive values shift the camera to the East, negative values to the West.
---@field momx fixed_t
---
--- The camera's current Y-Axis momentum.
---
--- * Positive values shift the camera to the North, negative values to the South.
---@field momy fixed_t
---
--- The camera's current Z-Axis momentum.
---
--- * Positive values shift the camera upwards, negative values downwards.
---@field momz fixed_t


--//


---@class mouse_t
---
--- The change in position along the x-axis.
---@field dx INT32
---
--- The change in position along the y-axis.
---@field dy INT32
---
--- The change in position along the y-axis for use in mouse-looking.
---@field mlookdy INT32
---
--- The real change in position along the x-axis unadjusted for sensitivity settings.
---@field rdx INT32
---
--- The real change in position along the y-axis unadjusted for sensitivity settings.
---@field rdy INT32
---
--- Contains flags representing mouse buttons currently pressed. (See `MB_*` constants).
---@field buttons UINT16


--//


---@class keyevent_t
---
--- The name of the key that triggered this event.
---@field name string
---
--- The number of the key that triggered this event.
---@field num INT32
---
--- Whether this event is a continuation of a previously triggered event.
---
--- * For the `KeyDown` hook, this is true when the key is being held; for the `KeyUp` hook, this is always false.
---@field repeated boolean


--//


---@class consvar_t
---
--- The name of the console variable, as it should be written in the console.
---@field name string
---
--- The default value set for the console variable, expressed as a string.
---@field defaultvalue string
---
--- Contains the flags set for the console variable (`CV_*`).
---@field flags INT32
---
--- The current value set for the console variable, expressed as a number.
---@field value integer
---
--- The current value set for the console variable, expressed as a string.
---@field string string
---
--- Returns a boolean whether the console variable has been changed by the player.
---@field changed boolean


--//


---@class patch_t
---
--- Returns true if the patch is valid (i.e., it exists), false if not.
---@field valid boolean
---
--- The width of the patch.
---@field width INT16
---
--- The height of the patch.
---@field height INT16
---
--- The X offset of the patch (positive is left, negative is right).
---@field leftoffset INT16
---
--- The Y offset of the patch (positive is down, negative is up).
---@field topoffset INT16


--//


---@class mobjinfo_t
---
--- The Thing type number, should be a number between 1 and 4095.
---
--- * If set to -1, the Object type cannot be placed through Things on the map.
---@field doomednum INT32
---
--- The state that this type of Object calls when it is spawned.
---
--- * Its duration may not be 0.
--- * If the `SpawnState` has an action, it will not be performed when the Object is first spawned unless the `MF_RUNSPAWNFUNC` flag is set on the Object.
--- * If the `SpawnState` is called again after that, however, the action will be performed even without the flag.
---@field spawnstate statenum_t
---
--- The initial value for the health variable for `mobj_t`.
---@field spawnhealth INT32
---
--- Called once an Object spots a player, which can be done with the action `A_Look` and certain actions that are made specifically for some of SRB2's specific enemies.
---@field seestate statenum_t
---
--- Usually played when the `SeeState` is executed.
---
--- * `A_PlaySeeSound` is made specifically to call this sound.
---@field seesound soundnum_t
---
--- The initial value for the `reactiontime` variable for `mobj_t`.
---@field reactiontime INT32
---
--- Usually played by certain attack actions for enemies.
---
--- * The action `A_PlayAttackSound` is made specifically to call this sound.
---@field attacksound soundnum_t
---
--- The state that Objects with the flag `MF_SHOOTABLE` go to when they are damaged but not yet dead.
---@field painstate statenum_t
---
--- Used for miscellaneous purposes and will be unused for most Objects.
---@field painchance INT32
---
--- Usually played when the `PainState` is executed.
---
--- * The action `A_Pain` is made specifically to call this sound.
---@field painsound soundnum_t
---
--- The first of two attack states.
---
--- * Actions call this or `MissileState` when the Object should attack.
---@field meleestate statenum_t
---
--- The second of two attack states.
---
--- * Actions call this or `MeleeState` when the Object should attack.
---@field missilestate statenum_t
---
--- The state that Objects go to when they are destroyed (i.e., have no health points left).
---
--- * For regular enemies, this sequence of states should eventually point to `S_NULL`, which is used for Objects that have disappeared.
---@field deathstate statenum_t
---
--- Usually used as the fleeing state for bosses.
---
--- * It is called by the action `A_BossDeath`.
---@field xdeathstate statenum_t
---
--- Usually played when the `DeathState` is executed.
---
--- * The action `A_Scream` is made specifically to call this sound.
---@field deathsound soundnum_t
---
--- Usage depends on situation; can be just a regular number in some cases, other cases this needs to be a multiple of `FRACUNIT`.
---@field speed fixed_t
---
--- The initial value for the `radius` variable for `mobj_t`.
---
--- * This may also be referenced when an Object's scale is modified.
---@field radius fixed_t
---
--- The initial value for the `height` variable for `mobj_t`.
---
--- * This may also be referenced when an Object's scale is modified.
---@field height fixed_t
---
--- Used to resolve ordering conflicts when drawing sprites that are in the same position in Software rendering.
---
--- * Sprites with a higher display offset are always drawn in front of sprites with a lower display offset.
--- * For instance, the shield orbs all have this set to 1, which means they are always displayed in front of the player when both are in the exact same position.
--- * Any integer value can be used here, including negative values; SRB2's Objects only use values up to 2, so anything above that will make the Object take precedence over all of SRB2's default Objects.
--- * For most Objects, this can be set to 0.
---@field dispoffset INT32
---
--- Used to determine the damage type of Objects with the primary flags `MF_PAIN` or `MF_MISSILE`.
---
--- * Otherwise, it's used for miscellaneous purposes and will be unused for most Objects.
--- * It has no relation to the heaviness of an Object.
---@field mass INT32
---
--- Used for miscellaneous purposes and will be unused for most Objects.
---@field damage INT32
---
--- Used for miscellaneous sounds that are part of an Object's animation.
---
--- * `A_PlayActiveSound` is made specifically to call this sound.
---@field activesound soundnum_t
---
--- The initial value given to the `flags` variable for `mobj_t` (See `MF_*` constants).
---@field flags INT32
---
--- Used for miscellaneous purposes.
---
--- * For example, `A_ShootBullet`, `A_DropMine` and `A_JetgShoot` all spawn Objects with this state.
---@field raisestate statenum_t


--//


---@class state_t
---
--- Sprite prefix number used for the state.
---@field sprite spritenum_t
---
--- Frame number of the sprite used for the state; it also contains full brightness/translucency information. (`tr_*`, `FF_*`)
---@field frame UINT32
---
--- Duration of the state, in tics.
---
--- * `-1` is infinite, `0` is instantaneous.
---@field tics INT32
---
--- The action used by the state, run when an Object switches to the state.
---
--- * Can be set to a pre-existing action, or a custom one created using Lua, or be just `nil` if none is set.
--- * The return value is the function that the action calls.
---@field action fun(actor: mobj_t, var1?: INT32, var2?: INT32)
---
--- The `Var1` value built-in to be used by `state.action`, when an Object first switches to the state.
---
--- * This has multiple actions, such as `FF_ANIMATE` on `state.frame`.
---@field var1 INT32
---
--- The `Var2` value built-in to be used by state.action, when an Object first switches to the state.
---
--- * This has multiple actions, such as `FF_ANIMATE` on `state.frame`.
---@field var2 INT32
---
--- The next state number to go to after the state has finished being used.
---
--- * A `state.nextstate` of `S_NULL` will make the Object using the current state be removed from the map when about to switch to the new state.
---@field nextstate statenum_t


--//


---@class sfxinfo_t
---
--- The name of the sound following the `sfx_*` prefix.
---
--- * For example, `sfxinfo[sfx_thok].name` would return `"thok"`.
---@field name string
---
--- Determines whether only one of the sound can be played at a time.
---@field singular boolean
---
--- The priority of the sound.
---
--- * For example, this determines how important it is to play this sound; if a sound with a higher priority is playing this sound will be drowned out, otherwise if vice versa this sound will drown out the other instead.
--- * Usually a value between 0 and 255.
---@field priority INT32
---
--- Sets/returns the sound flags set for the sound. (use `SF_*` constants, not to be confused with the skin flags)
---@field flags INT32
---
--- Skinsound ID number.
---
--- * For sounds that are not changeable by the skin, this will be -1. (`SKS*`)
---@field skinsound INT32
---
--- The caption to display onscreen when this sound is played with Closed Captioning enabled.
---@field caption string


--//


---@class skincolor_t
---
--- The name of the skincolor.
---
--- * Used in the console and Player Setup menu. Names containing spaces must be put in quotes in the console.
---@field name string
---
--- An array of 16 palette indexes, which in whole represent the skincolor's color ramp.
---@field ramp UINT8[]
---
--- The opposite skincolor.
---
--- * Used on the Goal Sign.
---@field invcolor UINT8
---
--- The shade of the opposite skincolor, from 0 (lightest) to 15 (darkest).
---
--- * Used on the Goal Sign.
---@field invshade UINT8
---
--- Color to use when coloring a player name in the chat.
---
--- * This accepts `V_*MAP` constants.
---@field chatcolor UINT16
---
--- Skincolor accessibility.
---
--- * Determines whether the color can be accessed from the Player Setup menu or from the console.
--- * **`NOTE:`** This attribute is read-only for default skincolors.
---@field accessible boolean


--//


---@class hudinfo_t
---
--- X coordinate of the HUD item (from the left of the screen).
---
--- * This should be a value between 0 and 320.
---@field x INT32
---
--- Y coordinate of the HUD item (from the top of the screen).
---
--- * This should be a value between 0 and 320.
---@field y INT32
---
--- Video flags of the HUD item (`V_*`).
---
--- * **`NOTE:`** Some flags are always applied for certain HUD items in addition to those that you set here. (such as `V_HUDTRANS`, `V_PERPLAYER`, and a few more.)
---@field f INT32


--//


---@class mapheader_t
---@field lvlttl string
---@field subttl string
---@field actnum UINT8
---@field typeoflevel UINT16
---@field nextlevel INT16
---@field marathonnext INT16
---@field keywords string
---@field musname string
---@field mustrack UINT16
---@field muspos UINT32
---@field musinterfadeout UINT32
---@field musintername string
---@field muspostbossname string
---@field muspostbosstrack UINT16
---@field muspostbosspos UINT32
---@field muspostbossfadein UINT32
---@field musforcereset SINT8
---@field forcecharacter string
---@field weather UINT8
---@field skynum INT16
---@field skybox_scalex INT16
---@field skybox_scaley INT16
---@field skybox_scalez INT16
---@field ltactdiamond string
---@field maxbonuslives SINT8
---@field ltzzpatch string
---@field ltzztext string
---@field interscreen string
---@field runsoc string
---@field scriptname string
---@field precutscenenum UINT8
---@field cutscenenum UINT8
---@field countdown INT16
---@field palette UINT16
---@field numlaps UINT8
---@field unlockrequired SINT8
---@field levelselect UINT8
---@field bonustype SINT8
---@field saveoverride SINT8
---@field levelflags UINT8
---@field menuflags UINT8
---@field selectheading string
---@field startrings UINT16
---@field sstimer INT32
---@field ssspheres UINT32
---@field gravity fixed_t


--//


---@class hudlib
---@class drawerlib
---@class easelib
---@class inputlib

---@class soundnum_t     : integer
---@class statenum_t     : integer
---@class spritenum_t    : UINT32
---@class skincolornum_t : integer
---@class playersprite_t : integer

---@class spriteinfo_t
---@class colormap

--//
