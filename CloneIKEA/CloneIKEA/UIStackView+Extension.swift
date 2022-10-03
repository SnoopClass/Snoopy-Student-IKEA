//
//  UIStackView+Extension.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/02.
//

import Foundation
import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { [weak self] view in
            self?.addArrangedSubview(view)
        }
    }
}
