//
//  CertificateView.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 12/10/21.
//

import SwiftUI

struct CertificateView: View {
    
    @StateObject var certificateVM = CertificateViewModel()
    
    var body: some View {
        VStack{
            ForEach(certificateVM.certificates, id: \.id){ certificate in
                CertificateCard(certificate: certificate)
            }
            
        }.background(AccountBackground())
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView()
    }
}
