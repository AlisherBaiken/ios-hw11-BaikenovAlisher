import SnapKit
import UIKit

final class ViewController: UIViewController {
    // MARK: - UI
    private lazy var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = .background
        return backgroundImage
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
        textField.setLeftIcon(.logMan)
        return textField
        
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password "
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = .white
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
        return button
    }()
    
    private lazy var forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    private lazy var stackViewForLabelAndButton: UIStackView = {
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
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    private lazy var stackViewForFacebookAndTwitt: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Facebook", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 106/255,
                                         green: 116/255,
                                         blue: 207/255,
                                         alpha: 1.0)
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
    
    private lazy var twitterButton: UIButton = {
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
    
    private lazy var orConnectWithLabel: UILabel = {
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
        
        emailTextField.layer.cornerRadius = 20
        emailTextField.layer.shadowColor = UIColor.black.cgColor
        emailTextField.layer.shadowOpacity = 0.3
        emailTextField.layer.shadowOffset = .zero
        emailTextField.layer.shadowRadius = 10
        emailTextField.layer.shouldRasterize = true
        emailTextField.layer.rasterizationScale = UIScreen.main.scale
        
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.layer.shadowColor = UIColor.black.cgColor
        passwordTextField.layer.shadowOpacity = 0.3
        passwordTextField.layer.shadowOffset = .zero
        passwordTextField.layer.shadowRadius = 10
        passwordTextField.layer.shouldRasterize = true
        passwordTextField.layer.rasterizationScale = UIScreen.main.scale
        
        loginButton.layer.cornerRadius = 20
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.shadowColor = UIColor.black.cgColor
        facebookButton.layer.shadowOpacity = 0.3
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 10
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        
        twitterButton.layer.cornerRadius = 20
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.shouldRasterize = true
        
    }
    
    // MARK: - Setup Views
    private func setupViews() {
        view.backgroundColor = .white
        
        [backgroundImage, loginLabel, emailTextField, passwordTextField, loginButton, forgotButton, stackViewForLabelAndButton, stackViewForFacebookAndTwitt, orConnectWithLabel ].forEach {
            view.addSubview($0)
        }
        stackViewForLabelAndButton.addArrangedSubview(dontHaveAccount)
        stackViewForLabelAndButton.addArrangedSubview(signUpButton)
        stackViewForFacebookAndTwitt.addArrangedSubview(facebookButton)
        stackViewForFacebookAndTwitt.addArrangedSubview(twitterButton)
      
    }
    
    // MARK: - Setup Constraunts
    private func setupConstraints() {
        backgroundImage.snp.makeConstraints { make in
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
        
        stackViewForLabelAndButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
        }
        
        stackViewForFacebookAndTwitt.snp.makeConstraints { make in
            make.bottom.equalTo(stackViewForLabelAndButton.snp.top).offset(-40)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(40)
        }
        
        orConnectWithLabel.snp.makeConstraints { make in
            make.bottom.equalTo(stackViewForFacebookAndTwitt.snp.top).offset(-30)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20,
                                                 y: 12,
                                                 width: 13,
                                                 height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20,
                                                             y: 0,
                                                             width: 50,
                                                             height: 40))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

