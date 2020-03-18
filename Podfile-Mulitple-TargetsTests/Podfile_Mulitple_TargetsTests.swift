//
//  Podfile_Mulitple_TargetsTests.swift
//  Podfile-Mulitple-TargetsTests
//
//  Created by Alex Paul on 3/18/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import XCTest
@testable import Podfile_Mulitple_Targets

class Podfile_Mulitple_TargetsTests: XCTestCase {

  func testDBUser() {
    // arrange
    let expectedName = "Alex"
    
    // act
    // sut - system under test
    let user = DBUser() // creates a DBUser instance
    let sut = user.name
    
    // assert
    XCTAssertEqual(sut, expectedName)
  }

}
