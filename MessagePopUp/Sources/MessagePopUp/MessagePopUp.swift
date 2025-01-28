import SwiftUI

@available(iOS 17.0, *)
public struct PopUpMessageViewModifier: ViewModifier {
    @Binding public var message: MessageOptions?

    public init(message: Binding<MessageOptions?>) {
        self._message = message
    }

    public func body(content: Content) -> some View {
        ZStack {
            content
            if self.message != nil {
                VStack {
                    Spacer()
                    MessageViewFromBottom(message: self.$message)
                        .transition(.move(edge: .top).combined(with: .opacity))
                }
                .ignoresSafeArea()
            }
        }
    }
}
