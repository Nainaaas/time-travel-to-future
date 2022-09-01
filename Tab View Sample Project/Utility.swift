//
//  Utility.swift
//  Tab View Sample Project
//
//  Created by shahina kassim on 28/08/2022.
//

import Foundation
class Utility{
    func getCurrentYear() -> String{
        var date = Date()
        var calender = Calendar.current
        var year = String(calender.component(.year, from:date))
        return year
    }
    func getStringAtIndex(str: String  , atIndex: Int) -> String{
        let index = str.index(str.startIndex, offsetBy: atIndex)
        return String(str[index])
    }
    func getTime() -> String{
        let date = Date()
        
        var dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .medium
        var time = dateFormatter.string(from: date)
        return time
    }
    func getRandomYear() -> String{
        return String(arc4random_uniform(8999) + 1000)
    }
}
