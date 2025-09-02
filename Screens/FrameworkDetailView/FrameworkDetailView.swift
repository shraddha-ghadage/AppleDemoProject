//
//  FrameworkDetailView.swift
//  AppleDemo_Project
//
//  Created by JustMac on 18/08/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView : Bool
    
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
             Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButtonView(title: "Learn More")
            }
           
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
