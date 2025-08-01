; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw MissingNo1FEvosMoves
	dw MissingNo20EvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw MissingNo32EvosMoves
	dw MagmarEvosMoves
	dw MissingNo34EvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MissingNo38EvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw MissingNo3DEvosMoves
	dw MissingNo3EEvosMoves
	dw MissingNo3FEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MissingNo43EvosMoves
	dw MissingNo44EvosMoves
	dw MissingNo45EvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw MissingNo4FEvosMoves
	dw MissingNo50EvosMoves
	dw MissingNo51EvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw MissingNo56EvosMoves
	dw MissingNo57EvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MissingNo5EEvosMoves
	dw MissingNo5FEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw MissingNo73EvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw MissingNo79EvosMoves
	dw MissingNo7AEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MissingNo7FEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw MissingNo86EvosMoves
	dw MissingNo87EvosMoves
	dw MukEvosMoves
	dw MissingNo8AEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw MissingNo8CEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw MissingNo92EvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw MissingNo9CEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw MissingNo9FEvosMoves
	dw MissingNoA0EvosMoves
	dw MissingNoA1EvosMoves
	dw MissingNoA2EvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw MissingNoACEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, SLAM
	db 30, TAKE_DOWN
	db 36, ROCK_SLIDE
	db 46, SKULL_BASH
	db 52, EARTHQUAKE
	db 55, HORN_DRILL
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, LEER
	db 22, BITE
	db 30, DIZZY_PUNCH
	db 38, MEGA_PUNCH
	db 44, EARTHQUAKE
	db 50, DOUBLE_EDGE
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 7, POISON_STING
	db 10, FOCUS_ENERGY
	db 12, FURY_ATTACK
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 9, SING
	db 14, DOUBLESLAP
	db 20, MINIMIZE
	db 24, METRONOME
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 8, LEER
	db 10, FURY_ATTACK
	db 14, DOUBLE_TEAM
	db 17, SWIFT
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 5, SONICBOOM
	db 10, THUNDERSHOCK
	db 15, THUNDER_WAVE
	db 20, SELFDESTRUCT
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, HORN_ATTACK
	db 26, DOUBLE_KICK
	db 32, SLUDGE
	db 43, HORN_DRILL
	db 54, EARTHQUAKE
	db 60, DOUBLE_EDGE
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, HEADBUTT
	db 25, BUBBLEBEAM
	db 30, ICE_BEAM
	db 42, AMNESIA
	db 48, PSYCHIC_M
	db 55, HYDRO_PUMP
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 12, ACID
	db 20, SLEEP_POWDER
	db 24, RAZOR_LEAF
	db 28, POISONPOWDER
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, RAZOR_LEAF
	db 24, SLEEP_POWDER
	db 36, STOMP
	db 42, REFLECT
	db 48, EGG_BOMB
	db 55, SOLARBEAM
	db 0

LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, LICK
	db 22, STOMP
	db 30, DEFENSE_CURL
	db 38, SLAM
	db 44, REST
	db 50, TAKE_DOWN
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 9, LEECH_SEED
	db 14, MEGA_DRAIN
	db 20, RAZOR_LEAF
	db 24, SLEEP_POWDER
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 9, ACID
	db 16, POISON_GAS
	db 21, MINIMIZE
	db 26, TOXIC
	db 32, BODY_SLAM
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, GLARE
	db 32, PSYBEAM
	db 36, HYPNOSIS
	db 47, TOXIC
	db 54, PSYCHIC_M
	db 60, DREAM_EATER
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 7, POISON_STING
	db 10, TAIL_WHIP
	db 12, FURY_SWIPES
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, BITE
	db 26, DOUBLE_KICK
	db 32, SLUDGE
	db 43, REST
	db 54, EARTHQUAKE
	db 60, DOUBLE_EDGE
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 9, SCRATCH
	db 14, TAIL_WHIP
	db 18, ROCK_THROW
	db 23, BONE_CLUB
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 10, DIG
	db 18, LEER
	db 24, SLAM
	db 30, TAKE_DOWN
	db 36, ROCK_SLIDE
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SING
	db 22, MIST
	db 30, BODY_SLAM
	db 38, CONFUSE_RAY
	db 44, ICE_BEAM
	db 50, HYDRO_PUMP
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, TAKE_DOWN
	db 24, FLAMETHROWER
	db 36, EARTHQUAKE
	db 42, AGILITY
	db 48, DOUBLE_EDGE
	db 55, FIRE_BLAST
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 35, DOUBLE_TEAM
	db 40, SWIFT
	db 45, TRANSFORM
	db 50, TRI_ATTACK
	db 55, METRONOME
	db 60, RECOVER
	db 65, PSYCHIC_M
	db 70, HYPER_BEAM
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TACKLE
	db 15, WATER_GUN
	db 20, DRAGON_RAGE
	db 28, BITE
	db 36, FOCUS_ENERGY
	db 44, BODY_SLAM
	db 52, HYDRO_PUMP
	db 60, HYPER_BEAM
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 9, CLAMP
	db 14, SUPERSONIC
	db 20, AURORA_BEAM
	db 24, BUBBLEBEAM
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 10, WRAP
	db 15, WATER_GUN
	db 20, SUPERSONIC
	db 25, CONSTRICT
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 10, ACID
	db 15, CONFUSION
	db 20, SMOKESCREEN
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, FOCUS_ENERGY
	db 22, WING_ATTACK
	db 30, AGILITY
	db 38, SLASH
	db 44, SWORDS_DANCE
	db 50, TAKE_DOWN
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 9, WATER_GUN
	db 14, HARDEN
	db 20, LIGHT_SCREEN
	db 24, BUBBLEBEAM
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BITE
	db 25, BUBBLEBEAM
	db 30, ICE_BEAM
	db 44, SKULL_BASH
	db 52, BLIZZARD
	db 60, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, FOCUS_ENERGY
	db 22, HORN_ATTACK
	db 30, SEISMIC_TOSS
	db 38, SLASH
	db 44, SWORDS_DANCE
	db 50, GUILLOTINE
	db 0

TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, MEGA_DRAIN
	db 22, SLEEP_POWDER
	db 30, BIND
	db 38, RAZOR_LEAF
	db 44, GROWTH
	db 50, SLAM
	db 0

MissingNo1FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo20EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 9, EMBER
	db 14, LEER
	db 20, TAKE_DOWN
	db 24, FLAMETHROWER
	db 0

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, BIND
	db 22, ROCK_THROW
	db 30, HARDEN
	db 38, BODY_SLAM
	db 44, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, DOUBLE_TEAM
	db 17, SWIFT
	db 26, AGILITY
	db 32, DRILL_PECK
	db 38, MIRROR_MOVE
	db 45, TAKE_DOWN
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 14, WHIRLWIND
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 10, WATER_GUN
	db 15, DISABLE
	db 20, HEADBUTT
	db 25, BUBBLEBEAM
	db 30, ICE_BEAM
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, ALAKAZAM
	db 0
; Learnset
	db 7, SCRATCH
	db 10, KINESIS
	db 12, CONFUSION
	db 20, DISABLE
	db 25, PSYBEAM
	db 30, REFLECT
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, GOLEM
	db 0
; Learnset
	db 10, DEFENSE_CURL
	db 15, ROCK_THROW
	db 20, BIDE
	db 28, SCREECH
	db 32, SELFDESTRUCT
	db 36, ROCK_SLIDE
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SING
	db 22, MINIMIZE
	db 30, DEFENSE_CURL
	db 38, LIGHT_SCREEN
	db 44, EGG_BOMB
	db 50, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, MACHAMP
	db 0
; Learnset
	db 10, LOW_KICK
	db 16, LEER
	db 22, FOCUS_ENERGY
	db 30, SEISMIC_TOSS
	db 34, ROCK_SLIDE
	db 38, MEGA_PUNCH
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, LIGHT_SCREEN
	db 22, DOUBLESLAP
	db 30, MEDITATE
	db 38, METRONOME
	db 44, SUBSTITUTE
	db 50, PSYCHIC_M
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, ROLLING_KICK
	db 22, JUMP_KICK
	db 30, SUBMISSION
	db 38, FOCUS_ENERGY
	db 44, HI_JUMP_KICK
	db 50, MEGA_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, FIRE_PUNCH
	db 22, ICE_PUNCH
	db 30, THUNDERPUNCH
	db 38, DOUBLE_TEAM
	db 44, COUNTER
	db 50, MEGA_PUNCH
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, ACID
	db 18, BITE
	db 27, SCREECH
	db 33, SLUDGE
	db 38, TAKE_DOWN
	db 45, SKULL_BASH
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SPORE
	db 20, BIDE
	db 30, MEGA_DRAIN
	db 35, GROWTH
	db 40, DIG
	db 45, SLASH
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 10, WATER_GUN
	db 14, DISABLE
	db 20, FURY_SWIPES
	db 24, CONFUSION
	db 28, BUBBLEBEAM
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 8, DISABLE
	db 12, CONFUSION
	db 16, POISON_GAS
	db 20, RAGE
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, SCREECH
	db 32, SELFDESTRUCT
	db 36, ROCK_SLIDE
	db 47, SUBMISSION
	db 54, EARTHQUAKE
	db 60, EXPLOSION
	db 0

