//
//  LibraryCollectionViewCell.swift
//  Library
//
//  Created by SC on 2022/07/20.
//

import UIKit
import Kingfisher

class LibraryCollectionViewCell: UICollectionViewCell {
    
//    @IBOutlet weak var contentView: UIView!
//    Cannot override 'strong' property with 'weak' property
//    Getter for 'contentView' with Objective-C selector 'contentView' conflicts with getter for 'contentView' from superclass 'UICollectionViewCell' with the same Objective-C selector
//    Property 'contentView' with type 'UIView?' cannot override a property with type 'UIView'
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var rateLabel: UILabel!
    
    func configureCell(data: Movie) {
        #colorLiteral(red: 0.7672912478, green: 0.7759679556, blue: 0.931388557, alpha: 1)
        #colorLiteral(red: 0.6613729596, green: 0.8103576303, blue: 0.7744751573, alpha: 1)
        #colorLiteral(red: 0.9001491666, green: 0.7588487864, blue: 0.7798168659, alpha: 1)
        #colorLiteral(red: 0.7359035611, green: 0.8384718299, blue: 0.86347121, alpha: 1)
        #colorLiteral(red: 0.8850976825, green: 0.7780609727, blue: 0.6756395698, alpha: 1)
//        containerView.backgroundColor = .systemMint
        containerView.backgroundColor = #colorLiteral(red: 0.6613729596, green: 0.8103576303, blue: 0.7744751573, alpha: 1)
        containerView.layer.cornerRadius = 20
//        containerView.clipsToBounds = false
//        containerView.layer.masksToBounds = true
        
//        bookTitleLabel.font = .boldSystemFont(ofSize: 24)
        bookTitleLabel.font = .systemFont(ofSize: 24, weight: .bold)  // .boldSystemFont 보다 두꺼움
        bookTitleLabel.textColor = .white
        bookTitleLabel.text = data.title
        
        let url = URL(string: data.posterImageURL)
        posterImageView.kf.setImage(with: url)
        posterImageView.backgroundColor = .systemIndigo
        
        rateLabel.font = .systemFont(ofSize: 12)
        rateLabel.textColor = .white
        rateLabel.text = "\(data.rate)"
    }
}
