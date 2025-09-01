//
//  FrameworkGridViewModel.swift
//  AppleDemo_Project
//
//  Created by JustMac on 18/08/25.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    let columns : [GridItem] = [ GridItem(.flexible()),
                                GridItem(.flexible()),
                                 GridItem(.flexible())
                                
    ]
    @Published var isShowingDetailView = false
    
}
