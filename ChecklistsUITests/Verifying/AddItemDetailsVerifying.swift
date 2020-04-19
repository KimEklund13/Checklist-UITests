//
//  AddItemDetailsVerifying.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/17/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddItemDetailsVerifying {
  func dismissNotificationsAlert()
  var addItemDetailsTitle: XCUIElement { get }
  var addItemTextField: XCUIElement { get }
  var remindMeSwitch: XCUIElement { get }
  var dueDateLabel: XCUIElement { get }
}

extension AddItemDetailsVerifying {
  func dismissNotificationsAlert() {
    let app = XCUIApplication()
    let allowButton = app.alerts.buttons.element(boundBy: 1)
    if allowButton.exists {
      allowButton.tap()
    }
  }
  var addItemDetailsTitle: XCUIElement {
    XCUIApplication().navigationBars.staticTexts[Accessibility.AddItemDetailsView.AddItemDetailsTitle.rawValue]
  }
  var addItemTextField: XCUIElement {
    XCUIApplication().textFields[Accessibility.AddItemDetailsView.NameOfItemTextField.rawValue]
  }
  var remindMeSwitch: XCUIElement {
    XCUIApplication().switches[Accessibility.AddItemDetailsView.RemindMeSwitch.rawValue]
  }
  var dueDateLabel: XCUIElement {
    XCUIApplication().staticTexts[Accessibility.AddItemDetailsView.DueDateLabel.rawValue]
  }
}
