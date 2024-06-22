//
//  SecondController.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Islam Temirbek on 22.06.2024.
//

import UIKit

class SecondController: UIViewController {
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 106/255,
                                         green: 116/255,
                                         blue: 207/255,
                                         alpha: 1.0)
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.addTarget(self, action: #selector(loginButtonDidPress), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        
        view.addSubview(closeButton)
        
        closeButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(56)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
    @objc
    private func loginButtonDidPress() {
//        dismiss(animated: true)
//        self.navigationController?.popViewController(animated: true)
//        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
}
