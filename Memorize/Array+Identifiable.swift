//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Chris Kim on 6/14/20.
//  Copyright © 2020 Chris Kim. All rights reserved.
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
