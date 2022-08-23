//
//  ViewController.swift
//  weekly-challenge01
//
//  Created by SHSEO on 2022/08/21.
//

import UIKit
import SwiftUI
import SnapKit

class ViewController: UIViewController {
    
    //let backButton = UIButton()
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "back"), for: .normal)
        return btn
    }()
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.text = "Welcome back! Glad \nto see you, Again!"
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 2
        return label
    }()
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 8
        textField.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 249/255, alpha: 1)
        
        textField.placeholder = "Enter your email"
        textField.addLeftPadding()
        textField.adjustsFontSizeToFitWidth = true
        
        
        textField.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return textField
    }()
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 8
        textField.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 249/255, alpha: 1)
        
        textField.placeholder = "Enter your password"
        textField.isSecureTextEntry = true
        textField.addLeftPadding()
        textField.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return textField
    }()
    
    lazy var forgotLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Forgot Password?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        return label
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        button.layer.cornerRadius = 8
        
        
        button.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return button
    }()
    
    
    lazy var withLoginStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstDividerView, withLoginLabel, secondDividerView])
        stackView.spacing = 12
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    lazy var firstDividerView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.frame = CGRect(x: 0, y: 0, width: 112, height: 1)
        view.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        return view
    }()
    
    lazy var withLoginLabel: UILabel = {
        let label = UILabel()
        label.text = "Or Login with"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    lazy var secondDividerView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        
        view.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        return view
    }()
    
    lazy var socialStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [facebookView,googleView,appleView])
        
        stackView.spacing = 12
        
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var facebookView: UIView = {
       let view = UIView()
        view.addSubview(facebookButton)
        
        return view
    }()
    
    lazy var facebookButton: UIButton = {
       let button = UIButton()
        button.snp.makeConstraints{
            $0.height.equalTo(56)
            $0.width.equalTo(105)
        }
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        button.setImage(UIImage(named: "facebook_ic"), for: .normal)
        return button
    }()
    
    lazy var googleView: UIView = {
       let view = UIView()
        view.addSubview(googleButton)
        
        return view
    }()
    
    lazy var googleButton: UIButton = {
       let button = UIButton()
        button.snp.makeConstraints{
            $0.height.equalTo(56)
            $0.width.equalTo(105)
        }
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        button.setImage(UIImage(named: "google_ic"), for: .normal)
        return button
    }()
    
    lazy var appleView: UIView = {
       let view = UIView()
        view.addSubview(appleButton)
        
        return view
    }()
    
    lazy var appleButton: UIButton = {
       let button = UIButton()
        button.snp.makeConstraints{
            $0.height.equalTo(56)
            $0.width.equalTo(105)
        }
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        button.setImage(UIImage(named: "apple_ic"), for: .normal)
        return button
    }()
    
    lazy var registerLabel: UILabel = {
       let label = UILabel()
        label.text = "Don’t have an account? Register Now"
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        
        let attrs1 = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15, weight: .medium), NSAttributedString.Key.foregroundColor : UIColor.black]

        let attrs2 = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.systemMint]

           let attributedString1 = NSMutableAttributedString(string:"Don’t have an account? ", attributes:attrs1)

           let attributedString2 = NSMutableAttributedString(string:"Register Now", attributes:attrs2)

           attributedString1.append(attributedString2)
           label.attributedText = attributedString1
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        
        self.view.addSubview(backButton)
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(forgotLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(withLoginStackView)
        self.view.addSubview(socialStackView)
        self.view.addSubview(registerLabel)
        
        backButton.snp.makeConstraints{
            $0.top.equalToSuperview().offset(56)
            $0.leading.equalToSuperview().offset(22)
        }
        
        welcomeLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalToSuperview().offset(-73)
            $0.top.equalToSuperview().offset(125)
        }
        
        emailTextField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalToSuperview().offset(-22)
            $0.top.equalTo(welcomeLabel.snp.bottom).offset(32)
            $0.height.equalTo(56)
            
        }
        
        passwordTextField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalToSuperview().offset(-22)
            $0.top.equalTo(emailTextField.snp.bottom).offset(15)
            $0.height.equalTo(56)
            
        }
        
        forgotLabel.snp.makeConstraints{
            $0.top.equalTo(passwordTextField.snp.bottom).offset(15)
            $0.trailing.equalToSuperview().offset(-22)
        }
        
        loginButton.snp.makeConstraints{
            $0.top.equalTo(forgotLabel.snp.bottom).offset(30)
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalToSuperview().offset(-22)
            $0.height.equalTo(56)
        }
        
        withLoginStackView.snp.makeConstraints{
            $0.top.equalTo(loginButton.snp.bottom).offset(35)
            $0.leading.equalTo(loginButton.snp.leading)
        }
        
        socialStackView.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalTo(loginButton.snp.trailing)
            $0.top.equalTo(withLoginStackView.snp.bottom).offset(22)
        }
        
        registerLabel.snp.makeConstraints{
            $0.bottom.equalToSuperview().offset(-26)
            $0.centerX.equalToSuperview()
        }
        
        
        
    }
    
    
}

#if DEBUG
struct ViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ViewControllerPresentable()
            .previewDevice("iPhone 12 mini")
            .ignoresSafeArea()
    }
}
#endif
