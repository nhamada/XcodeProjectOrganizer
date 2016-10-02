//
//  BuildFile.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct BuildFile {
    public var section: Section {
        return .buildFile
    }
    
    public let identifier: String
    public let fileReferenceIdentifier: String
}
