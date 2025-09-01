//
//  AFButtonView.swift
//  AppleDemo_Project
//
//  Created by JustMac on 18/08/25.
//

import SwiftUI

struct AFButtonView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButtonView(title: "Test Title")
}
