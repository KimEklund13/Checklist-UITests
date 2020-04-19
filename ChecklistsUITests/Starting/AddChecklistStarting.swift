//
//  AddChecklistStarting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddChecklistStarting: ListViewStarting {
  func startAddChecklistView()
}

extension AddChecklistStarting {

  func startAddChecklistView() {
    startListView() // launches the app
    XCUIApplication().navigationBars.buttons[Accessibility.Common.AddButton.rawValue].tap()
  }

  func configureStartup() {
    startAddChecklistView()
  }
}
