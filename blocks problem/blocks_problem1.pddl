(define (problem blocks-1)
(:domain blocks)
(:objects A B C)

(:init 
    (clear C)
    (on-table A)
    (on-table B)
    (on C A)
    (clear B)
    (handempty)

)
 
 
(:goal (and 
        (on-table B) 
        (on C A)
        (on A B)
        )
    )
)
