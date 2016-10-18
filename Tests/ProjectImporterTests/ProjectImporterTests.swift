import XCTest
@testable import ProjectImporter

class ProjectImporterTests: XCTestCase {
    
    func testSampleProject() {
        let filepath = "./Resources/DevHelperToolkit.xcodeproj/project.pbxproj"
        let tokens = ProjectTokenizer.tokenize(at: filepath)
        for t in tokens {
            print(t)
        }
    }
    
    static var allTests : [(String, (ProjectImporterTests) -> () throws -> Void)] {
        return [
            ("testSampleProject", testSampleProject),
        ]
    }
}
