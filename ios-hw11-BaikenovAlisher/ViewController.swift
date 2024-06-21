import SnapKit
import UIKit

final class ViewController: UIViewController {
    // MARK: - UI
    private lazy var waveFirst: UIImageView = {
        let waveFirst = UIImageView()
        waveFirst.image = .wave1
        return waveFirst
    }()
    
    private lazy var waveSecond: UIImageView = {
        let waveSecond = UIImageView()
        waveSecond.image = .wave2
        return waveSecond
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 24)
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email "
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.3
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 10
        textField.layer.shouldRasterize = true
        textField.layer.rasterizationScale = UIScreen.main.scale
        let iconView = UIView(frame: CGRect(x: 20,
                                            y: 0,
                                            width: 50,
                                            height: 40))
        let logView = UIImageView()
        logView.image = .logMan
        logView.frame = CGRect(x: 30,
                               y: 14,
                               width: 10,
                               height: 12)
        let tickView = UIImageView()
        tickView.image = .tick
        tickView.frame = CGRect(x: 240,
                                y: 10,
                                width: 20,
                                height: 20)
        
        iconView.addSubview(tickView)
        iconView.addSubview(logView)
        textField.leftView = iconView
        textField.leftViewMode = .always
        return textField
        
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password "
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.3
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 10
        textField.layer.shouldRasterize = true
        textField.layer.rasterizationScale = UIScreen.main.scale
        
        let iconView = UIView(frame: CGRect(x: 20,
                                            y: 0,
                                            width: 50,
                                            height: 40))
        let lockView = UIImageView()
        lockView.image = .lock
        lockView.frame = CGRect(x: 30,
                                y: 14,
                                width: 10,
                                height: 12)
        iconView.addSubview(lockView)
        textField.leftView = iconView
        textField.leftViewMode = .always
        return textField
    }()
    
    private lazy var signInBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
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
        return button
    }()
    
    private lazy var frgtYourPass: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup Views
    private func setupViews() {
        view.addSubview(waveSecond)
        view.addSubview(waveFirst)
        view.addSubview(label)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInBtn)
        view.addSubview(frgtYourPass)
        
    }
    
    // MARK: - Setup Constraunts
    private func setupConstraints() {
        waveSecond.snp.makeConstraints { make in
            make.top.equalTo(waveFirst.snp.bottom).offset(-98)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        waveFirst.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(68)
            make.leading.equalToSuperview().offset(60)
            make.trailing.equalToSuperview().offset(-60)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.trailing.equalTo(emailTextField)
            make.height.equalTo(40)
        }
        
        signInBtn.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.leading.trailing.equalTo(passwordTextField)
            make.height.equalTo(40)
        }
        
        frgtYourPass.snp.makeConstraints { make in
            make.top.equalTo(signInBtn.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            
        }
        
    }
}
