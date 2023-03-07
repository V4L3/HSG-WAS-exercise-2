(define (domain t1-domain)
    (:requirements :typing)
    (:types
        time - object
        person - object
        inhabitant - person
        space - object
        room - space
    )
    (:predicates
        (timeSlotOccupied ?t - time)
        (roomUnlocked ?r - room)
        (roomOccupied ?r - room)
        (hasRoom ?inh - inhabitant)
        (canArrive ?t - time ?inh - inhabitant ?r - room)
        (at ?r - space)
    )
    (:action showRoom
        :parameters (?t - time ?inh - inhabitant ?r - room)
        :precondition (and
            (canArrive ?t ?inh ?r)
            (not (timeSlotOccupied ?t))
            (at ?r)
            (roomUnlocked ?r)
            (not (roomOccupied ?r))
            (not (hasRoom ?inh))
        )
        :effect (and
            (timeSlotOccupied ?t)
            (roomOccupied ?r)
            (hasRoom ?inh)
        )
    )
    (:action unlockRoom
        :parameters (?r - room)
        :precondition (at ?r)
        :effect (roomUnlocked ?r)
    )
    (:action move
        :parameters(?s1 - space ?s2 - space)
        :precondition(at ?s1)
        :effect (and
            (at ?s2)
            (not (at ?s1))
        )
    )
)