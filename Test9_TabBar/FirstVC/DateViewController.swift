//
//  DateViewController.swift
//  Test9_TabBar
//
//  Created by user on 16.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var timeMoscowLabel: UILabel!
    @IBOutlet weak var timeNYLabel: UILabel!
    @IBOutlet weak var timeParisLabel: UILabel!
    
    let dayLabelTitle = Bundle.main.localizedString(forKey: "day", value: "Day", table: "Loc")
    let monthLabelTitle = Bundle.main.localizedString(forKey: "month", value: "Month", table: "Loc")
    let yearLabelTitle = Bundle.main.localizedString(forKey: "year", value: "Year", table: "Loc")

    var componentDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Date"
        view.backgroundColor = .yellow

//        printTimestamp1()
        dayLabel.text = "\(dayLabelTitle): \(printTimestamp()[0])"
        monthLabel.text = "\(monthLabelTitle):  \(printTimestamp()[1])"
        yearLabel.text = "\(yearLabelTitle):  \(printTimestamp()[2])"
        
        timeMoscowLabel.text = getDate(timeZoneIdentifier: "UTC+3")
        timeNYLabel.text = getDate(timeZoneIdentifier: "UTC-5")
        timeParisLabel.text = getDate(timeZoneIdentifier: "UTC+1")
    }
     
    func printTimestamp()  -> [String] {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        let result: [String] = timestamp.components(separatedBy: [" "])
//        print(timestamp)
//        print(result)
        return result
    }
    
    func printTimestamp2(){
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        let result: [String] = timestamp.components(separatedBy: [" "])
//        print(timestamp)
//        print(result)
    }
    
    func getDate(timeZoneIdentifier: String) -> String {
    let date = Date()
    var calendar = Calendar.current
    calendar.timeZone = TimeZone(identifier: timeZoneIdentifier)!
//    let components = calendar.dateComponents([.hour, .minute], from: date)
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    let timeM = "\(hour):\(minutes)"
//        print("\(hour):\(minutes)")
        return timeM
    }
    
//    func getDate_() {
//        let dateFormatter : DateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MMM-dd HH:mm:ss"
//        let date = Date()
//        let dateString = dateFormatter.string(from: date)
//        let interval = date.timeIntervalSince1970
//        print(interval)
//        print(dateString)
//    }
//
//    func getDate2() {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .long
//        dateFormatter.timeStyle = .none
//        let date = Date(timeIntervalSinceReferenceDate: 118800)
//        // US English Locale (en_US)
//        dateFormatter.locale = Locale(identifier: "en_US")
//        print(dateFormatter.string(from: date)) // Jan 2, 2001
//    }
}
