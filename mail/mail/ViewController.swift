//
//  ViewController.swift
//  mail
//
//  Created by 小嶋涼 on 2019/12/01.
//  Copyright © 2019年 小嶋涼. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "logout", style: .plain, target: self, action: #selector(hendleLogout))
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func hendleLogout() {
        let loginController = LoginController()
        present(loginController, animated:true, completion: nil)
    }


}

