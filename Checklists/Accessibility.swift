//
//  Accessibility.swift
//  Checklists
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import Foundation

enum Accessibility {
  enum Common {
    static let AddButton = "Add"
    static let CancelButton = "Cancel"
    static let DoneButton = "Done"
  }
  enum AddChecklistView {
    static let AddChecklistTitle = "Add Checklist"
    static let NameOfListTextField = "Name of the List"
    static let IconLabel = "Icon"
  }
  enum ChooseIconView {
    //
  }
  enum ListView {
    //
  }
  enum AddItemView {
    static let BackToChecklistsButton = ""
    static let ChecklistTitle = "" // get the a11y id
    static let InfoIcon = ""
  }
  enum EditItemView {
    //
  }
  enum AddItemDetailsView {
    static let AddItemDetailsTitle = "Add Item"
    static let NameOfItemTextField = "Name of the Item"
    static let RemindMeSwitch = "Remind Me"
    static let RemindMeLabel = "Remind Me"
    static let DueDateLabel = "Due Date"
    static let SelectedTimeLabel = "" // uses Date() but formatted
    static let picker = "" // Does this need to have an a11y ID since it just pops up when we tap the Due Date label?
  }
}
