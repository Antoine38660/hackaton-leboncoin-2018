//
//  Bindable.swift
//  Schneider-Demo
//
//  Created by Ysée Monnier on 23/03/2018.
//  Copyright © 2018 Ysée Monnier. All rights reserved.
//

import Foundation

public protocol Bindable {
    associatedtype T
    /// Bind data to the current view.
    ///
    /// - Parameter object: Data.
    func bind(object obj: T)
}
