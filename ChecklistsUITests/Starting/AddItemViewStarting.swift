//
//  AddItemViewStarting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddItemViewStarting: ChecklistsInteracting {
  func startAddItemView()
}

extension AddItemViewStarting {
  func startAddItemView() {
    startAddChecklistView()
    let newChecklist = createAChecklist(titled: "New Checklist")
    newChecklist.firstMatch.tap()
  }

  func configureStartup() {
    startAddItemView()
  }
}
