//
//  SettingsViewController.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 25.06.2024.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    // MARK: - UI
 
    
    private lazy var tabelView: UITableView = {
        let tabelView = UITableView(frame: .zero, style: .grouped)
        tabelView.dataSource = self
        tabelView.delegate = self
        tabelView.register(SettingsTableViewCell.self, forCellReuseIdentifier: "setting_Cell")
        tabelView.rowHeight = 56
        return tabelView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup views
    
    private func setupViews() {
        view.addSubview(tabelView)
    }
    
    // MARK: - Constraints
    
    private func setupConstraints() {
        tabelView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
    }
}
 // MARK: - UITbaleViewDataSource, IUTableViewDelegate

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "setting_Cell", for: indexPath) as? SettingsTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    
}
