//
//  Array+Only.swift
//  memorize
//
//  Created by Edinelson Lima on 19/06/22.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
