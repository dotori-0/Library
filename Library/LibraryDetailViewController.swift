//
//  LibraryDetailViewController.swift
//  Library
//
//  Created by SC on 2022/07/21.
//

import UIKit
import Kingfisher

class LibraryDetailViewController: UIViewController {
    
    static let identifier = "LibraryDetailViewController"
    
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var plotTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func configureViews(data: Movie) {
        print(#function)
        print(data)
        let url = URL(string: data.posterImageURL)
        posterImageView.kf.setImage(with: url)
        
        titleLabel.text = data.title
        releaseDateLabel.text = data.releaseDate
        runtimeLabel.text = "\(data.runtime)"
        rateLabel.text = "\(data.rate)"
        plotTextView.text = data.overview
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
    



}
