# Current (released) mods
#### [BugZilla](https://mods.factorio.com/mod/BugZilla)
* Description: The goal is to prepaire a base in a limited amount of time, afther that, one big happy bug come and walk your base over. It's your task to survive, rebuild, defeat! And most of all: Having fun with friends.
* Latest version: 0.1.1

#### [Corpse Flare](https://mods.factorio.com/mod/CorpseFlare)
* Description: When you die with an emergency flare in your inventory, you'll set it off with your dying breath. The advantage of this is that you can find your body faster.
* Latest version: 0.1.0

#### [Expensive Cliffs](https://mods.factorio.com/mod/ExpensiveCliffs)
* Description: Cliffs are though to play with, for the die-hards I made them even thougher...
*We put a stick in the cliffside, rap 500 explosive arround it with some wires, soak it in some acid, and have a nuke to set it off.*
* Latest version: 0.1.1

#### [Force Fields](https://mods.factorio.com/mod/ForceFields2)
* Description: Adds multiple types of electric powered, self healing walls to keep the biters out.
* Latest version: 2.1.0

#### [Land Mover](https://mods.factorio.com/mod/LandMover)
* Description: A mod that removes the recipe of landfill. Use land mover instead: dig a hole, get the land, place it elsewhere
* Latest version: 0.1.5

#### [Santa's Nixie Tube Display](https://mods.factorio.com/mod/SantasNixieTubeDisplay)
* Description: Mod that adds some nixie tubes from the nixie tube mod, in exchange for some extra UPS
* Latest version: 0.1.3

# Changelog
#### Corpse Flare [v0.1.0]
* Initial release as it was part of the BugZilla mod

-----
#### Land Mover [v0.1.6]
* Added setting to re-enable landfill recipe

-----
#### Expensive Cliffs [v0.1.2]
* Made the thougher cliff settings disableable through startup setting

-----
#### Force Fields [v2.1.1]
* Emitters don't build a default wall when placed
* Bugfix wall not degrading when changing settings too fast

-----
#### Force Fields [v2.1.0]
* Added Forcefield gates
* Added ability to disable wall sections
* Added changelog
* Balancing technology cost to reflect the dificulty/OP-ness
* GUI has sprite buttons on the direction and wall type
* New on_entity_damaged event as released in 0.16.17
* Removed quick fix from version 2.0.1 as vanilla game fixed it
* Fixed the red/green light where not showing when connected to a gate

-----
#### Land Mover [v0.1.5]
* Added ingame changelog
* Factorio version 0.16.17: new on_player_built_tile event

-----
#### Force Fields [v2.0.3]
* Bugfix crash due to copy paste error
* Small optimalisations

-----
#### Force Fields [v2.0.2]
* Bugfix deconstruction of the forcefield itself
* Bugfix visual on direction W selected
* Small optimalisations around the code
* Huge optimalistation when degrading walls (big lagg spikes)

-----
#### Force Fields [v2.0.1]
* Deleted debug message when changing upgrades in the emitter (sorry for that)
* Added ability to copy paste settings between emitters (it even add/removes upgrades if possible)
* Bugfix error accessing global values
* Bugfix purple field did not do any damage upon destroy
* Bugfix fields did not do any damage when unable to rebuild

-----
#### Force Fields [v2.0.0]
* Initial release from me, updated to 0.16
* Can now open GUI without the need for the tool
* Can now close the GUI with pressing E/esc (without applying the changes)
* Emitters not taken into accumulator calculations anymore

-----
#### BugZilla [v0.1.1]
* Fixed chatToFile death message not showing name of entity correctly

-----
#### Land Mover [v0.1.4]
* Fixed research tree so landfill research is only altered, compatibility with Dectorio now

-----
#### Expensive Cliffs [v0.1.1]
* Changed recipe so it takes both red and green wires now, (don't cut the red one)
* Added tech description
* Added grenade explosion, so it damages other entities as well

-----
#### Expensive Cliffs [v0.1.0]
* Force cliff settings to make the game tougher
* Changed recipe for cliff explosives to make it  more expensive, so carefull when you destroy them.
* Changed research tree to match the recipe

-----
#### Santa's Nixie Tube Display [v0.1.3]
* Added hides arrows on detailed view

-----
#### BugZilla [v0.1.0]
* UI rework: Added sprite buttons to open/close UI
* UI rework: Split UI into two blocks: death UI and bugzilla statistics
* Fixed typo in player killed bug message
* Code optimalisations on biter generation with vision on adding next tier of bug (soon TM)
* Biter immune to belt movement

-----
#### Santa's Nixie Tube Display [v0.1.2]
* Updated to base game 0.16.2

-----
#### Land Mover [v0.1.3]
* Updated to base game 0.16.0

-----
#### BugZilla [v0.0.7]
* Added Flare cloud sprite instead of a pink cloud
* Bugfix poop name was missing in english translation
* Bugfix poop was not spawning fart clouds
* Bugfix flare item name was missing on english translation
* Bugfix flare icon sprite was too big
* Bugfix flare was not working in the quickbar
* Added BugZilla score on UI

-----
#### BugZilla [v0.0.6]
* Added aggro on trees
* Added penalty when you don't kill the BugZilla
* Added corpse flare so you can find your lost bodies easier
* UI rework, more flexibility to add more content
* Deaths ordened on amount instead of player index
* Fixed that inserters would insert into reward chest

-----
#### BugZilla [v0.0.5]
* Bugfix that you would change cycle every time an entity died
* Bugfix that bugzilla wouldn't despawn correctly when multiple spawned

-----
#### BugZilla [v0.0.4]
* Total rework (optimalisation) of fart entity, increased volume and added default fart time
* Rework of the BugZilla so multiple biters can spawn, to make it harder
* Biter is now immune to its own fart
* Balancing reward amounts & invincible reward chest (so it doesn't take damage)
* Added deathscream & message if you kill BugZilla
* Added little deathcounter (WIP, just to test UI out, definitely not final)

-----
#### BugZilla [v0.0.3]
* Added fart sound (!fart1 soundeffect from Shredguy99's twitch streaming)
* Bugfix desync resulting from different game state
* Bugfix crash as result of damaging entity with 0 health
* Bugfix position of fart damage attached to wrong entity

-----
#### BugZilla [v0.0.2]
* Added poison fart cloud to the biter to counteract the belt/mine bug
* Added a more random spawn
* Added loot (some science, might be handy early game)

-----
#### BugZilla [v0.0.1]
* Initial release of the bug
* Different kinds of sentences, so you won't get bored reading every attack the same
* Day/night cycle (thanks to choumiko)
* Biter prototype entity interface (thanks to Arch666Angel)
* on_runtime ability to change settings

-----
#### Land Mover [v0.1.2]
* Bugfix entity sprite size not correctly
* Changed stack size to 100 to match the stack size of landfill
* Changed recipe to use an actual shovel (+ added shovel entity)

-----
#### Land Mover [v0.1.1]
* Changed to a more appropriate recipe (not final)
* Nice graphics for tech and entity designed by geilolo

-----
#### Land Mover [v0.1.0]
* Initial release for a playthrough

-----
#### Santa's Nixie Tube Display [v0.1.1]
* Bugfix positioning of arrows on small nixie display

-----
#### Santa's Nixie Tube Display [v0.1.0]
* Initial release of regular and small nixie
