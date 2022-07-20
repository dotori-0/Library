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

        
    }

    // 셀의 갯수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieInfo.movie.count
    }
}
