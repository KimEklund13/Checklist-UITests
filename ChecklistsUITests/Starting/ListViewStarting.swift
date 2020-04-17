//
//  ListViewStarting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol ListViewStarting: AppStarting, StartupConfigurable {
  func startListView()
}

extension ListViewStarting {
  // "Checklists" screen with list of checklists

  func startListView() {
    // Use AppStarting to start the app
    startApp()
  }

  func configureStartup() {
    startListView()
  }
}
