//
//  BuildConfiguration.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct BuildConfiguration {
    public var section: Section {
        return .buildConfiguration
    }
    
    public let identifier: String
    public let buildSettings: [String:Any]
    public let name: String
}
