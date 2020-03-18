//
//  DBUser.swift
//  Podfile-Mulitple-Targets
//
//  Created by Alex Paul on 3/18/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation
import Firebase

struct DBUser {
  var name = "Alex"
}

extension DBUser {
  // computed property
  var getAuthUser: User? {
    guard let user = Auth.auth().currentUser else { return nil }
    return user
  }
}


