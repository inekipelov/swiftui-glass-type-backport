import SwiftUI
import Backport
import Testing
import GlassBackport

struct GlassTypeTests {
    @Test
    func exposesPublicVariantsAndModifiers() {
        _ = Backported.Glass.regular
            .tint(.red)
            .interactive()

        _ = Backported.Glass.clear
            .tint(Color?.none)
            .interactive(false)

        _ = Backported.Glass.identity
    }

    #if !os(visionOS)
    @Test
    func exposesSwiftUIGlassForClients() {
        if #available(iOS 26.0, macOS 26.0, tvOS 26.0, watchOS 26.0, *) {
            _ = Backported.Glass.regular.swiftUIGlass
        }
    }
    #endif
}
