//
//  TitleSectionView.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/04.
//

import UIKit

extension SearchViewController {
    
    class TitleSectionView: UIView {
        
        private lazy var titleLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "검색"
            label.font = .preferredFont(forTextStyle: .title2, compatibleWith: UITraitCollection(legibilityWeight: .bold))
            return label
        }()
        
        private lazy var searchBar: SearchBar = {
            let searchBar = SearchBar()
            searchBar.translatesAutoresizingMaskIntoConstraints = false
            return searchBar
        }()
        
        init() {
            super.init(frame: .zero)
            render()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func render() {
            addSubview(titleLabel)
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: CGFloat(Margin.top)),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat(Margin.sectionTitleLeft)),
            ])
            
            addSubview(searchBar)
            NSLayoutConstraint.activate([
                searchBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: CGFloat(Margin.top)),
                searchBar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: CGFloat(Margin.bottom)),
                searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat(Margin.sectionContentLeft)),
                searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: CGFloat(Margin.sectionContentRight)),
            ])
        }
        
    }

    private class SearchBar: UIView {
        
        enum Size {
            static let height = 50
        }
        
        private let searchTextField: UISearchTextField = {
            let searchTextField = UISearchTextField()
            searchTextField.translatesAutoresizingMaskIntoConstraints = false
            searchTextField.borderStyle = .none
            searchTextField.placeholder = "무엇을 찾고 있나요?"
            return searchTextField
        }()
        
        init() {
            super.init(frame: .zero)
            configureUI()
            render()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func configureUI() {
            layer.cornerRadius = CGFloat(Size.height / 2)
            layer.borderWidth = 1
            layer.borderColor = UIColor.gray.cgColor
        }
        
        private func render() {
            self.heightAnchor.constraint(equalToConstant: CGFloat(Size.height)).isActive = true
            
            addSubview(searchTextField)
            NSLayoutConstraint.activate([
                searchTextField.centerYAnchor.constraint(equalTo: centerYAnchor),
                searchTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat(Size.height / 2)-15),
                searchTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -CGFloat(Size.height / 2)+15)
            ])
        }
        
    }

}
