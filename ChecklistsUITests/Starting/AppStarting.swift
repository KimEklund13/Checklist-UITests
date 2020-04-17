//
//  AppStarting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AppStarting {
  func startApp()
}

extension AppStarting {

  func startApp() {
    XCUIApplication().launch()
  }
}
