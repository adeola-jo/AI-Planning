(define (problem pick-and-place)
(:domain simple-office)
(:objects 
    wp1 wp2 wp3 wp4 wp5 wp6 wp7 wp8 wp9 - waypoint
    robot1 - robot
    cup - object
)



(:init 
    (robot_at robot1 wp4)
    (handempty)
    (at_waypoint cup wp9)
    
    ; in my implementation of the domain, the robot can only move to adjacent waypoints and can only pick up objects that are at adjacent waypoints
    ; the robot cannot move diagonally
    ; the robot cannot pick up objects that are not at adjacent waypoints
    ; the robot must not be at a waypoint to pick up an object from that waypoint
    ; the robot must be adjacent a waypoint to drop an object at that waypoint
    ; the robot cannot drop an object at a waypoint that is not adjacent to it
    ; the robot cannot drop an object at a waypoint that is already occupied by another object
    ; also I discritized the world into 9 waypoints 3 rows and 3 columns

    (connected wp1 wp2)
    (connected wp2 wp1)

    (connected wp2 wp3)
    (connected wp3 wp2)

    (connected wp1 wp4)
    (connected wp4 wp1)

    (connected wp2 wp5)
    (connected wp5 wp2)

    (connected wp3 wp6)
    (connected wp6 wp3)

    (connected wp4 wp5)
    (connected wp5 wp4)

    (connected wp5 wp6)
    (connected wp6 wp5)

    (connected wp4 wp7)
    (connected wp7 wp4)
    
    (connected wp5 wp8)
    (connected wp8 wp5)

    (connected wp6 wp9)
    (connected wp9 wp6)
    
    (connected wp7 wp8)
    (connected wp8 wp7)

    (connected wp8 wp9)
    (connected wp9 wp8)
)
 
 
(:goal (and 
    ; robot's hand should be empty
    (handempty)  
    ; cup should be at wp1
    (at_waypoint cup wp1)
    ; robot should be at wp9
    (robot_at robot1 wp9)

    )
)

)
