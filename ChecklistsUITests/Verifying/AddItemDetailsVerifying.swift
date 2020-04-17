//
//  AddItemDetailsVerifying.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/17/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddItemDetailsVerifying {
  func someFunc()
  var addItemDetailsTitle: XCUIElement { get }
  var addItemTextField: XCUIElement { get }
  var remindMeSwitch: XCUIElement { get }
  var dueDateLabel: XCUIElement { get }
}

extension AddItemDetailsVerifying {
  func someFunc() {
    //
  }
  var addItemDetailsTitle: XCUIElement {
    XCUIApplication().navigationBars.staticTexts[Accessibility.AddItemDetailsView.AddItemDetailsTitle]
  }
  var addItemTextField: XCUIElement {
    XCUIApplication().textFields[Accessibility.AddItemDetailsView.NameOfItemTextField]
  }
  var remindMeSwitch: XCUIElement {
    XCUIApplication().switches[Accessibility.AddItemDetailsView.RemindMeSwitch].firstMatch
  }
  var dueDateLabel: XCUIElement {
    XCUIApplication().staticTexts[Accessibility.AddItemDetailsView.DueDateLabel]
  }
}
