//
//  Array+ .swift
//  memorize
//
//  Created by Edinelson Lima on 19/06/22.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        
        return nil
    }
}
