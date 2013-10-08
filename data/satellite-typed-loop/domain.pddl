(define (domain satellite-typed)
(:requirements :equality :strips :typing)
(:types satellite
        direction
        instrument
        mode)
(:predicates
 (on_board ?i - instrument ?s - satellite)
 (supports ?i - instrument ?m - mode)
 (pointing ?s - satellite ?d - direction)
 (power_avail ?s - satellite)
 (power_on ?i - instrument)
 (calibrated ?i - instrument)
 (have_image ?d - direction ?m - mode)
 (calibration_target ?i - instrument ?d - direction))

(:action turn_to
 :parameters ( ?s - satellite ?d_new ?d_prev - direction)
 :precondition
 (and
      (pointing ?s ?d_prev)
      )
 :effect
 (and (pointing ?s ?d_new)
      (not (pointing ?s ?d_prev))))

(:action switch_on
 :parameters (?i - instrument ?s - satellite)
 :precondition
 (and (on_board ?i ?s)
      (power_avail ?s))
 :effect
 (and (power_on ?i)
      (not (calibrated ?i))
      (not (power_avail ?s))))

(:action switch_off
 :parameters (?i - instrument ?s - satellite)
 :precondition
	(and (on_board ?i ?s)
             (power_on ?i))
 :effect
	(and (power_avail ?s)
             (not (power_on ?i))))

(:action calibrate
 :parameters (?i - instrument ?s - satellite ?d - direction)
 :precondition
	(and (on_board ?i ?s)
             (calibration_target ?i ?d)
             (pointing ?s ?d)
             (power_on ?i))
 :effect
	 (calibrated ?i))

(:action take_image
 :parameters (?i - instrument ?s - satellite ?d - direction ?m - mode)
 :precondition
	(and (calibrated ?i)
             (on_board ?i ?s)
             (supports ?i ?m)
             (power_on ?i)
             (pointing ?s ?d)) ; removed a duplicated power_on
 :effect
	 (have_image ?d ?m))

)
