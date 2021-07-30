//
//  Date+Ex.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/09.
//

import Foundation
extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy. MM. dd"
        return formatter.string(from: self)
    }
}
