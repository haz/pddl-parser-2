(define (problem colorballs-3-2)
(:domain colorballs)

 (:objects 
    o1
    o2

 - obj 
    p1-1
    p1-2
    p1-3
    p2-1
    p2-2
    p2-3
    p3-1
    p3-2
    p3-3

 - pos 
    red
    blue
    purple
    green

 - col 
    t1
    t2
    t3
    t4

 - gar 
    )
   (:init
    (and
     (at p2-2)
    (garbage-at t1 p1-1)
    (garbage-at t2 p1-3)
    (garbage-at t3 p3-1)
    (garbage-at t4 p3-3)
    (garbage-color t1 red)
    (garbage-color t2 blue)
    (garbage-color t3 green)
    (garbage-color t4 purple)

     (adj p1-1 p2-1)
     (adj p2-1 p1-1)

     (adj p1-2 p2-2)
     (adj p2-2 p1-2)

     (adj p1-3 p2-3)
     (adj p2-3 p1-3)

     (adj p2-1 p3-1)
     (adj p3-1 p2-1)

     (adj p2-2 p3-2)
     (adj p3-2 p2-2)

     (adj p2-3 p3-3)
     (adj p3-3 p2-3)


     (adj p1-1 p1-2)
     (adj p1-2 p1-1)

     (adj p2-1 p2-2)
     (adj p2-2 p2-1)

     (adj p3-1 p3-2)
     (adj p3-2 p3-1)

     (adj p1-2 p1-3)
     (adj p1-3 p1-2)

     (adj p2-2 p2-3)
     (adj p2-3 p2-2)

     (adj p3-2 p3-3)
     (adj p3-3 p3-2)


     (oneof
        (obj-at o1 p1-2)
        (obj-at o1 p2-1)
        (obj-at o1 p2-2)
        (obj-at o1 p2-3)
        (obj-at o1 p3-2)
     )
     (oneof
        (obj-at o2 p1-2)
        (obj-at o2 p2-1)
        (obj-at o2 p2-2)
        (obj-at o2 p2-3)
        (obj-at o2 p3-2)
     )

     (oneof
       (color o1 red)
       (color o1 blue)
       (color o1 green)
       (color o1 purple)
     )
     (oneof
       (color o2 red)
       (color o2 blue)
       (color o2 green)
       (color o2 purple)
     )

    )
    )
    (:goal (and     (trashed o1)
    (trashed o2)
)))
