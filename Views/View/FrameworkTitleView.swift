//
//  FrameworkTitleView.swift
//  AppleDemo_Project
//
//  Created by JustMac on 18/08/25.
//

import SwiftUI

struct FrameworkTitleView : View {
    var framework : Framework
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
