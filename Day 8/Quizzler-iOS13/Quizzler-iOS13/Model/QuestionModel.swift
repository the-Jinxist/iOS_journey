//
//  QuestionModel.swift
//  Quizzler-iOS13
//
//  Created by Favour Olukayode on 01/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let title: String
    let answer: String
    
    init(q: String, a: String) {
        title = q
        answer = a
    }
}
