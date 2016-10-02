//
//  Group.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct Group {
    public var section: Section {
        return .group
    }
    
    public let identifier: String
    public let children: [String]
    public let sourceTree: String
    
    public let name: String?
    public let path: String?
}

