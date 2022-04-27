//
//  TableViewModel.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 4/26/22.
//

import Foundation

protocol TableViewModel {
    var names: [String] { get set }
    var filteredNames: [String] { get set }
}

class NamesViewModel: TableViewModel {
    
    var names: [String]
    var filteredNames: [String]
    
    init(names: [String]) {
        self.names = names
        filteredNames = names
    }
}
