
(define (domain simple-office)
  (:requirements :strips :typing :fluents :disjunctive-preconditions :durative-actions)
  (:types
	robot
	waypoint
	object
  )
    ; in my implementation of the domain, the robot can only move to adjacent waypoints and can only pick up objects that are at adjacent waypoints
    ; the robot cannot move diagonally
    ; the robot cannot pick up objects that are not at adjacent waypoints
    ; the robot must not be at a waypoint to pick up an object from that waypoint
    ; the robot must be adjacent a waypoint to drop an object at that waypoint
    ; the robot cannot drop an object at a waypoint that is not adjacent to it
    ; the robot cannot drop an object at a waypoint that is already occupied by another object
    ; also I discritized the world into 9 waypoints 3 rows and 3 columns

(:predicates
	(robot_at ?r - robot ?w - waypoint)
	(at_waypoint ?o - object ?w - waypoint)
	(handempty)
	(clear ?w - waypoint)
	(holding ?o - object)
	(connected ?wp1 - waypoint ?wp2 - waypoint)
)

(:durative-action move
	:parameters (?r - robot ?from - waypoint ?to - waypoint)
	:duration (= ?duration 10)
	:condition (and 
		(at start(robot_at ?r ?from))
		(at start (connected ?from ?to))
		(at start (connected ?to ?from))
		)
	:effect (and 
		(at start (not (robot_at ?r ?from)))
		(at end (robot_at ?r ?to))
	)
)


(:durative-action pick-up
	:parameters (?r - robot ?o - object ?from - waypoint ?position - waypoint)
	:duration (= ?duration 10)
	:condition (and 
		; check that the robot is at the waypoint
		(at start (robot_at ?r ?from))
		; check that the object is at the waypoint
		(at start(at_waypoint ?o ?position))
		; check that the robot is holding nothing
		(at start(handempty))
		; check that the waypoint is connected to the waypoint we want to pick up the object from
		(at start (connected ?from ?position))
		(at start (connected ?position ?from))
		; check that the waypoint to pick up the object from is clear: not sure about this one
		; (at start (clear ?from))
		)
	:effect (and 
		; check that the object is no longer on the waypoint
		(at start (not (at_waypoint ?o ?position)))
		; check that the robot is now holding the object
		(at end (holding ?o))
		; check that the waypoint is now clear
		(at end (clear ?position))
		; check that the robot's hand is not empty
		(at end (not (handempty)))
		)
)


(:durative-action put-down
	:parameters (?r - robot ?o - object ?from - waypoint ?to - waypoint)
	:duration (= ?duration 10)
	:condition (and 
		; check that the robot is at the waypoint
		(at start (robot_at ?r ?from))
		; check that the robot is holding the object
		(at start (holding ?o))
		; check that the waypoint is connected to the next waypoint
		(at start (connected ?from ?to))
		(at start (connected ?to ?from))
		; check that the waypoint to drop the object on is clear
		; (at start (clear ?to))
	)

	:effect (and 
		; check that the robot is no longer holding the object
		(at start (not (holding ?o)))
		; check that the object is now on the waypoint
		(at end (at_waypoint ?o ?to))
		; check that the waypoint is no longer clear
		(at end (not (clear ?to)))
		; check that the robot's hand is now empty
		(at end (handempty))
		)
)

)