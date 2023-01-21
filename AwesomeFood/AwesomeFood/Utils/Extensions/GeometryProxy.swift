//
//  GeometryProxy.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import SwiftUI

extension GeometryProxy {
    /// Dynamic Height by device
    /// - Parameter height: percent value
    /// - Returns: calculated value for device for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }
    
    /// Dynamic Width by device
    /// - Parameter height: percent value
    /// - Returns: calculated value for device for device height
    func dw(weight: Double) -> Double {
        return size.width  * weight
    }
}
