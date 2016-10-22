//
//  SourcesBuildPhase.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

public struct SourcesBuildPhase {
    public var section: Section {
        return .sourcesBuildPhase
    }
    
    public let identifier: String
    public let buildActionMask: Int
    public let files: [String]
    public let runOnlyForDeploymentPostprocessing: Int
}
