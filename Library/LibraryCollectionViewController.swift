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
        
        navigationController?.navigationBar.prefersLargeTitles = true

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
//        cell.layer.cornerRadius
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cell =
        print(#function)
        
        // Push
        
//        let sb = UIStoryboard(name: <#T##String#>, bundle: <#T##Bundle?#>)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: LibraryDetailViewController.identifier) as! LibraryDetailViewController
  
        // vc의 viewDidLoad() 전 함수를 실행하여 오류 발생
//        let data = movieInfo.movie[indexPath.item]
//        vc.configureViews(data: data)
        
        self.navigationController?.pushViewController(vc, animated: true)   // 네비게이션 컨트롤러가 있으면 푸시
        
        
    }
    
    
    @IBAction func searchButtonClicked(_ sender: Any) {
        
        // 화면 전환:
        // 1. 스토리보드 파일
        // 2. 스토보드 내에 뷰 컨트롤러
        // 2.5 (네비게이션 임베드)
        // 2.5 (화면 전환 방식)
        // 3. 화면 전환
        // 돋보기 버튼을 클릭하면 > SearchViewController Present
        
        // 1.
        let sb = UIStoryboard(name: "Search", bundle: nil)
        
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier) as! SearchViewController
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: SearchViewController.identifier) as! SearchViewController
        
        // 2.5 vc를 navigation controller embed
        let nav = UINavigationController(rootViewController: vc)
        
        // 2.5 present 시 화면 전환 방식 설정 (옵션)
        nav.modalPresentationStyle = .fullScreen
        
        // 3.
        self.present(nav, animated: true)  // self 생략 가능한지? O
        
        
    }
    
    
}
