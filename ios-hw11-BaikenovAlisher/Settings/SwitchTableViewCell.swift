//
//  SwitchTableViewCell.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 29.06.2024.
//

import UIKit
import SnapKit

final class SwitchTableViewCell: UITableViewCell {
    static let identifiter = "SwitchTableViewCell"
    
    // MARK: - UI
    private let iconContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        return view
    }()
    
    private let iconImagesView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    private let iconImagesNumberView: UIImageView = {
        let imageNumberView = UIImageView()
        imageNumberView.tintColor = .red
        imageNumberView.contentMode = .scaleAspectFit
        return imageNumberView
        
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let title: UILabel = {
        let title = UILabel()
        title.textColor = .gray
        title.numberOfLines = 1
        return title
    }()
    
    private let cellSWitch: UISwitch = {
        let cellSWitch = UISwitch()
        cellSWitch.onTintColor = .systemGreen
        return cellSWitch
    }()
    
    // MARK: - Lifecyle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: SettingSwitch){
        label.text = model.name
        iconImagesView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroudColor
        title.text = model.title
        cellSWitch.isOn = true
    }
    
    //MARK: - Setup Views
    private func setupViews() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(iconImagesNumberView)
        contentView.addSubview(title)
        contentView.addSubview(iconImagesView)
        contentView.addSubview(cellSWitch)
    }
    
    //MARK: - Setup Constraints
    
    private func setupConstraints() {
        
        iconContainer.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(6)
            make.bottom.equalToSuperview().offset(-6)
            make.width.equalTo(iconContainer.snp.height)
            make.leading.equalToSuperview().offset(13)
            
        }
        iconImagesView.snp.makeConstraints { make in
            make.width.height.equalTo(iconContainer.snp.width).dividedBy(1.5)
            make.center.equalTo(iconContainer.snp.center)
        }
        
        title.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-11)
            make.bottom.equalToSuperview().offset(-6)
            make.centerY.equalToSuperview().offset(4)
        }
        
        cellSWitch.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-6)
            make.centerX.equalTo(title.snp.centerX)
            make.centerY.equalTo(title.snp.centerY)
        }
        
        label.snp.makeConstraints { make in
            make.leading.equalTo(iconContainer.snp.trailing).offset(10)
            make.bottom.equalToSuperview().offset(-6)
            make.centerY.equalTo(iconContainer.snp.centerY)
        }
    }
    
    
    
}
