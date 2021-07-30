//
//  String+Ex.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/09.
//

import Foundation
extension String {
    var firstLine:String {
        return self.components(separatedBy: CharacterSet.newlines).first ?? ""
    }
}
