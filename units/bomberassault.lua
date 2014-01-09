unitDef = {
  unitname            = [[bomberassault]],
  name                = [[Eclipse]],
  description         = [[Assault Bomber (Anti-static)]],
  amphibious          = true,
  --autoheal			  = 25,
  buildCostEnergy     = 1000,
  buildCostMetal      = 1000,
  builder             = false,
  buildPic            = [[bomberassault.png]],
  buildTime           = 1000,
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canLoopbackAttack   = false,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[-2 0 0]],
  collisionVolumeScales  = [[32 12 40]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  crashDrag           = 0.02,
  cruiseAlt           = 250,

  customParams        = {
    helptext       = [[The Eclipse's imposing hull can weather significant punishment while steadily blazing to deliver its massive payload of devastation, but the unguided bomb has problems with hitting mobile targets, and big size makes it an easy target.]],
    --description_bp = [[Bombardeiro de implos?o]],
    --description_de = [[Implosion Bomber]],
    --description_fr = [[Bombardier r Implosion]],
    --description_pl = [[Bombowiec Implozyjny]],
    --helptext_bp    = [[]],
    --helptext_de    = [[Licho ist ein mächtiger Bomber, der alles in Schutt und Asche legt. Seine Schlagkraft und Ausdauer ist riesig, doch muss er nach jedem Angriff Munition nachladen, was ihn eher für Angriffe auf einzelne Ziele prädestiniert.]],
    --helptext_fr    = [[Le Licho est tout simplement la mort venue du ciel. Ce bombardier lourdement blindé et relativement lent transporte une tete nucléaire tactique r implosion. Capable de faire des ravages dans les lignes ennemies, ou de détruire des structures lourdement blindées. Tout simplement mortel utilisé en petites escadres.]],
    --helptext_pl    = [[Licho spuszcza pojedyncz�?niszczycielsk�?bomb�?o dużej sile i obszarze rażenia, która może rozrzuci�?mniejsze jednostki wokó�? Jest też wystarczaj�?o wytrzymały, by lata�?wśród umiarkowanej ilości obrony przeciwlotniczej. Jest jednak bardzo drogi, co nie pozwala na lekkomyślne używanie.]],
    modelradius    = [[10]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bombernuke]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  mass                = 1000,
  maxAcc              = 0.5,
  maxDamage           = 4000,
  maxElevator         = 0.01,
  maxRudder           = 0.003,
  maxFuel             = 1000000,
  maxVelocity         = 6,
  minCloakDistance    = 75,
  mygravity           = 1,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[zeppelin.dae]],
  --refuelTime		  = 16,
  script			  = [[bomberassault.lua]],
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],
  side                = [[ARM]],
  sightDistance       = 660,
  turnRadius          = 0,
  smoothAnim          = true,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ZEPPELIN_BOMB]],
	  badTargetCategory	 = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK SUB TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs          = {
    ZEPPELIN_BOMB = {
      name                    = [[Heavy Superbomb]],
      areaOfEffect            = 100,
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 10,
      craterMult              = 1,
	  
      damage                  = {
        default = 2500,
        planes  = 2500,
        subs    = 2500,
      },

      edgeEffectiveness       = 0.7,
	  explosionGenerator      = [[custom:slam]],
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      manualBombSettings      = true,
      model                   = [[zeppelin_bomb.dae]],
      myGravity               = 0.15,
      noSelfDamage            = true,
      range                   = 500,
      reloadtime              = 10,
      soundHit                = [[weapon/missile/liche_hit]],
      soundStart              = [[weapon/bomb_drop]],
      weaponType              = [[AircraftBomb]],
    },


  },


  featureDefs         = {
    DEAD  = {
      description      = [[Wreckage - Eclipse]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2200,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 400,
      object           = [[zeppelin_dead.dae]],
      reclaimable      = true,
      reclaimTime      = 400,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Eclipse]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2200,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[debris3x3b.s3o]],
      reclaimable      = true,
      reclaimTime      = 200,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ bomberassault = unitDef })
