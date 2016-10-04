//
//  TargetDependency.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/04.
//
//

struct TargetDependency {
    public var section: Section {
        return .targetDependency
    }
    
    public let identifier: String
    public let target: String
    public let targetProxy: String
}
