//
//  Array+Only.swift
//  Memorize
//
//  Created by Chris Kim on 6/14/20.
//  Copyright © 2020 Chris Kim. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
