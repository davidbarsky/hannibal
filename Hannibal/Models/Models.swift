//
//  Workout.swift
//  Hannibal
//
//  Created by David Barsky on 1/12/16.
//  Copyright © 2016 David Barsky. All rights reserved.
//

import RealmSwift
import Mapper

class Workout: Object {
    dynamic var name = ""
    dynamic var reps = 0
}

struct User: Mappable {
    let userID: String
    let profileURL: NSURL?

    init(map: Mapper) throws {
        try userID = map.from("id")
        profileURL = map.optionalFrom("avatar_url")
    }
}
