import SwiftUI

/// A perference key to reveal the size of child view.
public struct SizePreferenceKey: PreferenceKey {
    public typealias Value = CGSize

    public static let defaultValue: Value = .zero

    public static func reduce(value: inout Value, nextValue: () -> Value) {
        let next = nextValue()
        value = CGSize(width: value.width + next.width, height: value.height + next.height)
    }
}
