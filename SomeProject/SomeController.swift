//
//  SomeController.swift
//  SomeProject
//
//  Created by Ali Apple on 2/19/19.
//  Copyright © 2019 Ali Apple. All rights reserved.
//

import UIKit


class SomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.automaticallyAdjustsScrollViewInsets = false
        
        view.backgroundColor = .white
        
        self.collectionView?.backgroundColor = .white
        //self.collectionView?.isPagingEnabled = true
        self.collectionView?.register(SomeCell.self, forCellWithReuseIdentifier: "somecellid")
        
        //self.collectionView?.contentInset = UIEdgeInsetsMake(65, 0, 0, 0)
        //self.collectionView?.bounces = false
        //self.collectionView?.showsHorizontalScrollIndicator = false
        //self.collectionView?.showsVerticalScrollIndicator = false
        
        //view.addSubview(someTF)
        //someTF.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        //someTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        //someTF.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //someTF.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
//    let someTF: UITextField = {
//        let tf = UITextField()
//        tf.translatesAutoresizingMaskIntoConstraints = false
//        tf.text = "asdada"
//        tf.backgroundColor = .yellow
//
//        return tf
//    }()
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "somecellid", for: indexPath) as! SomeCell
        cell.backgroundColor = indexPath.item % 2 == 0 ? .blue : .green
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/2)
    }
}//







class SomeCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        self.addSubview(someTF)
        someTF.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        someTF.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        someTF.heightAnchor.constraint(equalToConstant: 50).isActive = true
        someTF.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let someTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.text = "asdada"
        tf.backgroundColor = .yellow
        
        return tf
    }()
}//e












