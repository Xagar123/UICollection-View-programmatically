//
//  PhotoCollectionViewCell.swift
//  collectionView
//
//  Created by Admin on 03/12/22.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "photocell"

    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
//    lazy var namelbl:UILabel = {
//        let lbl = UILabel()
//
//        lbl.font = UIFont.boldSystemFont(ofSize: 22)
//        lbl.textAlignment = .left
//        return lbl
//    }()
//
//
//    lazy var agelbl:UILabel = {
//        let lbl = UILabel()
//        lbl.textAlignment = .left
//        lbl.numberOfLines = 0
//
//        return lbl
//    }()
//
    override init(frame: CGRect) {
        super.init(frame: frame)
//        contentView.addSubview(namelbl)
//        contentView.addSubview(agelbl)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(imageLiteralResourceName: "image1"),
            UIImage(imageLiteralResourceName: "image1"),
            UIImage(imageLiteralResourceName: "image1"),
            UIImage(imageLiteralResourceName: "image1"),
            UIImage(imageLiteralResourceName: "image1"),
        ]
        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
       // setupUI()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
//
//    func setupUI(){
//        let stackView = UIStackView(arrangedSubviews: [namelbl, agelbl])
//        stackView.axis = .vertical
//        stackView.spacing = 5
//        addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        //stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//
//        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
//        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30).isActive = true
//    }

}
