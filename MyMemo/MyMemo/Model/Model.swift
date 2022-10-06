//
//  Model.swift
//  MyMemo
//
//  Created by MacBook Air on 2022/10/05.
//

import Foundation

class Memo {
    var content: String
    
    init(content: String) {
        self.content = content
    }
    
    static var dummyMemoList = [
    Memo(content: "먹고 싶은 목록"),
    Memo(content: "보고 싶은 영화 목록")
    ]
}
