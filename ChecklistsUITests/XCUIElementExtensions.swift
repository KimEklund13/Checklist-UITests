//
//  XCUIElementExtensions.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

extension XCUIElement {

  func clearText(file: StaticString = #file, line: UInt = #line) {
    guard let currentValue = value as? String else {
      XCTFail("Attempted to clear text in a non-textual UI element",
              file: file, line: line)
      return
    }

    let deleteText: String = currentValue.reduce("", { partialResult, _ in
      partialResult + XCUIKeyboardKey.delete.rawValue
    })
    typeText(deleteText)
  }
}
