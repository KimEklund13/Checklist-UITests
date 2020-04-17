//
//  AddNewItemUITests.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/17/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

typealias AddItemViewProtocols = UITestCaseSetup & AddItemViewInteracting & AddItemViewStarting & AddItemViewVerifying & AddItemDetailsVerifying & CommonElementsVerifying

class AddNewItemUITests: AddItemViewProtocols {

  func testAddNewItemToChecklist() {

    let app = XCUIApplication()
    let checklistName = "New Checklist"

    XCTAssertTrue(app.navigationBars.staticTexts[checklistName].exists
      && itemCount() == 0)

    navAddButton.tap()
    XCTAssertTrue(addItemDetailsTitle.exists)

    addItemTextField.tap()
    addItemTextField.typeText("New Item")

    remindMeSwitch.tap()
    XCTAssertTrue(remindMeSwitch.isEnabled)

    dueDateLabel.tap()

    let tomorrowsDate = getDateForTomorrow()
    adjustDatePicker(date: tomorrowsDate, hour: "3", minutes: "23", amPm: "PM")

    navDoneButton.tap()
    XCTAssertTrue(app.cells.staticTexts["New Item"].exists && itemCount() == 1)
  }
}
