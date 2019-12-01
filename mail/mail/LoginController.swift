//
//  LoginController.swift
//  mail
//
//  Created by 小嶋涼 on 2019/12/01.
//  Copyright © 2019年 小嶋涼. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let inputsContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let Loginbutton : UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(r: 25, g: 40, b: 50)
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    let Nametext : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    let NameSeparator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let Emailtext : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    let EmailSeparator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let Passtext : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    let ProfileImage : UIImageView = {
        let pro = UIImageView()
        pro.image = UIImage(named: "mail-0")
        pro.contentMode = .scaleAspectFill
        pro.translatesAutoresizingMaskIntoConstraints = false
        return pro
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(r: 21, g: 33, b: 40)
        view.addSubview(inputsContainerView)
        view.addSubview(Loginbutton)
        view.addSubview(ProfileImage)
        setupInputsContainer()
        serLoginContainer()
        setupProfileContainer()
    }
    
    func  setupInputsContainer() {
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -60).isActive = true
        inputsContainerView.heightAnchor.constraint (equalToConstant: 150).isActive = true
        
        inputsContainerView.addSubview(Nametext)
        inputsContainerView.addSubview(Emailtext)
        inputsContainerView.addSubview(Passtext)
        inputsContainerView.addSubview(NameSeparator)
        inputsContainerView.addSubview(EmailSeparator)
        
        Nametext.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        Nametext.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        Nametext.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        Nametext.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        Emailtext.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        Emailtext.topAnchor.constraint(equalTo: Nametext.bottomAnchor).isActive = true
        Emailtext.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        Emailtext.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        Passtext.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        Passtext.topAnchor.constraint(equalTo: Emailtext.bottomAnchor).isActive = true
        Passtext.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        Passtext.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        NameSeparator.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        NameSeparator.topAnchor.constraint(equalTo: Nametext.bottomAnchor).isActive = true
        NameSeparator.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        NameSeparator.heightAnchor.constraint (equalToConstant: 1).isActive = true
        
        EmailSeparator.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        EmailSeparator.topAnchor.constraint(equalTo: Emailtext.bottomAnchor).isActive = true
        EmailSeparator.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        EmailSeparator.heightAnchor.constraint (equalToConstant: 1).isActive = true
    }
    
    func serLoginContainer() {
        Loginbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        Loginbutton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 20).isActive = true
        Loginbutton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        Loginbutton.heightAnchor.constraint (equalToConstant: 50).isActive = true
    }
    
    func setupProfileContainer() {
        ProfileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ProfileImage.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        ProfileImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        ProfileImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
}
extension UIColor {
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat) {
        self.init(red:r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
