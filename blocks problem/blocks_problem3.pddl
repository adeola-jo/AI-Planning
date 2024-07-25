(define (problem blocks-3)
(:domain blocks)
(:objects A B C D)

(:init 
    (on-table C)
    (on A C)
    (on B A)
    (holding D)
    (clear B)
    (not (handempty))

)
 
 
(:goal (and 
        (on-table B) 
        (on D B)
        (on C D)
        (on A C)
        )
    )
)
