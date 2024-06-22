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
    
    private lazy var loginLabel: UILabel = {
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
        textField.setLeftIcon(.logMan)
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
        textField.setLeftIcon(.lock)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
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
    
    private lazy var forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    private lazy var stackViewForLabelAndBtn: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var dontHaveAccount: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var signUpBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    private lazy var stackViewForFbookAndTwitt: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var facebookBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Facebook", for: .normal)
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
        let iconView = UIView(frame: CGRect(x: 20,
                                            y: 0,
                                            width: 50,
                                            height: 40))
        let imageView = UIImageView()
        imageView.image = .fbook
        imageView.frame = CGRect(x: 20,
                                 y: 12,
                                 width: 15,
                                 height: 20)
        button.addSubview(imageView)
        return button
    }()
    
    private lazy var twitterBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Twitter", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 106/255,
                                         green: 116/255,
                                         blue: 207/255,
                                         alpha: 1.0)
        button.layer.rasterizationScale = UIScreen.main.scale
        let iconView = UIView(frame: CGRect(x: 20,
                                            y: 0,
                                            width: 50,
                                            height: 40))
        let imageView = UIImageView()
        imageView.image = .twitter
        imageView.frame = CGRect(x: 20,
                                 y: 12,
                                 width: 20,
                                 height: 20)
        button.addSubview(imageView)
        return button
    }()
    
    private lazy var orConnectWith: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        twitterBtn.layer.cornerRadius = 20
        twitterBtn.layer.shadowColor = UIColor.black.cgColor
        twitterBtn.layer.shadowOpacity = 0.3
        twitterBtn.layer.shadowOffset = .zero
        twitterBtn.layer.shadowRadius = 10
        twitterBtn.layer.shouldRasterize = true
    }
    
    // MARK: - Setup Views
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(waveSecond)
        view.addSubview(waveFirst)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(stackViewForLabelAndBtn)
        
//        [waveSecond, waveFirst, loginLabel, emailTextField].forEach {
//            view.addSubview($0)
//        }
        
        stackViewForLabelAndBtn.addArrangedSubview(dontHaveAccount)
        stackViewForLabelAndBtn.addArrangedSubview(signUpBtn)
        view.addSubview(stackViewForFbookAndTwitt)
        stackViewForFbookAndTwitt.addArrangedSubview(facebookBtn)
        stackViewForFbookAndTwitt.addArrangedSubview(twitterBtn)
        view.addSubview(orConnectWith)
        
        
    }
    
    // MARK: - Setup Constraunts
    private func setupConstraints() {
        waveSecond.snp.makeConstraints { make in
            make.top.equalTo(waveFirst.snp.bottom).offset(-100)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        waveFirst.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(68)
            make.leading.equalToSuperview().offset(60)
            make.trailing.equalToSuperview().offset(-60)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.trailing.equalTo(emailTextField)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.leading.trailing.equalTo(passwordTextField)
            make.height.equalTo(40)
        }
        
        forgotButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        stackViewForLabelAndBtn.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
//            make.leading.equalTo(110)
//            make.trailing.equalTo(-110)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
        }
        
        stackViewForFbookAndTwitt.snp.makeConstraints { make in
            make.bottom.equalTo(stackViewForLabelAndBtn.snp.top).offset(-40)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(40)
        }
        
        orConnectWith.snp.makeConstraints { make in
            make.bottom.equalTo(stackViewForFbookAndTwitt.snp.top).offset(-30)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
