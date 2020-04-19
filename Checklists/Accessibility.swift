//
//  Accessibility.swift
//  Checklists
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import Foundation

enum Accessibility {
  enum Common: String {
    case
    AddButton = "Add",
    CancelButton = "Cancel",
    DoneButton = "Done"
  }
  enum AddChecklistView: String {
    case
    AddChecklistTitle = "Add Checklist",
    NameOfListTextField = "Name of the List",
    IconLabel = "Icon"
  }
  enum ChooseIconView {
    //
  }
  enum ListView {
    //
  }
  enum AddItemView: String {
    case
    BackToChecklistsButton = "need id",
    ChecklistTitle = "need id 2", // get the a11y id
    InfoIcon = "need id 3"
  }
  enum EditItemView {
    //
  }
  enum AddItemDetailsView: String {
    case
    AddItemDetailsTitle = "Add Item",
    NameOfItemTextField = "Name of the Item",
    RemindMeSwitch = "Remind Me",
    RemindMeLabel = "Remind Me Label",
    DueDateLabel = "Due Date Cell",
    SelectedTimeLabel = "Selected Time Label", // uses Date() but formatted
    picker = "" // Does this need to have an a11y ID since it just pops up when we tap the Due Date label?
  }
}
