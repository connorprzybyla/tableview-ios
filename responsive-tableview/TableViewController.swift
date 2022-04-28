//
//  TableViewController.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 4/24/22.
//

import UIKit

class TableViewController: UIViewController {
        
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        reloadData()
        setupSearchBarController()
        setupAutoLayout()
    }
    
    // MARK: Initializers
    
    init(viewModel: any TableViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private
    
    private let cellID = "CellID"
    private var viewModel: TableViewModel
    private let tableView = UITableView()
    private let searchController = UISearchController()
    
    var datasource: TableDataSource?

    private func setupTableView() {
        datasource = TableDataSource(tableView: tableView, cellProvider: { (tableView, indexPath, name) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cellID, for: indexPath)
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = "Cell \(name)"
            
            return cell
        })
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        view.addSubview(tableView)
    }
    private func reloadData() {
        var snapshot = NSDiffableDataSourceSnapshot<Int, String>()
        snapshot.appendSections([0])
        snapshot.appendItems(viewModel.filteredNames, toSection: 0)
  
        datasource?.apply(snapshot)
    }
    
    private func setupSearchBarController() {
        searchController.searchBar.delegate = self
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        navigationItem.rightBarButtonItem = addButton
        tableView.tableHeaderView = searchController.searchBar
    }
    
    @objc private func addNewPerson() {
        let alertController = UIAlertController(title: "Add new person", message: nil, preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Submit", style: .default) { [weak self] alert in
            self?.viewModel.filteredNames.append(alertController.textFields![0].text! as String)
            self?.viewModel.names.append(alertController.textFields![0].text! as String)
            self?.reloadData()
        }
        alertController.addTextField()
        alertController.addAction(saveAction)
        present(alertController, animated: true)
    }
                                       
    private func setupAutoLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

// MARK: - UITableViewDelegate

extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row) tapped!")
    }
}

// MARK: - UISearchBarDelegate

extension TableViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.filteredNames = searchText.isEmpty ? viewModel.names : viewModel.filteredNames.filter({(dataString: String) -> Bool in
            return dataString.range(of: searchText, options: .caseInsensitive) != nil
        })
        
        reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
}
