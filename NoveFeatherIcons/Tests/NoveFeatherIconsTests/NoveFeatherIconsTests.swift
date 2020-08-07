import XCTest
@testable import NoveFeatherIcons

#if canImport(UIKit)
final class NoveFeatherIconsTests: XCTestCase {
    
    func testAllIconsReturnImage() {
        Feather.IconName.allCases.forEach { (icon) in            
            let image = Feather.getIcon(icon)
            XCTAssertNotNil(image)
            
        }
    }
}
#endif
