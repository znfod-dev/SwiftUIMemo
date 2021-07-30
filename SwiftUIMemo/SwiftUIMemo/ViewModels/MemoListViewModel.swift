//
//  MemoListViewModel.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/08.
//

import Foundation

class MemoListViewModel: CommonViewModel {
    
    @Published var memoList:[Memo] = [Memo(content: "Henderson"),
                                     Memo(content: "Alisson"),
                                     Memo(content: "Robertson"),
                                     Memo(content: "Virgil"),
                                     Memo(content: "Milner")]
    
}
