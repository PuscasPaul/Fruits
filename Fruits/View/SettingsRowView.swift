//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Puscas Paul on 29.07.2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if let myContent = content {
                    Text(myContent)
                } else if let theLinkLabel = linkLabel {
                    if let theLinkDestination = linkDestination {
                        Link(theLinkLabel ,destination: URL(string: "https://\(theLinkDestination)")!)
                        Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    }
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}


// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
