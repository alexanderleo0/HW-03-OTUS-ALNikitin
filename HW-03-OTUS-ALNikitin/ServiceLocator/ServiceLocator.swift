//
//  ServiceLocator.swift
//  02-HW-SwiftUI-Nikitin
//
//  Created by Александр Никитин on 01.04.2023.
//


import Foundation

class ServiceLocator : NSObject {
    private var containerServices = [String: Any]()
    
    func addService<T>(service: T) {
        let key = "\(T.self)"
        if containerServices[key] == nil {
            containerServices[key] = service
        }
    }
    
    func getService<T>(type: T.Type)->T? {
        let key = "\(T.self)"
        return containerServices[key] as? T
    }
}
