//
//  Networking+EXT.swift
//  HW-03-OTUS-ALNikitin
//
//  Created by Александр Никитин on 03.04.2023.
//

import Foundation
import Networking
import SwiftUI

class FetchStores {
    
    func fetch(fetchedResponse: @escaping ([Store]) -> Void ) {
        print("Start fetching stores")
        Task {
            do {
                let response = try await AllStoresAPI.storesGet()
                DispatchQueue.main.async {
                    fetchedResponse(response)
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
    }
}


