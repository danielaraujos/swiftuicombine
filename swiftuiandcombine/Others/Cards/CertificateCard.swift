//
//  CertificateCard.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 12/10/21.
//

import SwiftUI

struct CertificateCard: View {
    
    var certificate : Certificate
    
    var body: some View {
        ZStack {
            Image("CertificateBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            content
            
        }.frame(maxWidth: 754, maxHeight: 465)
        .background(RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.4679454436, blue: 0.4263565884, alpha: 0.8561905615)).opacity(0.8), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.8)]), center: .bottomTrailing, startRadius: 5, endRadius: 900))
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous).stroke(Color.white).blendMode(.overlay))
        .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.5), radius: 30, x: 0.0, y: 15)
    }
    
    var content : some View {
        VStack(spacing: 20){
            Image(certificate.logo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 28, height:  28)
                .padding(8)
                .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                .mask(Circle())
                .background(Circle().stroke(Color.white.opacity(0.4), lineWidth: 0.5))
            
            Section {
                Text(("Certificate of completion").uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(("This is to certify that").uppercased())
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.7))
            }
            
            Text("Daniel")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("sucessfully completed the online course \(certificate.course) on \(certificate.date)")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: 250)
                .fixedSize(horizontal: false, vertical: true)
            
            
            Section{
                Divider()
                instructorRow
                
                Divider()
                certificatedDataRow
            }.frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .foregroundColor(.white.opacity(0.7))
            .padding(.horizontal , 20)
            
                
        }
    }
    
    var instructorRow : some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Design+Code Instructor")
            Text(certificate.instructor)
        }
    }
    
    var certificatedDataRow : some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Certificate no: DC- \(certificate.id)")
            Text("Certificate url: designcode.io/certificate/\(certificate.id)")
        }
    }
}

struct CertificateCard_Previews: PreviewProvider {
    static var previews: some View {
        CertificateCard(certificate: Certificate(id: "1234", course: "SwiftUI", date: "June 2nd 2021", logo: "Logo SwiftUI", instructor: "Daniel Araujo"))
    }
}
