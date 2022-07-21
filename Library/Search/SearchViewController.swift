//
//  SearchViewController.swift
//  Library
//
//  Created by SC on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Search"  // navigationItem 생략 가능
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))

        // Do any additional setup after loading the view.
    }
    
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
    
    
//    @objc  // 엔터쳐도 됨
//    func closeButtonClicked() {
//        self.dismiss(animated: true)
//    }

    
    @IBAction func buttonClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
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
