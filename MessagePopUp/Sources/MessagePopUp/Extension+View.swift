//
//  File.swift
//
//
//  Created by Xristos Mantsos on 28/1/25.
//

import SwiftUI

@available(iOS 17.0, *)
public extension View {
    func popUpMessage(_ message: Binding<MessageOptions?>) -> some View {
        self.modifier(PopUpMessageViewModifier(message: message))
    }
}