MissingNo32EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SMOG
	db 22, SMOKESCREEN
	db 30, FIRE_PUNCH
	db 38, BODY_SLAM
	db 44, CONFUSE_RAY
	db 50, FIRE_BLAST
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, THUNDERSHOCK
	db 22, SCREECH
	db 30, THUNDERPUNCH
	db 38, BODY_SLAM
	db 44, LIGHT_SCREEN
	db 50, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SUPERSONIC
	db 20, THUNDER_WAVE
	db 34, SWIFT
	db 38, SCREECH
	db 42, TAKE_DOWN
	db 45, THUNDERBOLT
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 10, SMOKESCREEN
	db 15, SLAM
	db 20, TOXIC
	db 25, SELFDESTRUCT
	db 30, HAZE
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 9, LOW_KICK
	db 14, KARATE_CHOP
	db 18, FURY_SWIPES
	db 23, FOCUS_ENERGY
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 10, GROWL
	db 15, WATER_GUN
	db 20, AURORA_BEAM
	db 25, REST
	db 30, BUBBLEBEAM
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 8, GROWL
	db 12, SAND_ATTACK
	db 16, DIG
	db 20, BIDE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, TAIL_WHIP
	db 22, STOMP
	db 30, GLARE
	db 38, TAKE_DOWN
	db 44, EARTHQUAKE
	db 50, SKULL_BASH
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, LEER
	db 22, FURY_ATTACK
	db 30, AGILITY
	db 38, WING_ATTACK
	db 44, SWORDS_DANCE
	db 50, SLASH
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 10, SUPERSONIC
	db 15, LEECH_LIFE
	db 20, CONFUSION
	db 25, POISONPOWDER
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, BODY_SLAM
	db 60, THUNDER
	db 63, BLIZZARD
	db 67, FIRE_BLAST
	db 70, HYPER_BEAM
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 10, GROWL
	db 15, FURY_ATTACK
	db 20, RAGE
	db 25, RAZOR_WIND
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 10, HYPNOSIS
	db 15, WATER_GUN
	db 20, DOUBLESLAP
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, LICK
	db 22, DOUBLESLAP
	db 30, ICE_PUNCH
	db 38, BODY_SLAM
	db 44, THRASH
	db 50, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 52, WING_ATTACK
	db 57, SWIFT
	db 60, FLAMETHROWER
	db 63, SMOKESCREEN
	db 66, SKY_ATTACK
	db 70, FIRE_BLAST
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 52, WING_ATTACK
	db 57, SWIFT
	db 60, ICE_BEAM
	db 63, MIST
	db 66, SKY_ATTACK
	db 70, BLIZZARD
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 52, WING_ATTACK
	db 57, SWIFT
	db 60, THUNDERBOLT
	db 63, AGILITY
	db 66, SKY_ATTACK
	db 70, THUNDER
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 9, PAY_DAY
	db 14, SCREECH
	db 18, FURY_SWIPES
	db 23, DOUBLE_TEAM
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 9, VICEGRIP
	db 14, HARDEN
	db 18, BUBBLEBEAM
	db 23, MIMIC
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 9, QUICK_ATTACK
	db 14, CONFUSE_RAY
	db 20, FIRE_SPIN
	db 24, FLAMETHROWER
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, FIRE_SPIN
	db 24, FLAMETHROWER
	db 36, DOUBLE_TEAM
	db 42, BODY_SLAM
	db 48, REFLECT
	db 55, FIRE_BLAST
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 8, TAIL_WHIP
	db 12, THUNDER_WAVE
	db 17, QUICK_ATTACK
	db 21, DOUBLE_TEAM
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, QUICK_ATTACK
	db 21, DOUBLE_TEAM
	db 34, SLAM
	db 43, THUNDERBOLT
	db 52, AGILITY
	db 60, THUNDER
	db 0

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 10, THUNDERSHOCK
	db 15, AURORA_BEAM
	db 20, EMBER
	db 25, DRAGON_RAGE
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 25, DRAGON_RAGE
	db 35, THUNDERBOLT
	db 40, ICE_BEAM
	db 45, FLAMETHROWER
	db 50, BODY_SLAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 10, MEGA_DRAIN
	db 15, LEER
	db 20, DIG
	db 25, SWIFT
	db 30, SLASH
	db 35, ROCK_SLIDE
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, DIG
	db 25, SWIFT
	db 30, SLASH
	db 35, ROCK_SLIDE
	db 45, EARTHQUAKE
	db 55, HYDRO_PUMP
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 10, SMOKESCREEN
	db 15, WATER_GUN
	db 20, LEER
	db 25, BUBBLEBEAM
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, LEER
	db 25, BUBBLEBEAM
	db 34, DOUBLE_TEAM
	db 38, SWIFT
	db 42, AGILITY
	db 45, WATERFALL
	db 0

MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 11, POISON_STING
	db 15, FURY_SWIPES
	db 18, SWIFT
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, FURY_SWIPES
	db 18, SWIFT
	db 27, SLASH
	db 33, ROCK_SLIDE
	db 38, SWORDS_DANCE
	db 45, EARTHQUAKE
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 10, ROCK_THROW
	db 15, LEER
	db 20, BUBBLEBEAM
	db 25, SWIFT
	db 30, HORN_ATTACK
	db 35, ROCK_SLIDE
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BUBBLEBEAM
	db 25, SWIFT
	db 30, HORN_ATTACK
	db 35, ROCK_SLIDE
	db 45, SPIKE_CANNON
	db 55, HYDRO_PUMP
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 9, POUND
	db 14, DISABLE
	db 20, DEFENSE_CURL
	db 24, DOUBLESLAP
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, DEFENSE_CURL
	db 24, DOUBLESLAP
	db 36, REST
	db 42, BODY_SLAM
	db 48, SUBSTITUTE
	db 55, DOUBLE_EDGE
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 12, GROWL
	db 15, QUICK_ATTACK
	db 18, BITE
	db 22, FOCUS_ENERGY
	db 25, SLAM
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, FOCUS_ENERGY
	db 25, SLAM
	db 35, EMBER
	db 40, DIG
	db 45, FLAMETHROWER
	db 50, SMOKESCREEN
	db 55, EARTHQUAKE
	db 60, FIRE_BLAST
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, FOCUS_ENERGY
	db 25, SLAM
	db 35, THUNDERSHOCK
	db 40, SWIFT
	db 45, THUNDERBOLT
	db 50, AGILITY
	db 55, DOUBLE_EDGE
	db 60, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, FOCUS_ENERGY
	db 25, SLAM
	db 35, WATER_GUN
	db 40, AURORA_BEAM
	db 45, BUBBLEBEAM
	db 50, REST
	db 55, ICE_BEAM
	db 60, HYDRO_PUMP
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 10, LOW_KICK
	db 16, LEER
	db 22, FOCUS_ENERGY
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 8, SUPERSONIC
	db 11, BITE
	db 15, CONFUSE_RAY
	db 18, MEGA_DRAIN
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 8, POISON_STING
	db 11, GLARE
	db 15, ACID
	db 18, BITE
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 8, STUN_SPORE
	db 12, LEECH_LIFE
	db 16, SPORE
	db 20, BIDE
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 10, HYPNOSIS
	db 15, WATER_GUN
	db 20, DOUBLESLAP
	db 28, DEFENSE_CURL
	db 32, BUBBLEBEAM
	db 36, BODY_SLAM
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, DEFENSE_CURL
	db 32, BUBBLEBEAM
	db 36, BODY_SLAM
	db 47, AMNESIA
	db 54, SUBMISSION
	db 60, HYDRO_PUMP
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 7, HARDEN
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, PIN_MISSILE
	db 15, RAGE
	db 20, FOCUS_ENERGY
	db 25, AGILITY
	db 30, DOUBLE_TEAM
	db 35, TWINEEDLE
	db 40, TOXIC
	db 45, SWIFT
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, RAGE
	db 25, RAZOR_WIND
	db 34, TRI_ATTACK
	db 38, AGILITY
	db 42, MIRROR_MOVE
	db 45, DRILL_PECK
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, FURY_SWIPES
	db 23, FOCUS_ENERGY
	db 32, SEISMIC_TOSS
	db 36, THRASH
	db 40, SCREECH
	db 45, JUMP_KICK
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, DIG
	db 20, BIDE
	db 30, SLASH
	db 35, ROCK_SLIDE
	db 40, SCREECH
	db 45, EARTHQUAKE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, CONFUSION
	db 25, POISONPOWDER
	db 34, STUN_SPORE
	db 38, WING_ATTACK
	db 42, SLEEP_POWDER
	db 45, PSYCHIC_M
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, AURORA_BEAM
	db 25, REST
	db 30, BUBBLEBEAM
	db 40, ICE_BEAM
	db 48, TAKE_DOWN
	db 55, BLIZZARD
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 7, HARDEN
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, GUST
	db 15, CONFUSION
	db 20, POISONPOWDER
	db 25, STUN_SPORE
	db 30, SLEEP_POWDER
	db 35, WING_ATTACK
	db 40, SUPERSONIC
	db 45, PSYBEAM
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, SEISMIC_TOSS
	db 34, ROCK_SLIDE
	db 38, MEGA_PUNCH
	db 48, SUBMISSION
	db 54, EARTHQUAKE
	db 60, SKULL_BASH
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, FURY_SWIPES
	db 24, CONFUSION
	db 28, BUBBLEBEAM
	db 40, LIGHT_SCREEN
	db 48, PSYCHIC_M
	db 55, HYDRO_PUMP
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, POISON_GAS
	db 20, RAGE
	db 30, MEDITATE
	db 35, HEADBUTT
	db 40, SUBSTITUTE
	db 45, PSYCHIC_M
	db 0

GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, CONFUSE_RAY
	db 18, MEGA_DRAIN
	db 27, GLARE
	db 33, WING_ATTACK
	db 38, HAZE
	db 45, SLUDGE
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 72, RECOVER
	db 74, TRI_ATTACK
	db 76, MEDITATE
	db 78, METRONOME
	db 80, HYPER_BEAM
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, HARDEN
	db 22, MEGA_PUNCH
	db 30, BODY_SLAM
	db 38, MEGA_KICK
	db 44, SUBSTITUTE
	db 50, DOUBLE_EDGE
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 10, TACKLE
	db 15, WATER_GUN
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, MINIMIZE
	db 26, TOXIC
	db 32, BODY_SLAM
	db 43, SCREECH
	db 48, ACID_ARMOR
	db 55, SLUDGE
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, BUBBLEBEAM
	db 23, MIMIC
	db 32, STOMP
	db 36, SWORDS_DANCE
	db 40, GUILLOTINE
	db 45, CRABHAMMER
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, AURORA_BEAM
	db 24, BUBBLEBEAM
	db 36, BARRIER
	db 42, ICE_BEAM
	db 48, SPIKE_CANNON
	db 55, BLIZZARD
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, THUNDER_WAVE
	db 20, SELFDESTRUCT
	db 34, SWIFT
	db 38, LIGHT_SCREEN
	db 42, THUNDERBOLT
	db 45, EXPLOSION
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, MINIMIZE
	db 24, METRONOME
	db 36, DEFENSE_CURL
	db 42, MEGA_PUNCH
	db 48, LIGHT_SCREEN
	db 55, DOUBLE_EDGE
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, TOXIC
	db 25, SELFDESTRUCT
	db 30, HAZE
	db 40, SLUDGE
	db 48, DOUBLE_EDGE
	db 55, EXPLOSION
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, FURY_SWIPES
	db 23, DOUBLE_TEAM
	db 32, BITE
	db 36, CONFUSE_RAY
	db 40, SLASH
	db 45, TAKE_DOWN
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, ROCK_THROW
	db 23, BONE_CLUB
	db 32, HEADBUTT
	db 36, FOCUS_ENERGY
	db 40, THRASH
	db 45, BONEMERANG
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, GENGAR
	db 0
