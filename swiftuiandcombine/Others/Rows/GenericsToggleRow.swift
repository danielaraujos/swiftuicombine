//
//  NotificationsRow.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 12/10/21.
//

import SwiftUI

struct GenericsToggleRow: View {
    @Binding var subscribed: Bool
    
    var icon: String = "bell.fill"
    var title: String = "Title"
    var subTitle: String = "SubTitle"
    
    var body: some View {
        Toggle(isOn: $subscribed, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: icon)
                
                VStack(alignment:.leading){
                    Text(title)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text(subTitle)
                        .font(.caption2)
                        .opacity(0.7)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))))
    }
}

struct GenericsToggleRow_Previews: PreviewProvider {
    static var previews: some View {
        GenericsToggleRow(subscribed: Binding.constant(true))
    }
}
