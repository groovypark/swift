//
//  BookManager.swift
//  BookManager
//
//  Created by SooVin Park on 27/05/2019.
//  Copyright © 2019 groovypark. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()     //mutable array
    
    func addBook(_ bookObject:Book) {
        bookList += [bookObject]
    }
    func showAllBook() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "-----------------------------\n"
        }
        return strTemp
    }
    func countBook() -> Int {
        return bookList.count
    }
    func findBook(_ name:String) -> String? {   // nil을 리턴하기 위해 optional value
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)\n"
                return strTemp
            }
        }
        return nil
    }
    func removeBook(_ name:String) {
        for bookTemp in bookList {
            if bookTemp.name == name {
                let index = (bookList as NSArray).index(of: bookTemp) // NSArray로 형변환
                bookList.remove(at: index)
            }
        }
    }
}
