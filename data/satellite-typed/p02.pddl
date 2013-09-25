(DEFINE (PROBLEM SATELLITE-TYPED-2) (:DOMAIN SATELLITE-TYPED)
 (:OBJECTS STAR7 - DIRECTION PHENOMENON6 - DIRECTION PHENOMENON5 - DIRECTION
  PLANET4 - DIRECTION PLANET3 - DIRECTION GROUNDSTATION2 - DIRECTION STAR0 -
  DIRECTION GROUNDSTATION1 - DIRECTION IMAGE2 - MODE INFRARED1 - MODE INFRARED0
  - MODE INSTRUMENT1 - INSTRUMENT INSTRUMENT0 - INSTRUMENT SATELLITE0 -
  SATELLITE)
 (:INIT (POINTING SATELLITE0 PLANET4) (POWER_AVAIL SATELLITE0)
  (ON_BOARD INSTRUMENT1 SATELLITE0) (ON_BOARD INSTRUMENT0 SATELLITE0)
  (CALIBRATION_TARGET INSTRUMENT1 GROUNDSTATION2)
  (SUPPORTS INSTRUMENT1 INFRARED0) (SUPPORTS INSTRUMENT1 INFRARED1)
  (SUPPORTS INSTRUMENT1 IMAGE2) (CALIBRATION_TARGET INSTRUMENT0 STAR0)
  (SUPPORTS INSTRUMENT0 INFRARED0) (SUPPORTS INSTRUMENT0 INFRARED1))
 (:GOAL
  (AND (HAVE_IMAGE PLANET3 INFRARED0) (HAVE_IMAGE PLANET4 INFRARED0)
       (HAVE_IMAGE PHENOMENON5 IMAGE2) (HAVE_IMAGE PHENOMENON6 INFRARED0)
       (HAVE_IMAGE STAR7 INFRARED0))))