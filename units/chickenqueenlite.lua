unitDef = {
  unitname            = [[chickenqueenlite]],
  name                = [[Chicken Queen Junior]],
  description         = [[Clucking Hell!]],
  acceleration        = 1.2,
  airHoverFactor      = 0,
  amphibious          = true,
  bmcode              = [[1]],
  brakeRate           = 1,
  buildCostEnergy     = 0,
  buildCostMetal      = 0,
  builder             = false,
  buildPic            = [[chickenf.png]],
  buildTime           = 12000,
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canLand             = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  canSubmerge         = false,
  category            = [[GUNSHIP]],
  collide             = false,
  cruiseAlt           = 150,

  customParams        = {
    description_fr = [[Le mal incarn�!]],
    helptext       = [[Two words: RUN AWAY! The Chicken Queen is the matriach of the Thunderbird colony, and when aggravated is virtually impossible to stop. It can spit acid, spray spores to kill aircraft.Only the most determined, focused assault can hope to stop this beast in her tracks.]],
	helptext_fr    = [[Deux mots : FUIS MALHEUREUX ! La reine poulet est la matriarche de la colonie et une fois sa col�re atis�e elle est presque indestructible. Elle crache un acide extr�mement corrosif, largue des poulets et envoie des spores aux unit�s volantes. Seulement les assauts les plus brutaux et les mieux coordonn�s peuvent esp�rer venir � bout de cette monstruosit�.]],
  },

  defaultmissiontype  = [[Standby]],
  explodeAs           = [[NOWEAPON]],
  floater             = true,
  footprintX          = 8,
  footprintZ          = 8,
  hoverattack         = true,
  iconType            = [[chickenq]],
  idleAutoHeal        = 20,
  idleTime            = 300,
  leaveTracks         = true,
  maneuverleashlength = [[64000]],
  mass                = 1848,
  maxDamage           = 100000,
  maxVelocity         = 3,
  minCloakDistance    = 75,
  moverate1           = [[32]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE]],
  objectName          = [[chickenflyerqueen.s3o]],
  power               = 30000,
  script              = [[chickenflyerqueen.cob]],
  seismicSignature    = 0,
  selfDestructAs      = [[NOWEAPON]],
  separation          = [[0.2]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },

  },

  side                = [[THUNDERBIRDS]],
  sightDistance       = 4096,
  smoothAnim          = true,
  steeringmode        = [[2]],
  TEDClass            = [[VTOL]],
  turnRate            = 900,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[GOO]],
      badTargetCategory  = [[GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[SPORES]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[SPORES]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    GOO        = {
      name                    = [[Blob]],
      areaOfEffect            = 200,
      burst                   = 8,
      burstrate               = 0.01,
      cegTag                  = [[queen_trail]],
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1500,
        planes  = 1500,
        subs    = 4,
      },

      endsmoke                = [[0]],
      explosionGenerator      = [[custom:large_green_goo]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      noSelfDamage            = true,
      proximityPriority       = -4,
      range                   = 500,
      reloadtime              = 6,
      renderType              = 4,
      rgbColor                = [[0.2 0.6 0]],
      size                    = 8,
      sizeDecay               = 0,
      soundStart              = [[chickens/bigchickenroar]],
      sprayAngle              = 6100,
      startsmoke              = [[0]],
      tolerance               = 5000,
      turret                  = true,
      weaponTimer             = 0.2,
      weaponType              = [[Cannon]],
      weaponVelocity          = 600,
    },


    QUEENCRUSH = {
      name                    = [[ChickenKick]],
      areaOfEffect            = 512,
      collideFriendly         = false,
      craterBoost             = 0.001,
      craterMult              = 0.002,

      damage                  = {
        default    = 10,
        chicken    = 0.001,
        commanders = 1,
        planes     = 10,
        subs       = 5,
      },

      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:NONE]],
      impulseBoost            = 2000,
      impulseFactor           = 1,
      intensity               = 1,
      interceptedByShieldType = 1,
      lineOfSight             = false,
      noSelfDamage            = true,
      range                   = 256,
      reloadtime              = 1,
      renderType              = 4,
      rgbColor                = [[1 1 1]],
      thickness               = 1,
      tolerance               = 100,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 0.8,
    },


    SPIKES     = {
      name                    = [[Spike]],
      accuracy                = 2048,
      areaOfEffect            = 16,
      avoidFeature            = true,
      avoidFriendly           = true,
      burnblow                = true,
      burst                   = 10,
      burstrate               = 0.2,
      collideFeature          = true,
      collideFriendly         = true,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 160,
        planes  = 160,
        subs    = 7,
      },

      explosionGenerator      = [[custom:EMG_HIT]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      model                   = [[spike.s3o]],
      noSelfDamage            = true,
      propeller               = [[1]],
      range                   = 500,
      reloadtime              = 1.5,
      renderType              = 1,
      selfprop                = true,
      soundHit                = [[chickens/spike_hit]],
      soundStart              = [[chickens/spike_fire]],
      startVelocity           = 320,
      subMissile              = 1,
      turret                  = true,
      waterWeapon             = false,
      weaponAcceleration      = 100,
      weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 320,
    },


    SPORES     = {
      name                    = [[Spores]],
      areaOfEffect            = 24,
      avoidFriendly           = false,
      burst                   = 8,
      burstrate               = 0.1,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 75,
        planes  = [[150]],
        subs    = 7.5,
      },

      dance                   = 60,
      dropped                 = 1,
      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      fixedlauncher           = true,
      flightTime              = 5,
      groundbounce            = 1,
      guidance                = true,
      heightmod               = 0.5,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = [[chickeneggpink.s3o]],
      noSelfDamage            = true,
      range                   = 500,
      reloadtime              = 4,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      sprayangle              = 4096,
      startsmoke              = [[1]],
      startVelocity           = 200,
      texture1                = [[]],
      texture2                = [[sporetrail]],
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 24000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 100,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 500,
      wobble                  = 32000,
    },

  },

}

return lowerkeys({ chickenqueenlite = unitDef })
