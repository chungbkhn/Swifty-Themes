//
//  ThemeProtocol.swift
//  Example
//
//  Created by Chung Duong on 11/7/18.
//  Copyright © 2018 Chung Duong. All rights reserved.
//

import UIKit

typealias SwiftyThemeVoidBlock = () -> Void

protocol SwiftyThemeProtocol {

    var blockApplyUIs: [String: SwiftyThemeVoidBlock] { get set }
    var configs: [String: Any] { get set }
    static func use(block: @escaping SwiftyThemeVoidBlock)
}

extension SwiftyThemeProtocol {
    
    static func apply(block: @escaping SwiftyThemeVoidBlock) {
        DispatchQueue.main.async(execute: block)
    }
}
