//
//  ContentView.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 18/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var contentOffset = CGFloat(0)
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                
                TrackableScrollView(offsetChanged:{ offset in
                    contentOffset = offset.y
                }) {
                    content
                }
                
                VisualEffectBlur(blurStyle: .systemMaterial)
                    .opacity(contentOffset < -16 ? 1 : 0)
                    .animation(.easeIn)
                    .ignoresSafeArea()
                    .frame(height: 0)
                
            }
            .frame(maxHeight: .infinity, alignment: .top )
            .background(AccountBackground())
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(colorScheme == .dark ? .white : Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
    }
    
    
    var content: some View{
        
        VStack {
            
            ProfileRow()
            
            VStack {
                NavigationLink(destination: FAQView()){
                    MenuRow()
                }
                
                divider
                NavigationLink(destination: PackagesView()){
                    MenuRow(title: "SwiftUI Packages", leftIcon: "square.stack.3d.up.fill")
                }
                
                divider
                Link(destination: URL(string: "http://google.com")!,
                    label: {
                        MenuRow(title: "Youtube Channel", leftIcon: "play.rectangle.fill", righIcon: "link")
                    })
                
            }
            .blurBackground()
            
            
            Text("Varsion 1.0")
                .foregroundColor(.white.opacity(0.8))
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .font(.footnote)
        }
        .foregroundColor(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
    
    var divider : some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
