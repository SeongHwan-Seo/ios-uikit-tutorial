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
    var backButton: UIButton = {
       let btn = UIButton()
        btn.setImage(UIImage(named: "back"), for: .normal)
        return btn
    }()
    let welcomeLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 29, weight: .bold)
        label.text = "Welcome back! Glad to see you, Again!"
        
        label.numberOfLines = 0
        return label
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 8
        textField.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 249/255, alpha: 1)
        
        textField.placeholder = "Enter your email"
        textField.addLeftPadding()
        
        textField.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 8
        textField.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 249/255, alpha: 1)
        
        textField.placeholder = "Enter your password"
        textField.isSecureTextEntry = true
        textField.addLeftPadding()
        textField.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return textField
    }()
    
    let forgotLabel: UILabel = {
       let label = UILabel()
        
        label.text = "Forgot Password?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        return label
    }()
    
    let loginButton: UIButton = {
       let button = UIButton()
        
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        button.layer.cornerRadius = 8
        
        
        button.layer.applyShadow(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25), alpha: 1, x: 0, y: 4, blur: 10, spread: 0)
        
        return button
    }()
    
    let dividerLabel: UILabel = {
       let label = UILabel()
        
        label.frame = CGRect(x: 0, y: 0, width: 112, height: 0)
        return label
    }()
    
    let dividerLabel_2: UILabel = {
       let label = UILabel()
        
        label.frame = CGRect(x: 0, y: 0, width: 112, height: 0)
        return label
    }()
    
    
    let stroke: UIView = {
       let strokeView = UIView()
        
        return strokeView
    }()
    
    let withLabel: UILabel = {
       let label = UILabel()
        
        label.text = "Or Login with"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(red: 0.416, green: 0.439, blue: 0.486, alpha: 1)
        

        
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
        
        stroke.bounds = dividerLabel.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = dividerLabel.center
        dividerLabel.addSubview(stroke)
        dividerLabel.bounds = dividerLabel.bounds.insetBy(dx: -0.5, dy: -0.5)

        stroke.layer.borderWidth = 1

        stroke.layer.borderColor = UIColor(red: 0.91, green: 0.925, blue: 0.957, alpha: 1).cgColor
        
        self.view.addSubview(dividerLabel)
        self.view.addSubview(withLabel)
        
        backButton.snp.makeConstraints{
            $0.top.equalToSuperview().offset(56)
            $0.leading.equalToSuperview().offset(22)
        }
        
        welcomeLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(22)
            $0.top.equalToSuperview().offset(125)
            $0.width.equalTo(280)
            $0.height.equalTo(78)
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
        
        dividerLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(22)
            $0.trailing.equalTo(withLabel.snp.leading).offset(-22)
            $0.top.equalTo(loginButton.snp.bottom).offset(44)
        }
        
        withLabel.snp.makeConstraints{
            $0.leading.equalTo(stroke.snp.trailing).offset(12)
            $0.top.equalTo(loginButton.snp.bottom).offset(35)
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
