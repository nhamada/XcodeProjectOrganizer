//
//  VariantGroup.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct VariantGroup {
    public var section: Section {
        return .variantGroup
    }
    
    public let identifier: String
    public let children: [String]
    public let name: String
    public let sourceTree: String
}
