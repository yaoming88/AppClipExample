//
//  LoginViewController.swift
//  BillionBottle
//
//  Created by 姚明振 on 2021/12/4.
//

import UIKit

class LoginViewController: UIViewController {

    var autoLoginBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .orange
#if APPCLIP
        btn.setTitle("自动登录(APPCLIP)", for: .normal)
#else
        btn.setTitle("自动登录(APP)", for: .normal)
#endif
        btn.addTarget(self, action: #selector(login), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(autoLoginBtn)
        autoLoginBtn.frame = CGRect(x: 20, y: UIScreen.main.bounds.height - 90, width: UIScreen.main.bounds.width - 40, height: 70)
    }
    
    @objc
    func login() {
        let alertController = UIAlertController(title: "登录成功", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "好的", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        present(alertController, animated: true) {
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
