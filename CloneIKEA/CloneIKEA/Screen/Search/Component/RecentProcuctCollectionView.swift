//
//  RecentProcuctCollectionView.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/12.
//

import UIKit

class RecentProcuctCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        register()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func register() {
        register(RecentProductCollectionViewCell.self, forCellWithReuseIdentifier: RecentProductCollectionViewCell.className)
    }

}
