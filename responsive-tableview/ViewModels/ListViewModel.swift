//
//  ListViewModel.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 4/26/22.
//

import Foundation

protocol ViewModel {
    var names: [String] { get set }
    var filteredNames: [String] { get set }
}

class ListViewModel: ViewModel {
    var names: [String]
    var filteredNames: [String]
    
    init(names: [String]) {
        self.names = names
        self.filteredNames = names
    }
}
