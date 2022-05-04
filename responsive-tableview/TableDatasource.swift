//
//  TableDatasource.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 4/27/22.
//

import UIKit

class TableDataSource: UITableViewDiffableDataSource<HomeVC.Section, String> {
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let item = itemIdentifier(for: indexPath) else { return }
            var snapshot = self.snapshot()
            snapshot.deleteItems([item])
            apply(snapshot, animatingDifferences: true)
        }
    }
}
