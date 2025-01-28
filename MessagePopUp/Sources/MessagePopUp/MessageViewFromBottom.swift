//
//  File.swift
//
//
//  Created by Xristos Mantsos on 28/1/25.
//

import SwiftUI

@available(iOS 17.0, *)
struct MessageViewFromBottom: View {
    @Binding var message: MessageOptions?

    var body: some View {
        if let message = message {
            Text(message.message)
                .padding()
                .background(message.backgroundColor)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 4)
                .padding(.horizontal)
                .padding(.bottom, 20) // Space from the bottom
                .task {
                    // Auto-dismiss the popup after the specified duration
                    try? await Task.sleep(nanoseconds: UInt64(message.duration * 1_000_000_000))
                    self.message = nil // Clear the message
                }
        }
    }
}
