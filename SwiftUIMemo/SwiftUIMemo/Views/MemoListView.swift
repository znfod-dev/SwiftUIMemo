//
//  MemoListView.swift
//  SwiftUIMemo
//
//  Created by ParkJonghyun on 2021/06/08.
//

import SwiftUI

struct MemoListView: View {
    
    @ObservedObject var viewModel: MemoListViewModel
    
    // Mark: - init
    init(viewModel: MemoListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Memo").bold().font(.title2)) {
                    ForEach(viewModel.memoList, id: \.self) { memo in
                        MemoRow(memo: memo)
                    }
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Memo")
        }
    }
    
}

struct MemoRow: View {
    let memo: Memo
    
    var body: some View {
        NavigationLink(
            destination: MemoDetailView(viewModel: MemoDetailViewModel(memo: self.memo)),
            label: {
                VStack(alignment: .leading) {
                    Text(memo.content).font(.title3).padding(.top, 5)
                    Spacer()
                    HStack {
                        Text(memo.insertDate.toString()).font(.caption)
                    }.padding(.bottom, 5)
                }
            })
        
        
    }
    
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView(viewModel: MemoListViewModel())
    }
}



