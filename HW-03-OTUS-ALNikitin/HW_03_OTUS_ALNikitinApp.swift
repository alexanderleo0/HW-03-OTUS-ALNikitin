//
//  HW_03_OTUS_ALNikitinApp.swift
//  HW-03-OTUS-ALNikitin
//
//  Created by Александр Никитин on 02.04.2023.
//

import SwiftUI

@main
struct HW_03_OTUS_ALNikitinApp: App {
    let conf = Configurator.shared.setup()
//    let _ = CSViewModel()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(CSViewModel())
        }
    }
}
