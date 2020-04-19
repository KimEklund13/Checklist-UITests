//
//  AddItemViewInteracting.swift
//  ChecklistsUITests
//
//  Created by Kim Eklund on 4/16/20.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import XCTest

protocol AddItemViewInteracting {
  func adjustDatePicker(date: String, hour: String, minutes: String, amPm: String)
}


extension AddItemViewInteracting {

  // Interacts with the date picker and selects specified string values for each slot
  func adjustDatePicker(date: String, hour: String, minutes: String, amPm: String) {

    let app = XCUIApplication()

    let dueDateDay = app.pickerWheels.element(boundBy: 0)
    dueDateDay.adjust(toPickerWheelValue: date)
    let dueHour = app.pickerWheels.element(boundBy: 1)
    dueHour.adjust(toPickerWheelValue: hour)
    let dueMinute = app.pickerWheels.element(boundBy: 2)
    dueMinute.adjust(toPickerWheelValue: minutes)
    let amPmValue = app.pickerWheels.element(boundBy: 3)
    amPmValue.adjust(toPickerWheelValue: amPm)
  }

  // gets today's date and cuts it, returns it as a string to be used as arg for adjustDatePicker
  func getDateForTomorrow() -> String {
    let date = Date().addingTimeInterval(60*60*24)
    let customFormat = "ddMMM"
    let locale = Locale.current
    let format = DateFormatter.dateFormat(fromTemplate: customFormat, options: 0, locale: locale)
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
  }
  
}
