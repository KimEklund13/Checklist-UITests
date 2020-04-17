//
//  ChecklistsInteracting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol ChecklistsInteracting: AddChecklistVerifying, AddChecklistStarting {
  func checklist(titled title: String) -> XCUIElement
}

extension ChecklistsInteracting {

  // Find a checklist in the list on the view
  func checklist(titled title: String) -> XCUIElement {
    return XCUIApplication().staticTexts[title].firstMatch
  }

  func createAChecklist(titled title: String) -> XCUIElement {
    XCTAssertTrue(addChecklistViewIsShowing())

    let checklistTitle = title

    nameOfListTextField.tap()
    nameOfListTextField.typeText(checklistTitle)

    navDoneButton.tap()

    XCTAssertTrue(checklist(titled: checklistTitle).exists)
    return checklist(titled: title)
  }
}
