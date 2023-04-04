//
//  Configurator.swift
//  02-HW-SwiftUI-Nikitin
//
//  Created by Александр Никитин on 01.04.2023.
//

import Foundation
import Networking

class Configurator {
    static let shared = Configurator()
    let serviceLocator = ServiceLocator()
    
    func setup() {
        registerServices()
    }
    
   private func registerServices() {
       print("services was registered")
       serviceLocator.addService(service: FetchStores())
    }
}
