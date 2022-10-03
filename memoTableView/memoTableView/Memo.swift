//
//  Memo.swift
//  memoTableView
//
//  Created by MacBook Air on 2022/10/03.
//

import Foundation

class MemoView {
    var content: String
    
    init(content: String) {
        self.content = content
    }
    
    static var dummyList = [
    MemoView(content: "발롱도르 예상 수상자"), MemoView(content: "오늘 장 봐야되는 것"), MemoView(content: "보고 싶은 영화들")
    ]
}
