//
//  LibraryCollectionViewController.swift
//  Library
//
//  Created by SC on 2022/07/20.
//

import UIKit


class LibraryCollectionViewController: UICollectionViewController {
    
    var movieInfo = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 12
        let horizontalInset: CGFloat = 14
        layout.sectionInset = UIEdgeInsets(top: 20, left: horizontalInset, bottom: 20, right: horizontalInset)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        let width = UIScreen.main.bounds.width - (horizontalInset * 2) - spacing  // 모든 여백 제외한 너비
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        
        collectionView.collectionViewLayout = layout
        
    }

    // 셀의 갯수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieInfo.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LibraryCollectionViewCell", for: indexPath) as! LibraryCollectionViewCell
        let data = movieInfo.movie[indexPath.item]
        
        cell.configureCell(data: data)
        
        
        return cell
    }
}
