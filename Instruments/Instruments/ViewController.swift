//
//  ViewController.swift
//  Instruments
//
//  Created by Ronald Maciel on 18/07/22.
//

import UIKit

class ViewController: UIViewController {
//    var collectionView: UICollectionView?
    
    override func viewDidLoad() {
      super.viewDidLoad()
        view.backgroundColor = .red
        
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: 50, height: 50)
//        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
//
//        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        collectionView?.backgroundColor = .white
//        collectionView?.dataSource = self
//        collectionView?.delegate = self
//
//        view.addSubview(collectionView ?? UICollectionView())
//
//      navigationItem.backBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: nil, action: nil)
    }
}

//extension ViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .cyan
//        return cell
//    }
//}
//
//extension ViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