; Learnset
	db 10, ACID
	db 15, CONFUSION
	db 20, SMOKESCREEN
	db 28, GLARE
	db 32, PSYBEAM
	db 36, HYPNOSIS
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 7, SCRATCH
	db 10, KINESIS
	db 12, CONFUSION
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, DISABLE
	db 25, PSYBEAM
	db 30, REFLECT
	db 44, RECOVER
	db 52, PSYCHIC_M
	db 60, HYPER_BEAM
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 14, WHIRLWIND
	db 22, WING_ATTACK
	db 27, AGILITY
	db 30, SWIFT
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, WING_ATTACK
	db 27, AGILITY
	db 30, SWIFT
	db 44, SWORDS_DANCE
	db 52, MIRROR_MOVE
	db 60, SKY_ATTACK
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, LIGHT_SCREEN
	db 24, BUBBLEBEAM
	db 36, SWIFT
	db 42, RECOVER
	db 48, PSYCHIC_M
	db 55, HYDRO_PUMP
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 12, ACID
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, SLEEP_POWDER
	db 24, RAZOR_LEAF
	db 28, POISONPOWDER
	db 40, GROWTH
	db 50, DOUBLE_EDGE
	db 60, SOLARBEAM
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, SUPERSONIC
	db 25, CONSTRICT
	db 34, BARRIER
	db 38, SCREECH
	db 42, TOXIC
	db 45, WATERFALL
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 10, SUPERSONIC
	db 14, WATER_GUN
	db 20, FURY_ATTACK
	db 24, HORN_ATTACK
	db 28, WATERFALL
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, FURY_ATTACK
	db 24, HORN_ATTACK
	db 28, WATERFALL
	db 40, AGILITY
	db 48, HYDRO_PUMP
	db 55, HORN_DRILL
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 10, TAIL_WHIP
	db 16, QUICK_ATTACK
	db 22, FIRE_SPIN
	db 28, STOMP
	db 34, FLAMETHROWER
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, FIRE_SPIN
	db 28, STOMP
	db 34, FLAMETHROWER
	db 45, TAKE_DOWN
	db 50, AGILITY
	db 55, FIRE_BLAST
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 8, QUICK_ATTACK
	db 10, FOCUS_ENERGY
	db 14, RAGE
	db 17, BITE
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, RAGE
	db 17, BITE
	db 26, HYPER_FANG
	db 32, GLARE
	db 38, SUPER_FANG
	db 45, TAKE_DOWN
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 7, POISON_STING
	db 10, FOCUS_ENERGY
	db 12, FURY_ATTACK
	db 21, HORN_ATTACK
	db 26, DOUBLE_KICK
	db 32, SLUDGE
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 7, POISON_STING
	db 10, TAIL_WHIP
	db 12, FURY_SWIPES
	db 21, BITE
	db 26, DOUBLE_KICK
	db 32, SLUDGE
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 10, DEFENSE_CURL
	db 15, ROCK_THROW
	db 20, BIDE
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, PSYBEAM
	db 22, RECOVER
	db 30, TRI_ATTACK
	db 38, AGILITY
	db 44, METRONOME
	db 50, PSYCHIC_M
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, SUPERSONIC
	db 30, BITE
	db 35, DRAGON_RAGE
	db 40, TAKE_DOWN
	db 45, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 55, SKY_ATTACK
	db 60, HYPER_BEAM
	db 0

MissingNoACEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 5, SONICBOOM
	db 10, THUNDERSHOCK
	db 15, SUPERSONIC
	db 20, THUNDER_WAVE
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 7, SMOKESCREEN
	db 10, EMBER
	db 12, RAGE
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 7, WITHDRAW
	db 10, WATER_GUN
	db 12, AURORA_BEAM
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 7, SMOKESCREEN
	db 10, EMBER
	db 12, RAGE
	db 20, DRAGON_RAGE
	db 25, FLAMETHROWER
	db 30, SLASH
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 7, WITHDRAW
	db 10, WATER_GUN
	db 12, AURORA_BEAM
	db 20, BITE
	db 25, BUBBLEBEAM
	db 30, ICE_BEAM
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, DRAGON_RAGE
	db 25, FLAMETHROWER
	db 30, SLASH
	db 44, SKY_ATTACK
	db 52, HYPER_BEAM
	db 60, FIRE_BLAST
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 8, SLEEP_POWDER
	db 12, ACID
	db 18, POISONPOWDER
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 8, SLEEP_POWDER
	db 12, ACID
	db 18, POISONPOWDER
	db 24, MEGA_DRAIN
	db 28, STUN_SPORE
	db 32, SLUDGE
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, MEGA_DRAIN
	db 28, STUN_SPORE
	db 32, SLUDGE
	db 44, REST
	db 52, PETAL_DANCE
	db 60, SOLARBEAM
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 8, WRAP
	db 12, STUN_SPORE
	db 18, ACID
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 8, WRAP
	db 12, STUN_SPORE
	db 18, ACID
	db 24, RAZOR_LEAF
	db 28, SLEEP_POWDER
	db 32, POISONPOWDER
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, RAZOR_LEAF
	db 28, SLEEP_POWDER
	db 32, POISONPOWDER
	db 44, SLUDGE
	db 52, SLAM
	db 60, SOLARBEAM
	db 0
