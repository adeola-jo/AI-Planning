(define (problem blocks-2)
(:domain blocks)
(:objects A B C)

(:init 
    (on-table C)
    (on A C)
    (on B A)
    (clear B)
    (handempty)

)
 
 
(:goal (and 
        (on-table B) 
        (on A B)
        (on C A)
        )
    )
)
