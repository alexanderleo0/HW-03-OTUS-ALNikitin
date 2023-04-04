//
//  InjectWrapper.swift
//  02-HW-SwiftUI-Nikitin
//
//  Created by Александр Никитин on 01.04.2023.
//

import Foundation

@propertyWrapper
struct Injected<T> {
    private var service: T?
    private weak var serviceLocator = Configurator.shared.serviceLocator
    

    public var wrappedValue: T? {
        mutating get {
            if service == nil {
                service = serviceLocator?.getService(type: T.self) as T?
            }
            return service
        }
        mutating set {
            service = newValue as T?
        }
    }
    
    public var projectedValue: Injected<T> {
        
        get {return self}
        mutating set {self = newValue}
    }
}
