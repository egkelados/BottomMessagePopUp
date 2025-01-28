//
//  File.swift
//
//
//  Created by Xristos Mantsos on 28/1/25.
//
import SwiftUI

@available(iOS 17.0, *)
public struct MessageOptions {
    public var message: String
    public var backgroundColor: Color = .red
    public var duration: TimeInterval = 1.0

    public init(message: String, backgroundColor: Color = .red, duration: TimeInterval = 1.0) {
        self.message = message
        self.backgroundColor = backgroundColor
        self.duration = duration
    }
}
