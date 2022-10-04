//
//  TitleSectionView.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/04.
//

import UIKit

extension SearchViewController {
    
    class TitleSectionView: UIView {
        
        lazy var titleLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "검색"
            label.font = .preferredFont(forTextStyle: .title2, compatibleWith: UITraitCollection(legibilityWeight: .bold))
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            render()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func render() {
            addSubview(titleLabel)
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: CGFloat(Margin.top)),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat(Margin.sectionTitleLeft)),
            ])
        }
        
    }

}
