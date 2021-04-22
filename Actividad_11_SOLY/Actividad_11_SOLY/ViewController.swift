//
//  ViewController.swift
//  Actividad_11_SOLY
//
//  Created by user167235 on 4/21/21.
//  Copyright © 2021 user167235. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imgNum:[String] = []

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(Celda.nib(), forCellWithReuseIdentifier: Celda.identifier)
        
        
        for valor in 1...19{
            imgNum.append("\(valor)")
        }

        
    }
    
}


extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("haha")
        
    }
}
extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgNum.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Celda.identifier, for: indexPath) as! Celda
        
        cell.configure(with: UIImage(named: imgNum[indexPath.row])!)
        
        return cell
    }
    
}



