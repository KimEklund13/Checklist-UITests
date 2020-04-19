//
//  AppStarting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AppStarting: XCTestCase {
  func startApp()
}

extension AppStarting {

  func startApp() {
    XCUIApplication().launch()

//    addUIInterruptionMonitor(withDescription: "System dialog") { (alert) -> Bool in
//      // Tap "Allow", not bound by locale
//      let alertButton = alert.buttons.element(boundBy: 1)
//      if alertButton.exists {
//        alertButton.tap()
//        return true
//      }
//      return false
//    }

    XCUIApplication().tap()
  }
}
