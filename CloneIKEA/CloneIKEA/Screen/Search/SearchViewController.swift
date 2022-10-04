//
//  SearchViewController.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/02.
//

import UIKit

class SearchViewController: UIViewController {
    
    private var safeArea: UILayoutGuide {
        get { self.view.safeAreaLayoutGuide }
    }
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 20
        return stackView
    }()
    private let titleSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let recentProductSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let productCategorySectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let campaignSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let popularProductSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let informationSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        render()
    }
    
    func configureUI() {
        view.backgroundColor = .white
    }
    
    func render() {
        renderScrollView()
        renderStackView()
    }
    
    private func renderScrollView() {
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.frameLayoutGuide.topAnchor.constraint(equalTo: safeArea.topAnchor),
            scrollView.frameLayoutGuide.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            scrollView.frameLayoutGuide.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            scrollView.frameLayoutGuide.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
    }
    
    private func renderStackView() {
        scrollView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])
        
        stackView.addArrangedSubviews(titleSectionView,
                                      recentProductSectionView,
                                      productCategorySectionView,
                                      campaignSectionView,
                                      popularProductSectionView,
                                      informationSectionView)
    }

}
