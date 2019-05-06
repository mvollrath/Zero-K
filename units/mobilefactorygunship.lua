unitDef = {
  unitname                      = [[mobilefactorygunship]],
  name                          = [[Mobile Gunship Plant]],
  description                   = [[Produces Gunships, Builds at 10 m/s]],
  acceleration                  = 0.06,
  activateWhenBuilt             = true,
  airHoverFactor                = -1,
  airStrafe                     = 0,
  bankingAllowed                = false,
  brakeRate                     = 0.03,
  buildCostMetal                = Shared.FACTORY_COST,
  buildDistance                 = 180,
  builder                       = true,
  --buildingGroundDecalDecaySpeed = 30,
  --buildingGroundDecalSizeX      = 10,
  --buildingGroundDecalSizeY      = 10,
  --buildingGroundDecalType       = [[factorygunship_aoplane.dds]],

  buildoptions                  = {
    [[gunshipcon]],
    [[gunshipbomb]],
    [[gunshipemp]],
    [[gunshipraid]],
    [[gunshipskirm]],
    [[gunshipheavyskirm]],
    [[gunshipassault]],
    [[gunshipkrow]],
	[[gunshipaa]],
    [[gunshiptrans]],
    [[gunshipheavytrans]],
    [[factorygunship]],
  },

  buildPic                      = [[factorygunship.png]],
  buildRange3D                  = false,
  canFly                        = true,
  canGuard                      = true,
  canMove                       = true,
  canPatrol                     = true,
  canSubmerge                   = false,
  category                      = [[GUNSHIP UNARMED]],
  collide                       = true,
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[86 86 86]],
  collisionVolumeType           = [[ellipsoid]],
  selectionVolumeOffsets        = [[0 10 0]],
  selectionVolumeScales         = [[104 60 96]],
  selectionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  cruiseAlt                     = 80,

  customParams                  = {
    airstrafecontrol = [[0]],
    midposoffset = [[0 4 0]],
    morphto = [[factorygunship]],
    morphtime = 0,
    landflystate   = [[1]],
    sortName = [[3]],
	modelradius    = [[43]],
	nongroundfac = [[1]],
	default_spacing = 8,
    selectionscalemult = 1,
	factorytab       = 1,
	shared_energy_gen = 1,
  },

  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 7,
  footprintZ                    = 7,
  hoverAttack                   = true,
  iconType                      = [[facgunship]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 36,
  maxVelocity                   = 1.0,
  minCloakDistance              = 150,
  moveState                     = 1,
  noAutoFire                    = false,
  objectName                    = [[CORPLAS.s3o]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  script                        = [[mobilefactorygunship.lua]],
  showNanoSpray                 = false,
  sightDistance                 = 273,
  turnRate                      = 148,
  useBuildingGroundDecal        = false,
  waterline						= 0,
  workerTime                    = Shared.FACTORY_BUILDPOWER,

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 7,
      footprintZ       = 6,
      object           = [[corplas_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ mobilefactorygunship = unitDef })