//
//  FAQRow.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 06/10/21.
//

import SwiftUI

struct FAQRow: View {
    
    @Environment(\.colorScheme) var colorScheme : ColorScheme
    var faq: FAQ
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Text(faq.question)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(faq.answer)
                .font(.subheadline)
                .opacity(0.7)
                .fixedSize(horizontal: false, vertical: true)
            
            Divider()
        }
    }
}

struct FAQRow_Previews: PreviewProvider {
    static var previews: some View {
        FAQRow(faq: faqDataModel[0])
            .environment(\.colorScheme, .dark)
        
    }
}
