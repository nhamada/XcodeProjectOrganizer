//
//  Project.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct Project {
    public var section: Section {
        return .project
    }
    
    public let identifier: String
    public let attributes: ProjectAttribute
    public let buildConfigurationList: String
    public let compatibilityVersion: String
    public let developmentRegion: String
    public let hasScannedForEncodings: Int
    public let knownRegions: [String]
    public let mainGroup: String
    public let projectRefGroup: String
    public let projectDirPath: String
    public let projectRoot: String
    public let targets: [String]
}

struct ProjectAttribute {
    public let lastSwiftUpdateCheck: String
    public let lastUpgradeCheck: String
    public let organizationName: String
    public let targetAttributes: TargetAttribute
}

struct TargetAttribute {
    public let identifier: String
    public let createdOnToolsVersion: String
    public let provisioningStyle: String
}
