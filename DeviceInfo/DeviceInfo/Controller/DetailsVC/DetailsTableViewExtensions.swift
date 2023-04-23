//
//  DetailsTableViewExtensions.swift
//  DeviceInfo
//
//  Created by Ashwin Somkuwar on 23/04/23.
//

import UIKit

// MARK: TableView Extensions
extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
        cell.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        cell.textLabel?.text = self.dataSource[indexPath.row].type
        cell.detailTextLabel?.text = self.dataSource[indexPath.row].detail
        
        return cell
    }
}
