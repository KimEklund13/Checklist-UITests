//
//  CommonElementsVerifying.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/17/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol CommonElementsVerifying {
  var navDoneButton: XCUIElement { get }
  var navAddButton: XCUIElement { get }
  var navCancelButton: XCUIElement { get }
}

extension CommonElementsVerifying {

  var navDoneButton: XCUIElement {
    XCUIApplication().navigationBars.buttons[Accessibility.Common.DoneButton.rawValue]
  }

  var navAddButton: XCUIElement {
    XCUIApplication().navigationBars.buttons[Accessibility.Common.AddButton.rawValue]
  }

  var navCancelButton: XCUIElement {
    XCUIApplication().navigationBars.buttons[Accessibility.Common.CancelButton.rawValue]
}
}
