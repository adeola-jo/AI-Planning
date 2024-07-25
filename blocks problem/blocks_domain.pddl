
(define (domain blocks)
  (:requirements :strips)
  (:predicates 
	(clear ?x)
	(on ?x ?y); a is on b
	(handempty)
	(on-table ?x)
	(holding ?x)
	)


  (:action pick-up
	     :parameters (?x)
	     :precondition (and (handempty) (clear ?x) (on-table ?x))
	     :effect
	     (and (not (on-table ?x))
		   (not (handempty))
		   (holding ?x))
	)
		   

  (:action put-down
	     :parameters (?x)
	     :precondition (holding ?x)
	     :effect
	     (and 
		   (handempty)
		   (on-table ?x)
		   (clear ?x)
		   (not (holding ?x))
	     )
  )
		   
  (:action stack; stack x on y
	     :parameters (?x ?y)
	     :precondition (and 
			(holding ?x)
			(clear ?y)
		 )
	     :effect
	     (and (not (holding ?x))
		   (on ?x ?y)
		   (clear ?x)
		   (not (clear ?y))
		   (handempty)
	     )
	)
		   
  (:action unstack
	     :parameters (?x ?y)
	     :precondition (and 
			(on ?x ?y)
			(clear ?x)
			(handempty)
		 )
	     :effect
	     (and 
		   (holding ?x)
			(clear ?y)
		   (not (handempty))
			(not (on ?x ?y))
	     )
	)
  )