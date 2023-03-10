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
---@field color number
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
---@field skincolor number
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
---@field forwardmove SINT8
---@field sidemove SINT8
---@field angleturn INT16
---@field aiming INT16
---@field buttons UINT16
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
---@field taglist any
---@field args any
---@field stringargs any


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
---@field chase boolean
---@field aiming angle_t
---@field x fixed_t
---@field y fixed_t
---@field z fixed_t
---@field angle angle_t
---@field subsector subsector_t
---@field floorz fixed_t
---@field ceilingz fixed_t
---@field radius fixed_t
---@field height fixed_t
---@field momx fixed_t
---@field momy fixed_t
---@field momz fixed_t


--//


---@class mouse_t
---@field dx INT32
---@field dy INT32
---@field mlookdy INT32
---@field rdx INT32
---@field rdy INT32
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
---@field doomednum INT32
---@field spawnstate state_t
---@field spawnhealth INT32
---@field seestate number
---@field seesound number
---@field reactiontime INT32
---@field attacksound number
---@field painstate number
---@field painchance INT32
---@field painsound number
---@field meleestate number
---@field missilestate number
---@field deathstate number
---@field xdeathstate number
---@field deathsound number
---@field speed fixed_t
---@field radius fixed_t
---@field height fixed_t
---@field dispoffset INT32
---@field mass INT32
---@field damage INT32
---@field activesound number
---@field flags INT32
---@field raisestate number


--//


---@class state_t
---
--- Sprite prefix number used for the state.
---@field sprite number
---
--- Frame number of the sprite used for the state; it also contains full brightness/translucency information. (`tr_*`, `FF_*`)
---@field frame UINT32
---
--- Duration of the state, in tics.
--- * `-1` is infinite, `0` is instantaneous.
---@field tics INT32
---
--- The action used by the state, run when an Object switches to the state.
--- * Can be set to a pre-existing action, or a custom one created using Lua, or be just `nil` if none is set.
--- * The return value is the function that the action calls.
---@field action fun(actor: mobj_t, var1?: INT32, var2?: INT32)
---
--- The `Var1` value built-in to be used by `state.action`, when an Object first switches to the state.
--- * This has multiple actions, such as `FF_ANIMATE` on `state.frame`.
---@field var1 INT32
---
--- The `Var2` value built-in to be used by state.action, when an Object first switches to the state.
--- * This has multiple actions, such as `FF_ANIMATE` on `state.frame`.
---@field var2 INT32
---
--- The next state number to go to after the state has finished being used.
--- * A `state.nextstate` of `S_NULL` will make the Object using the current state be removed from the map when about to switch to the new state.
---@field nextstate number


--//


---@class sfxinfo_t
---
--- The name of the sound following the `sfx_*` prefix.
--- * For example, `sfxinfo[sfx_thok].name` would return `"thok"`.
---@field name string
---
--- Determines whether only one of the sound can be played at a time.
---@field singular boolean
---
--- The priority of the sound.
--- * For example, this determines how important it is to play this sound; if a sound with a higher priority is playing this sound will be drowned out, otherwise if vice versa this sound will drown out the other instead.
--- * Usually a value between 0 and 255.
---@field priority INT32
---
--- Sets/returns the sound flags set for the sound. (use `SF_*` constants, not to be confused with the skin flags)
---@field flags INT32
---
--- Skinsound ID number.
--- * For sounds that are not changeable by the skin, this will be -1. (`SKS*`)
---@field skinsound INT32
---
--- The caption to display onscreen when this sound is played with Closed Captioning enabled.
---@field caption string


--//


---@class skincolor_t
---
--- The name of the skincolor.
--- * Used in the console and Player Setup menu. Names containing spaces must be put in quotes in the console.
---@field name string
---
--- An array of 16 palette indices, which in whole represent the skincolor's color ramp.
---@field ramp UINT8[]
---
--- The opposite skincolor.
--- * Used on the Goal Sign.
---@field invcolor UINT8
---
--- The shade of the opposite skincolor, from 0 (lightest) to 15 (darkest).
--- * Used on the Goal Sign.
---@field invshade UINT8
---
--- Color to use when coloring a player name in the chat.
--- * This accepts `V_*MAP` constants.
---@field chatcolor UINT16
---
--- Skincolor accessibility.
--- * Determines whether the color can be accessed from the Player Setup menu or from the console.
--- * **`NOTE:`** This attribute is read-only for default skincolors.
---@field accessible boolean


--//


---@class hudinfo_t
---
--- X coordinate of the HUD item (from the left of the screen).
--- * This should be a value between 0 and 320.
---@field x INT32
---
--- Y coordinate of the HUD item (from the top of the screen).
--- * This should be a value between 0 and 320.
---@field y INT32
---
--- Video flags of the HUD item (`V_*`).
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
---@class colormap

---@class spriteinfo_t
---@class playersprite_t


--//
