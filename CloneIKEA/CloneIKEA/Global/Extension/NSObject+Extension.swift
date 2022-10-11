//
//  NSObject+Extension.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/12.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
