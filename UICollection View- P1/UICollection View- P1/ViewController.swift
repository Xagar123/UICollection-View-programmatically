//
//  ViewController.swift
//  UICollection View- P1
//
//  Created by Admin on 02/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myCollectionView: UICollectionView!
   
    var productName:[String] = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image1"]
    var productImage:[String] = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.image1.image = UIImage(imageLiteralResourceName: productImage[indexPath.row])
        cell.lbl.text = productName[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }
}
