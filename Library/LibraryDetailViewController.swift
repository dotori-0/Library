//
//  LibraryDetailViewController.swift
//  Library
//
//  Created by SC on 2022/07/21.
//

import UIKit

class LibraryDetailViewController: UIViewController {
    
    static let identifier = "LibraryDetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func moveToWebViewButtonClicked(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Web", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: WebViewController.identifier) as! WebViewController
        
        guard let vc = sb.instantiateViewController(withIdentifier: WebViewController.identifier) as? WebViewController else {
            print("View Controller 없음")
            return
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
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
