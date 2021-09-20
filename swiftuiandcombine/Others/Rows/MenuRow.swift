//
//  MenuRow.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 19/09/21.
//

import SwiftUI

struct MenuRow: View {
    
    var title: String = "FAQ / Contact"
    var leftIcon : String = "questionmark"
    var righIcon : String = "chevron.right"
    
    var body: some View {
        HStack(spacing: 12) {
            
            GradientIcon(icon: leftIcon)
            
            
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: righIcon)
                .font(.system(size: 15, weight: .semibold))
                .opacity(0.3)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
