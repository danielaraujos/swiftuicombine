//
//  LiteModeRow.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 12/10/21.
//

import SwiftUI

struct LiteModeRow: View {
    @State private var subscribed: Bool = true
    
    var body: some View {
        GenericsToggleRow(subscribed: $subscribed, icon: "speedometer", title: "Lite Mode", subTitle: "Better performance. Recommended for iPhone X and older" )
        
    }
}

struct LiteModeRow_Previews: PreviewProvider {
    static var previews: some View {
        LiteModeRow()
    }
}
