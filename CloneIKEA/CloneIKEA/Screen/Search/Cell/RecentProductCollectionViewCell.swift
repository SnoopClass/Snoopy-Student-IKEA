//
//  RecentProductCollectionViewCell.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/12.
//

import UIKit

final class RecentProductCollectionViewCell: UICollectionViewCell {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    init(frame: CGRect, image: UIImage?) {
        super.init(frame: frame)
        setImage(image)
        
        render()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(_ image: UIImage?) {
        if let image = image {
            imageView.image = image
        }
        imageView.image = UIImage(systemName: "book")
    }
    
    private func render() {
        contentView.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    private func configureUI() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = contentView.bounds.height / 2
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
}
