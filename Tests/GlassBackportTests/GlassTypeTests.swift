import SwiftUI
import Backport
import Testing
@testable import GlassBackport

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
}
