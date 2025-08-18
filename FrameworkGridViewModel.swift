//
//  FrameworkGridViewModel.swift
//  AppleFrameworkDemo
//
//  Created by JustMac on 05/08/25.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
