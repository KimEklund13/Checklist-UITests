//
//  AddChecklistVerifying.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddChecklistVerifying: CommonElementsVerifying {
  func addChecklistViewIsShowing() -> Bool
  var addChecklistTitle: XCUIElement { get }
  var nameOfListTextField: XCUIElement { get }
  var iconLabel: XCUIElement { get }
}

extension AddChecklistVerifying {

  // to be used for navigation tests (page can nav to x)
  func addChecklistViewIsShowing() -> Bool {
    return addChecklistTitle.exists
      && nameOfListTextField.exists
      && iconLabel.exists
      && navDoneButton.exists
      && navCancelButton.exists
  }

  var addChecklistTitle: XCUIElement {
    XCUIApplication().navigationBars.staticTexts[Accessibility.AddChecklistView.AddChecklistTitle]
  }

  var nameOfListTextField: XCUIElement {
    XCUIApplication().textFields[Accessibility.AddChecklistView.NameOfListTextField]
  }

  var iconLabel: XCUIElement {
    XCUIApplication().cells.staticTexts[Accessibility.AddChecklistView.IconLabel]
  }
}
