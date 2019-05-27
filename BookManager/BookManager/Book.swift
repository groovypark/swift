//
//  Book.swift
//  BookManager
//
//  Created by SooVin Park on 27/05/2019.
//  Copyright © 2019 groovypark. All rights reserved.
//

import Foundation

class Book{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}
