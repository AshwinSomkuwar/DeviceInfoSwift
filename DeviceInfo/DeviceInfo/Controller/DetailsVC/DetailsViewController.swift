//
//  DetailsViewController.swift
//  DeviceInfo
//
//  Created by Ashwin Somkuwar on 23/04/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: Variables & Properties
    @IBOutlet weak var detailsTableView: UITableView!
    
    var batteryLevel: Float { UIDevice.current.batteryLevel }
    let cellIdentifier = "detailsCell"
    var dataSource: [DeviceDataModel] = []
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    // MARK: Logic & methods
    func initialSetup() {
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        UIDevice.current.isBatteryMonitoringEnabled = true
        
        dataSource.append(DeviceDataModel(type: "Model Name", detail: UIDevice.current.type.rawValue))
        dataSource.append(DeviceDataModel(type: "Model Number", detail: "-"))
        dataSource.append(DeviceDataModel(type: "iOS Version", detail: UIDevice.current.systemVersion))
        dataSource.append(DeviceDataModel(type: "Serial Number", detail: "-"))
        dataSource.append(DeviceDataModel(type: "Storage", detail: "-"))
        dataSource.append(DeviceDataModel(type: "Battery Health", detail: "-"))
        dataSource.append(DeviceDataModel(type: "Battery Level", detail: "\(batteryLevel * 100)"))
        dataSource.append(DeviceDataModel(type: "Camera MegaPixels", detail: "-"))
        dataSource.append(DeviceDataModel(type: "Camera Aperture", detail: "-"))
        dataSource.append(DeviceDataModel(type: "CPU", detail: "-"))
        dataSource.append(DeviceDataModel(type: "GPU", detail: "-"))
        dataSource.append(DeviceDataModel(type: "IMEI", detail: "-"))
        dataSource.append(DeviceDataModel(type: "System Name", detail: UIDevice.current.systemName))
    }
}

