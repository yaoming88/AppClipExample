//
//  ViewController.swift
//  Clip
//
//  Created by 姚明振 on 2021/12/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let l = UILabel()
        l.text = "我是 App Clip"
        l.bounds = CGRect(x: 0, y: 0, width: 200, height: 60)
        l.center = view.center
        l.textAlignment = .center
        l.textColor = .orange
        l.font = UIFont.systemFont(ofSize: 30)
        view.addSubview(l)
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true) {}
    }
}

