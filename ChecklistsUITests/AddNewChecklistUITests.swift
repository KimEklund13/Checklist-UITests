//
//  AddNewChecklistUITests.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/14/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

typealias AddNewChecklistProtocols = UITestCaseSetup & AddItemViewInteracting & AddChecklistStarting & AddChecklistVerifying & ChecklistsInteracting & CommonElementsVerifying

class AddNewChecklistUITests: AddNewChecklistProtocols {

  let app = XCUIApplication()

  func testAddingChecklistItem() {

    XCTAssertTrue(addChecklistViewIsShowing())

    let checklistTitle = "New List"

    nameOfListTextField.tap()
    nameOfListTextField.typeText(checklistTitle)

    navDoneButton.tap()
    let newCheckList = app.tables.cells.staticTexts["New List"]
    XCTAssertTrue(checklist(titled: checklistTitle).exists && newCheckList.exists)
  }

  func testDeleteCheckList() {

    let newCheckList = createAChecklist(titled: "New List")

    newCheckList.swipeLeft()
    app.buttons["Delete"].tap()
    XCTAssertFalse(newCheckList.exists)
  }

  func testEmptyChecklistsViewElements() {
    
  }
}
