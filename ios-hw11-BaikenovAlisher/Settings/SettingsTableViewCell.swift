//
//  SettingsTableViewCell.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 29.06.2024.
//

import UIKit
import SnapKit

 final class SettingsTableViewCell: UITableViewCell {
     private lazy var titleLabel: UILabel = {
         let label = UILabel()
         label.text = "Login"
         label.textColor = .white
         label.font = .boldSystemFont(ofSize: 24)
         return label
     }()
     
     private lazy var iconImageView: UIImageView = {
         let waveSecond = UIImageView()
         waveSecond.image = .lock
         return waveSecond
     }()
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         setupViews()
         setupConstraints()
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     // MARK: - Setup views
     
     private func setupViews() {
         contentView.addSubview(titleLabel)
         contentView.addSubview(iconImageView)
     }
     
     // MARK: - Constraints
     
     private func setupConstraints() {
         iconImageView.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(13)
             make.bottom.equalToSuperview().offset(-13)
             make.leading.equalToSuperview().offset(10)
         }
         
         titleLabel.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(16)
             make.bottom.equalToSuperview().offset(-16)
             make.leading.equalTo(iconImageView).offset(10)
         }
         
     }
}
