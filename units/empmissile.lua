unitDef = {
  unitname               = [[empmissile]],
  name                   = [[Shockley]],
  description            = [[EMP missile]],
  acceleration           = 1,
  antiweapons            = [[1]],
  bmcode                 = [[0]],
  brakeRate              = 0,
  buildAngle             = 8192,
  buildCostEnergy        = 600,
  buildCostMetal         = 600,
  builder                = false,
  buildPic               = [[empmissile.png]],
  buildTime              = 600,
  canAttack              = true,
  canGuard               = true,
  canstop                = [[1]],
  category               = [[SINK UNARMED]],
  collisionVolumeOffsets = [[0 15 0]],
  collisionVolumeScales  = [[20 50 20]],
  collisionVolumeTest	 = 1,
  collisionVolumeType	 = [[CylY]],

  customParams           = {
    description_de = [[EMP Rakete]],
    helptext       = [[The Shockley disables units in a small area for up to 45 seconds.]],
	helptext_de    = [[Der Shockley paralysiert Einheiten in seiner kleinen Reichweite f�r bis zu 45 Sekunden.]],
    mobilebuilding = [[1]],
  },

  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 1,
  footprintZ             = 1,
  idleAutoHeal           = 5,
  idleTime               = 1800,
  mass                   = 217,
  maxDamage              = 1000,
  maxSlope               = 18,
  maxVelocity            = 0,
  maxWaterDepth          = 0,
  minCloakDistance       = 150,
  noAutoFire             = false,
  objectName             = [[wep_empmissile.s3o]],
  script                 = [[cruisemissile.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 200,
  smoothAnim             = true,
  TEDClass               = [[SPECIAL]],
  turnRate               = 0,
  useBuildingGroundDecal = false,
  workerTime             = 0,
  yardMap                = [[o]],

  weapons                = {

    {
      def                = [[EMP_WEAPON]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER FIXEDWING GUNSHIP SUB]],
    },

  },


  weaponDefs             = {

    EMP_WEAPON = {
      name                    = [[EMP Missile]],
      areaOfEffect            = 280,
      avoidFriendly           = false,
	  cegTag                  = [[emptrail]],
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default        = 30000,
        commanders     = 3000,
        empresistant75 = 7500,
        empresistant99 = 300,
        planes         = 30000,
      },

      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:POWERPLANT_EXPLOSION]],
      fireStarter             = 0,
      guidance                = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      model                   = [[wep_empmissile.s3o]],
      noautorange             = [[1]],
      noSelfDamage            = true,
      paralyzer               = true,
      paralyzeTime            = 45,
      propeller               = [[1]],
      range                   = 3500,
      reloadtime              = 3,
      renderType              = 1,
      selfprop                = true,
      shakeduration           = [[1.5]],
      shakemagnitude          = [[32]],
      smokedelay              = [[0.1]],
      smokeTrail              = false,
      soundHit                = [[weapon/missile/emp_missile_hit]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      startsmoke              = [[1]],
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 12000,
      vlaunch                 = true,
      weaponAcceleration      = 180,
      weaponTimer             = 5,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1200,
    },

  },


  featureDefs            = {
  },

}

return lowerkeys({ empmissile = unitDef })
