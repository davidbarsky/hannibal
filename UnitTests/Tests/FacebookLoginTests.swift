//
//  FacebookLoginTests.swift
//  Hannibal
//
//  Created by David Barsky on 12/23/15.
//  Copyright © 2015 David Barsky. All rights reserved.
//

import XCTest
import FBSDKCoreKit
import FBSDKLoginKit

class FacebookLoginTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPresenceOfLoginToken() {
        XCTAssertNotNil(FBSDKAccessToken.currentAccessToken(), "Current Access Token should no be nil")
    }
}
