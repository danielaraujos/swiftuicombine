//
//  PrimaryButton.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 07/10/21.
//

import SwiftUI

struct PrimaryButton: View {
    
    @Environment(\.colorScheme) var colorScheme : ColorScheme
    var text : String = "Contact Support"
    
    var body: some View {
        if colorScheme == .light {
            lightModeButton
        } else {
            darkModeButton
        }
        
    }
    
    var lightModeButton : some View {
        VStack {
            Text(text)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
    }
    
    var darkModeButton : some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 50)
                .angularGradientGlow(colors: [Color(#colorLiteral(red: 0.3843137255, green: 0.5176470588, blue: 1, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.4470588235, blue: 0.7137254902, alpha: 1)), Color(#colorLiteral(red: 0.8509803922, green: 0.6862745098, blue: 0.8509803922, alpha: 1))])
                .blur(radius: 8)
            
            Text(text)
                .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))])
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color(#colorLiteral(red: 0.1019607843, green: 0.07058823529, blue: 0.2431372549, alpha: 1))).opacity(0.98)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1).blendMode(.overlay))
        }
        .frame(height: 50)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PrimaryButton()
            PrimaryButton()
                .environment(\.colorScheme, .dark)
        }
    }
}
