//
//  WebViewController.swift
//  Library
//
//  Created by SC on 2022/07/21.
//

import UIKit

class WebViewController: UIViewController {
    
    static let identifier = "WebViewController"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func popToRootViewButtonClicked(_ sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)  // 이전 화면
//        super.navigationController?.popViewController(animated: true)  // 이전 화면
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    

}
