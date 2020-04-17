//
//  AddItemViewVerifying.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/17/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddItemViewVerifying: CommonElementsVerifying {
  func itemCount() -> Int
  var backToChecklistsButton: XCUIElement { get }
  var checklistTitle: XCUIElement { get }
  var infoIcon: XCUIElement { get }
}

extension AddItemViewVerifying {

  // to be used for navigation tests (page can nav to x)
  func addItemViewIsShowing() -> Bool {
    return backToChecklistsButton.exists
      && checklistTitle.exists
      && navAddButton.exists
  }

  var backToChecklistsButton: XCUIElement {
    XCUIApplication().navigationBars.buttons[Accessibility.AddItemView.BackToChecklistsButton]
  }

  var checklistTitle: XCUIElement {
    XCUIApplication().staticTexts[Accessibility.AddItemView.ChecklistTitle]
  }

  var infoIcon: XCUIElement {
    XCUIApplication().buttons[Accessibility.AddItemView.InfoIcon]
  }

  func getItem(item itemLabel: String) -> XCUIElement {
    return XCUIApplication().tables.cells.staticTexts[itemLabel].firstMatch
  }

  func itemCount() -> Int {
    return XCUIApplication().tables.cells.count
  }
}
