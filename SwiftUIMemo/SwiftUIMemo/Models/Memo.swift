//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/08.
//

import Foundation

struct Memo:Hashable {
    var content: String
    var insertDate: Date
    var identity: String
    
    init(content:String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
