//
//  MemoDetailView.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/08.
//

import SwiftUI

struct MemoDetailView: View {
    
    @ObservedObject var viewModel: MemoDetailViewModel
    
    // Mark: - init
    init(viewModel: MemoDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(viewModel.memo.content)
            }
    }
}

struct MemoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MemoDetailView(viewModel: MemoDetailViewModel(memo: Memo(content: "Test")))
    }
}
