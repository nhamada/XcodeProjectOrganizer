//
//  FrameworksBuildPhase.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct FrameworksBuildPhase {
    public var section: Section {
        return .frameworksBuildPhase
    }
    
    public let identifier: String
    public let buildActionMask: Int
    public let files: [String]
    public let runOnlyForDeploymentPostprocessing: Int
}
