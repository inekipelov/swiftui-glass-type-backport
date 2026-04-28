import SwiftUI
import Backport

public extension Backported {
    /// Backport wrapper for the `SwiftUI.Glass` type.
    ///
    /// This type stores glass configuration in a platform-safe value that can
    /// be used on deployment targets where `SwiftUI.Glass` is unavailable.
    struct Glass: Sendable {
        private enum Variant: Sendable {
            case regular
            case clear
            case identity
        }

        private let variant: Variant
        private let tintColor: Color?
        private let isInteractive: Bool?

        private init(variant: Variant, tintColor: Color? = nil, isInteractive: Bool? = nil) {
            self.variant = variant
            self.tintColor = tintColor
            self.isInteractive = isInteractive
        }

        /// Regular glass style.
        public static var regular: Self {
            Self(variant: .regular)
        }

        /// Clear glass style.
        public static var clear: Self {
            Self(variant: .clear)
        }

        /// Identity glass style.
        public static var identity: Self {
            Self(variant: .identity)
        }

        /// Returns a copy with the specified tint color.
        ///
        /// - Parameter color: Tint color to apply.
        /// - Returns: A new glass value with updated tint.
        public func tint(_ color: Color?) -> Self {
            Self(variant: variant, tintColor: color, isInteractive: isInteractive)
        }

        /// Returns a copy with the specified interactivity setting.
        ///
        /// - Parameter isEnabled: `true` to make glass interactive, `false` otherwise.
        /// - Returns: A new glass value with updated interactivity.
        public func interactive(_ isEnabled: Bool = true) -> Self {
            Self(variant: variant, tintColor: tintColor, isInteractive: isEnabled)
        }

        #if !os(visionOS)
        @available(iOS 26.0, macOS 26.0, tvOS 26.0, watchOS 26.0, *)
        /// Native `SwiftUI.Glass` value synthesized from this backport.
        ///
        /// Use this property when bridging backported configuration to APIs that
        /// require native `SwiftUI.Glass`.
        public var swiftUIGlass: SwiftUI.Glass {
            let glass: SwiftUI.Glass = switch variant {
            case .regular:
                .regular
            case .clear:
                .clear
            case .identity:
                .identity
            }

            let interactiveGlass = if let isInteractive {
                glass.interactive(isInteractive)
            } else {
                glass
            }

            return interactiveGlass.tint(tintColor)
        }
        #endif
    }
}
