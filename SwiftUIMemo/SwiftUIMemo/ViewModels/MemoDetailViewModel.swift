//
//  MemoDetailViewModel.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/08.
//

import Foundation

class MemoDetailViewModel: CommonViewModel {
    @Published var memo:Memo
    
    init(memo:Memo) {
        self.memo = memo
    }
}
