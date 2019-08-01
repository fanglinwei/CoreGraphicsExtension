//
//  Extension.swift
//  Example
//
//  Created by calm on 2019/8/1.
//  Copyright © 2019 calm. All rights reserved.
//

import Foundation

/// limit a value to a range so that it is not less than the minimum, nor higher than the maximum
///
///     limit(1, 5...10)
///     // 5
///     limit(-1, 5...10)
///     // 5
///     limit(8, 5...10)
///     // 8
///     limit(11, 5...10)
///     // 10
///
/// - Parameters:
///   - x: value
///   - range: Closed range
func limit<T>(_ x: T, _ range: ClosedRange<T>) -> T where T : Comparable {
    return min(max(x, range.lowerBound), range.upperBound)
}
