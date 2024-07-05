//
//  SettingsViewController.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 25.06.2024.
//

import UIKit
import SnapKit

// MARK: - Model

struct Section {
    let name: String
    let options: [SettingType]
}

enum SettingType {
    case staticCell(model: Setting)
    case switchCell(model: SettingSwitch)
}

struct SettingSwitch {
    var name: String
    var icon: UIImage?
    var iconBackgroudColor: UIColor
    var title: String?
    var handler: (() -> Void)
    var isOn: Bool?
}

struct Setting {   var name: String
    var icon: UIImage?
    var iconBackgroudColor: UIColor
    var iconNumber: UIImage?
    var title: String?
    var handler: (() -> Void)
    var isOn: Bool?
}

final class SettingsViewController: UIViewController {
    
    
    var models = [Section]()
    private func configure(){
        models.append(Section(name: "General", options: [
            .switchCell(model: SettingSwitch(name: "Авиарежим",icon: .airplane, iconBackgroudColor: .systemOrange, handler: {
                print("Авиарежим")
            }, isOn: true )),
            .staticCell(model: Setting(name: "Wi-fi",icon: UIImage(systemName: "wifi.square.fill"), iconBackgroudColor: .systemBlue, title: "Не подключено"){
                print("wifi")
            }),
            .staticCell(model: Setting(name: "Bluetooth", icon: .bluetooth, iconBackgroudColor: .systemBlue, title: "Вкл." ){
                print("Bluetooth")
            }),
            .staticCell(model: Setting(name: "Cотовая связь",icon: .radio, iconBackgroudColor: .systemGreen){
                print("Cотовая связь")
            }),
            .staticCell(model: Setting(name: "Режим модема",icon: .chain, iconBackgroudColor: .systemGreen){
                print("Режим модема")
            }),
            .switchCell(model: SettingSwitch(name: "VPN",icon: .vpn, iconBackgroudColor: .systemBlue, handler: {
                print("VPN")
            }, isOn: true ))
            
        ]))
        models.append(Section(name: "General", options: [
            .staticCell(model: Setting(name: "Уведомления",icon: .bell, iconBackgroudColor: .systemRed){
                print("Уведомления")
            }),
            
                .staticCell(model: Setting(name: "Звуки, тактильные сигналы",icon: .sound, iconBackgroudColor: .systemPink){
                    print("Звуки, тактильные сигналы")
                    
                }),
            .staticCell(model: Setting(name: "Не беспокоить",icon: .focus, iconBackgroudColor: .systemPurple){
                print("Не беспокоиты")
                
            }),
            .staticCell(model: Setting(name: "Экранное время",icon: .screenTime, iconBackgroudColor: .systemPurple){
                print("Экранное время")
                
            })
            
        ]))
        models.append(Section(name: "General", options: [
            .staticCell(model: Setting(name: "Основные",icon: .general, iconBackgroudColor: .systemGray, iconNumber: UIImage(systemName: "1.circle.fill")){
                print("Основныя")
            }),
            .staticCell(model: Setting(name: "Пунк управления",icon: .controlCenter, iconBackgroudColor: .systemGray){
                print("Пунк управления")
            }),
            .staticCell(model: Setting(name: "Экран и яркость",icon: .display, iconBackgroudColor: .systemBlue){
                print("Экран и яркость")
            }),
            .staticCell(model: Setting(name: "Экран Домой и библиотека приложений",icon: .home, iconBackgroudColor: .systemIndigo){
                print("Экран Домой и библиотека приложений")
            }),
            .staticCell(model: Setting(name: "Универсальный доступ",icon: .accessibility, iconBackgroudColor: .systemBlue){
                print("Универсальный доступ")
            }),
            .staticCell(model: Setting(name: "Обои",icon: .wallPaper, iconBackgroudColor: .systemCyan){
                print("Обои")
            }),
            .staticCell(model: Setting(name: "Ожидание",icon: .clock, iconBackgroudColor: .black){
                print("Ожидание")
            }),
            .staticCell(model: Setting(name: "Siri и Поиск",icon: .siri, iconBackgroudColor: .black){
                print("Siri и Поиск")
            }),
            .staticCell(model: Setting(name: "Face ID и код-пароль",icon: .faceId, iconBackgroudColor: .green){
                print("Face ID и код-пароль")
            })
        ]))
    }
    
    // MARK: - UI
    
    private lazy var tabelView: UITableView = {
        let tabelView = UITableView(frame: .zero, style: .grouped)
        tabelView.dataSource = self
        tabelView.delegate = self
        tabelView.frame = view.bounds
        tabelView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifiter)
        tabelView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifiter)
        tabelView.rowHeight = 56
        return tabelView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройка"
        setupViews()
        configure()
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
        return models.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        switch model.self {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifiter,
                                                           for: indexPath) as? SettingsTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifiter,
                                                           for: indexPath) as? SwitchTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        let cellController = CellColorViewController()
        navigationController?.pushViewController(cellController, animated: true)
        switch type.self {
        case .staticCell(model: let model):
            cellController.setColor =  model.iconBackgroudColor
            cellController.setText =  model.name
            model.handler()
        case .switchCell(let model):
            cellController.setColor =  model.iconBackgroudColor
            cellController.setText =  model.name
            model.handler()
        }
    }
   
}
