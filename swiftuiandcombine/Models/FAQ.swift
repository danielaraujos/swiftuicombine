//
//  FAQ.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 06/10/21.
//

import Foundation

struct FAQ : Identifiable, Decodable {
    var id: Int
    var question: String
    var answer: String
}
