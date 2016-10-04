//
//  Section.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

public enum Section {
    case buildFile
    case containerItemProxy
    case fileReference
    case frameworksBuildPhase
    case group
    case nativeTarget
    case project
    case resourcesBuildPhase
    case sourcesBuildPhase
    case targetDependency
    case variantGroup
    case buildConfiguration
    case configurationList
    
    private var pbxPrefix: String { return "PBX" }
    private var xcPrefix: String { return "XC" }
    
    public var name: String {
        switch self {
        case .buildFile:
            return "\(pbxPrefix)BuildFile"
        case .containerItemProxy:
            return "\(pbxPrefix)ContainerItemProxy"
        case .fileReference:
            return "\(pbxPrefix)FileReference"
        case .frameworksBuildPhase:
            return "\(pbxPrefix)FrameworksBuildPhase"
        case .group:
            return "\(pbxPrefix)Group"
        case .nativeTarget:
            return "\(pbxPrefix)NativeTarget"
        case .project:
            return "\(pbxPrefix)Project"
        case .resourcesBuildPhase:
            return "\(pbxPrefix)ResourcesBuildPhase"
        case .sourcesBuildPhase:
            return "\(pbxPrefix)SourcesBuildPhase"
        case .targetDependency:
            return "\(pbxPrefix)TargetDependency"
        case .variantGroup:
            return "\(pbxPrefix)VariantGroup"
        case .buildConfiguration:
            return "\(xcPrefix)BuildConfiguration"
        case .configurationList:
            return "\(xcPrefix)ConfigurationList"
        }
    }
}
