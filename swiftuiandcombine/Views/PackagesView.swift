//
//  PackagesView.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 20/09/21.
//

import SwiftUI

struct PackagesView: View {
    
    @State private var contentOffset = CGFloat(0)
    
    var body: some View {
        ZStack(alignment: .top){
            TrackableScrollView(offsetChanged: { offsetPoint
                in
                contentOffset = offsetPoint.y
            }) {
                content
            }
            
            VisualEffectBlur(blurStyle: .systemMaterial)
                .opacity(contentOffset < -16 ? 1 : 0)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle("SwiftUI Packages")
        .background(Color("Background 2"))
        .edgesIgnoringSafeArea(.all)
            
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("While this version aims to stay true to the original spirit and naming conventions of Rx, this projects also aims to provide a true Swift-first API for Rx APIs.")
                .font(.subheadline)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            
            ForEach(packagesData, id: \.id) {
                package in
                PackageRow(package: package)
            }
            
        }.padding(.horizontal, 20)
        .padding(.top, 160)
    }
}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
