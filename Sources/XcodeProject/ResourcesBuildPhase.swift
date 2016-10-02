//
//  ResourcesBuildPhase.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct ResourcesBuildPhase {
    public var section: Section {
        return .resourcesBuildPhase
    }
    
    public let identifier: String
    public let buildActionMask: Int
    public let files: [String]
    public let runOnlyForDeploymentPostprocessing: Int
}
