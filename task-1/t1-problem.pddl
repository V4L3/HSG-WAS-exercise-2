(define (problem t1-problem)
  (:domain t1-domain)
  (:objects 
    inhabitant1 - inhabitant
    inhabitant2 - inhabitant
    inhabitant3 - inhabitant
    inhabitant4 - inhabitant
    inhabitant5 - inhabitant
    inhabitant6 - inhabitant
    inhabitant7 - inhabitant
    inhabitant8 - inhabitant
    inhabitant9 - inhabitant
    inhabitant10 - inhabitant
    lobby - space
    room1 - room
    room2 - room
    room3 - room
    room4 - room
    room5 - room
    room6 - room
    room7 - room
    room8 - room
    room9 - room
    room10 - room
    am0900 - time
    am0915 - time
    am0930 - time
    am0945 - time
    am1000 - time
    am1015 - time
    am1030 - time
    am1045 - time
    am1100 - time
    am1115 - time
    am1130 - time
    am1145 - time
    am1200 - time
  )
  (:init 
    (at lobby)
    (canArrive am0900 inhabitant1 room1)
    (canArrive am0930 inhabitant1 room1)
    (canArrive am0945 inhabitant2 room2)
    (canArrive am0900 inhabitant3 room3)
    (canArrive am0945 inhabitant3 room3)
    (canArrive am1000 inhabitant4 room4)
    (canArrive am0915 inhabitant4 room4)
    (canArrive am0930 inhabitant4 room4)
    (canArrive am0915 inhabitant5 room5)
    (canArrive am1100 inhabitant6 room6)
    (canArrive am1115 inhabitant7 room7)
    (canArrive am1200 inhabitant8 room8)
    (canArrive am1145 inhabitant8 room8)
    (canArrive am1145 inhabitant9 room9)
    (canArrive am1130 inhabitant10 room10)
  )
  (:goal (and
        (hasRoom inhabitant1)
        (hasRoom inhabitant2)
        (hasRoom inhabitant3)
        (hasRoom inhabitant4)
        (hasRoom inhabitant5)
        (hasRoom inhabitant6)
        (hasRoom inhabitant7)
        (hasRoom inhabitant8)
        (hasRoom inhabitant9)
        (hasRoom inhabitant10)
    )
   )
)