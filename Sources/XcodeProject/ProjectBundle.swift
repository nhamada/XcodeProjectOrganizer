//
//  ProjectBundle.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/03.
//
//

public struct ProjectBundle {
    public let archiveVersion: Int
    public let classes: [String:Any]
    public let objectVersion: Int
    public let rootObject: String
    
    public let buildFile: BuildFile
    public let FileReference: FileReference
    public let FrameworksBuildPhase: FrameworksBuildPhase
    public let group: Group
    public let nativetarget: NativeTarget
    public let project: Project
    public let resourcesBuildPhase: ResourcesBuildPhase
    public let sourcesBuildPhase: SourcesBuildPhase
    public let variantGroup: VariantGroup
    public let buildConfiguration: BuildConfiguration
    public let configurationList: ConfigurationList
}
