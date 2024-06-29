//
//  SettingsTableViewCell.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 29.06.2024.
//

import UIKit
import SnapKit

final class SettingsTableViewCell: UITableViewCell {
    static let identifiter = "SettingsTableViewCell"
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
        imageNumberView.frame = CGRect(x: 330, y: 11, width: 25, height: 25)
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)
        
        let imageSize: CGFloat = size/1.5
        iconImagesView.frame = CGRect(x: (size-imageSize)/2, y: (size-imageSize)/2, width: imageSize, height: imageSize)
        iconImagesView.center = iconContainer.center
        
        label.frame = CGRect(
            x: 25 + iconContainer.frame.size.width,
            y: 0,
            width: contentView.frame.size.width - 20 - iconContainer.frame.size.width,
            height: contentView.frame.size.height
        )
    }
    
    public func configure(with model: Setting){
        label.text = model.name
        iconImagesView.image = model.icon
        iconImagesNumberView.image = model.iconNumber
        iconContainer.backgroundColor = model.iconBackgroudColor
        title.text = model.title
    }
    //MARK: - Setup Views
    
    private func setupViews() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(iconImagesNumberView)
        contentView.addSubview(title)
        contentView.addSubview(iconImagesView)
    }
    
    //MARK: - Setup Constraints
    
    private func setupConstraints() {
        title.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-11)
            make.bottom.equalToSuperview().offset(-6)
        }
        
    }
}
