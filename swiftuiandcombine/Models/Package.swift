//
//  Package.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 20/09/21.
//

import Foundation

struct Package : Identifiable {
    var id = UUID()
    var title: String
    var link : String
}


var packagesData = [
    Package( title: "Firebase", link: "https://github.com/firebase/firebase-ios-sdk"),
    Package( title: "SdWebImage", link: "#"),
    Package( title: "Firebase Message", link: "#")
]
