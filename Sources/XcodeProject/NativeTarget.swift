//
//  NativeTarget.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct NativeTarget {
    public var section: Section {
        return .nativeTarget
    }
    
    public let identifier: String
    public let buildConfigurationList: String
    public let buildPhases: [String]
    public let buildRules: [String]
    public let dependencies: [String]
    public let name: String
    public let productName: String
    public let productReference: String
    public let productType: String
}
