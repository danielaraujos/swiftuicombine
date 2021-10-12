//
//  NotificationsRow.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 12/10/21.
//

import SwiftUI

struct NotificationRow: View {
    
    @State private var subscribed: Bool = true
    
    var body: some View {
        GenericsToggleRow(subscribed: $subscribed, icon: "bell.fill", title: "Notify me of new content", subTitle: "Max once a week" )
    }
}

struct NotificationRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationRow()
    }
}
