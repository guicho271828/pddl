(DEFINE (PROBLEM SATELLITE-TYPED-19) (:DOMAIN SATELLITE-TYPED)
 (:OBJECTS PHENOMENON24 - DIRECTION STAR23 - DIRECTION PLANET22 - DIRECTION
  PLANET21 - DIRECTION PHENOMENON20 - DIRECTION STAR19 - DIRECTION STAR18 -
  DIRECTION PLANET17 - DIRECTION STAR16 - DIRECTION PLANET15 - DIRECTION STAR14
  - DIRECTION PHENOMENON13 - DIRECTION STAR12 - DIRECTION PHENOMENON11 -
  DIRECTION STAR10 - DIRECTION PLANET9 - DIRECTION PHENOMENON8 - DIRECTION
  PHENOMENON7 - DIRECTION STAR6 - DIRECTION PHENOMENON5 - DIRECTION
  GROUNDSTATION0 - DIRECTION STAR3 - DIRECTION STAR2 - DIRECTION GROUNDSTATION4
  - DIRECTION STAR1 - DIRECTION INFRARED3 - MODE SPECTROGRAPH0 - MODE INFRARED7
  - MODE THERMOGRAPH1 - MODE IMAGE5 - MODE INFRARED2 - MODE SPECTROGRAPH6 -
  MODE IMAGE4 - MODE INSTRUMENT24 - INSTRUMENT INSTRUMENT23 - INSTRUMENT
  INSTRUMENT22 - INSTRUMENT SATELLITE4 - SATELLITE INSTRUMENT21 - INSTRUMENT
  INSTRUMENT20 - INSTRUMENT INSTRUMENT19 - INSTRUMENT INSTRUMENT18 - INSTRUMENT
  INSTRUMENT17 - INSTRUMENT INSTRUMENT16 - INSTRUMENT INSTRUMENT15 - INSTRUMENT
  INSTRUMENT14 - INSTRUMENT SATELLITE3 - SATELLITE INSTRUMENT13 - INSTRUMENT
  INSTRUMENT12 - INSTRUMENT INSTRUMENT11 - INSTRUMENT INSTRUMENT10 - INSTRUMENT
  INSTRUMENT9 - INSTRUMENT INSTRUMENT8 - INSTRUMENT SATELLITE2 - SATELLITE
  INSTRUMENT7 - INSTRUMENT INSTRUMENT6 - INSTRUMENT INSTRUMENT5 - INSTRUMENT
  INSTRUMENT4 - INSTRUMENT INSTRUMENT3 - INSTRUMENT SATELLITE1 - SATELLITE
  INSTRUMENT2 - INSTRUMENT INSTRUMENT1 - INSTRUMENT INSTRUMENT0 - INSTRUMENT
  SATELLITE0 - SATELLITE)
 (:INIT (POINTING SATELLITE4 STAR14) (POWER_AVAIL SATELLITE4)
  (ON_BOARD INSTRUMENT24 SATELLITE4) (ON_BOARD INSTRUMENT23 SATELLITE4)
  (ON_BOARD INSTRUMENT22 SATELLITE4)
  (CALIBRATION_TARGET INSTRUMENT24 GROUNDSTATION0)
  (SUPPORTS INSTRUMENT24 SPECTROGRAPH0) (SUPPORTS INSTRUMENT24 INFRARED3)
  (CALIBRATION_TARGET INSTRUMENT23 STAR3) (SUPPORTS INSTRUMENT23 THERMOGRAPH1)
  (SUPPORTS INSTRUMENT23 INFRARED7) (CALIBRATION_TARGET INSTRUMENT22 STAR2)
  (SUPPORTS INSTRUMENT22 IMAGE5) (SUPPORTS INSTRUMENT22 THERMOGRAPH1)
  (POINTING SATELLITE3 PHENOMENON20) (POWER_AVAIL SATELLITE3)
  (ON_BOARD INSTRUMENT21 SATELLITE3) (ON_BOARD INSTRUMENT20 SATELLITE3)
  (ON_BOARD INSTRUMENT19 SATELLITE3) (ON_BOARD INSTRUMENT18 SATELLITE3)
  (ON_BOARD INSTRUMENT17 SATELLITE3) (ON_BOARD INSTRUMENT16 SATELLITE3)
  (ON_BOARD INSTRUMENT15 SATELLITE3) (ON_BOARD INSTRUMENT14 SATELLITE3)
  (CALIBRATION_TARGET INSTRUMENT21 GROUNDSTATION4)
  (SUPPORTS INSTRUMENT21 THERMOGRAPH1) (SUPPORTS INSTRUMENT21 INFRARED2)
  (CALIBRATION_TARGET INSTRUMENT20 STAR2) (SUPPORTS INSTRUMENT20 INFRARED2)
  (SUPPORTS INSTRUMENT20 INFRARED3) (CALIBRATION_TARGET INSTRUMENT19 STAR3)
  (SUPPORTS INSTRUMENT19 SPECTROGRAPH6) (SUPPORTS INSTRUMENT19 INFRARED7)
  (SUPPORTS INSTRUMENT19 INFRARED3) (CALIBRATION_TARGET INSTRUMENT18 STAR2)
  (SUPPORTS INSTRUMENT18 SPECTROGRAPH6) (SUPPORTS INSTRUMENT18 IMAGE4)
  (CALIBRATION_TARGET INSTRUMENT17 GROUNDSTATION0)
  (SUPPORTS INSTRUMENT17 IMAGE5) (SUPPORTS INSTRUMENT17 INFRARED7)
  (SUPPORTS INSTRUMENT17 IMAGE4) (CALIBRATION_TARGET INSTRUMENT16 STAR2)
  (SUPPORTS INSTRUMENT16 SPECTROGRAPH6) (SUPPORTS INSTRUMENT16 IMAGE4)
  (CALIBRATION_TARGET INSTRUMENT15 STAR1) (SUPPORTS INSTRUMENT15 INFRARED2)
  (CALIBRATION_TARGET INSTRUMENT14 GROUNDSTATION4)
  (SUPPORTS INSTRUMENT14 INFRARED2) (SUPPORTS INSTRUMENT14 THERMOGRAPH1)
  (POINTING SATELLITE2 PHENOMENON5) (POWER_AVAIL SATELLITE2)
  (ON_BOARD INSTRUMENT13 SATELLITE2) (ON_BOARD INSTRUMENT12 SATELLITE2)
  (ON_BOARD INSTRUMENT11 SATELLITE2) (ON_BOARD INSTRUMENT10 SATELLITE2)
  (ON_BOARD INSTRUMENT9 SATELLITE2) (ON_BOARD INSTRUMENT8 SATELLITE2)
  (CALIBRATION_TARGET INSTRUMENT13 STAR2) (SUPPORTS INSTRUMENT13 INFRARED3)
  (CALIBRATION_TARGET INSTRUMENT12 STAR3) (SUPPORTS INSTRUMENT12 THERMOGRAPH1)
  (CALIBRATION_TARGET INSTRUMENT11 STAR2) (SUPPORTS INSTRUMENT11 INFRARED2)
  (CALIBRATION_TARGET INSTRUMENT10 GROUNDSTATION4)
  (SUPPORTS INSTRUMENT10 IMAGE5) (SUPPORTS INSTRUMENT10 INFRARED7)
  (SUPPORTS INSTRUMENT10 IMAGE4) (CALIBRATION_TARGET INSTRUMENT9 STAR3)
  (SUPPORTS INSTRUMENT9 SPECTROGRAPH0) (CALIBRATION_TARGET INSTRUMENT8 STAR1)
  (SUPPORTS INSTRUMENT8 INFRARED7) (SUPPORTS INSTRUMENT8 INFRARED3)
  (POINTING SATELLITE1 PLANET21) (POWER_AVAIL SATELLITE1)
  (ON_BOARD INSTRUMENT7 SATELLITE1) (ON_BOARD INSTRUMENT6 SATELLITE1)
  (ON_BOARD INSTRUMENT5 SATELLITE1) (ON_BOARD INSTRUMENT4 SATELLITE1)
  (ON_BOARD INSTRUMENT3 SATELLITE1) (CALIBRATION_TARGET INSTRUMENT7 STAR2)
  (SUPPORTS INSTRUMENT7 SPECTROGRAPH0) (SUPPORTS INSTRUMENT7 THERMOGRAPH1)
  (SUPPORTS INSTRUMENT7 SPECTROGRAPH6) (CALIBRATION_TARGET INSTRUMENT6 STAR3)
  (SUPPORTS INSTRUMENT6 INFRARED7) (SUPPORTS INSTRUMENT6 IMAGE5)
  (CALIBRATION_TARGET INSTRUMENT5 GROUNDSTATION4)
  (SUPPORTS INSTRUMENT5 SPECTROGRAPH6) (SUPPORTS INSTRUMENT5 SPECTROGRAPH0)
  (SUPPORTS INSTRUMENT5 THERMOGRAPH1) (CALIBRATION_TARGET INSTRUMENT4 STAR3)
  (SUPPORTS INSTRUMENT4 SPECTROGRAPH0) (CALIBRATION_TARGET INSTRUMENT3 STAR1)
  (SUPPORTS INSTRUMENT3 IMAGE5) (SUPPORTS INSTRUMENT3 THERMOGRAPH1)
  (POINTING SATELLITE0 PLANET21) (POWER_AVAIL SATELLITE0)
  (ON_BOARD INSTRUMENT2 SATELLITE0) (ON_BOARD INSTRUMENT1 SATELLITE0)
  (ON_BOARD INSTRUMENT0 SATELLITE0) (CALIBRATION_TARGET INSTRUMENT2 STAR1)
  (SUPPORTS INSTRUMENT2 SPECTROGRAPH0) (SUPPORTS INSTRUMENT2 THERMOGRAPH1)
  (SUPPORTS INSTRUMENT2 INFRARED3) (CALIBRATION_TARGET INSTRUMENT1 STAR3)
  (SUPPORTS INSTRUMENT1 SPECTROGRAPH0)
  (CALIBRATION_TARGET INSTRUMENT0 GROUNDSTATION0) (SUPPORTS INSTRUMENT0 IMAGE4)
  (SUPPORTS INSTRUMENT0 INFRARED2))
 (:GOAL
  (AND (POINTING SATELLITE0 PLANET17) (HAVE_IMAGE PHENOMENON5 INFRARED7)
       (HAVE_IMAGE PHENOMENON5 IMAGE4) (HAVE_IMAGE PHENOMENON7 THERMOGRAPH1)
       (HAVE_IMAGE PLANET9 SPECTROGRAPH0) (HAVE_IMAGE PLANET9 SPECTROGRAPH6)
       (HAVE_IMAGE STAR10 INFRARED3) (HAVE_IMAGE STAR10 SPECTROGRAPH6)
       (HAVE_IMAGE PHENOMENON11 INFRARED2) (HAVE_IMAGE STAR12 SPECTROGRAPH6)
       (HAVE_IMAGE STAR12 THERMOGRAPH1) (HAVE_IMAGE PHENOMENON13 INFRARED7)
       (HAVE_IMAGE PHENOMENON13 INFRARED2) (HAVE_IMAGE STAR14 INFRARED2)
       (HAVE_IMAGE PLANET15 INFRARED2) (HAVE_IMAGE STAR16 IMAGE4)
       (HAVE_IMAGE PLANET17 IMAGE5) (HAVE_IMAGE PLANET17 IMAGE4)
       (HAVE_IMAGE STAR18 INFRARED2) (HAVE_IMAGE STAR19 INFRARED3)
       (HAVE_IMAGE STAR19 THERMOGRAPH1) (HAVE_IMAGE PHENOMENON20 SPECTROGRAPH0)
       (HAVE_IMAGE PLANET21 INFRARED3) (HAVE_IMAGE PLANET21 IMAGE5)
       (HAVE_IMAGE PLANET22 INFRARED2) (HAVE_IMAGE STAR23 INFRARED2)
       (HAVE_IMAGE PHENOMENON24 SPECTROGRAPH6)
       (HAVE_IMAGE PHENOMENON24 IMAGE5))))