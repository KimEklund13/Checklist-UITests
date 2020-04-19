//
//  UITestCaseSetup.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

class UITestCaseSetup: XCTestCase {

  override func setUp() {
    super.setUp()
    continueAfterFailure = false

    // If the test is StartupConfigurable test, then call configureStartup()
    (self as? StartupConfigurable)?.configureStartup()
  }
}
