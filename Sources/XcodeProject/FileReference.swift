//
//  FileReference.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/02.
//
//

struct FileReference {
    public var section: Section {
        return .fileReference
    }
    
    public let identifier: String
    public let explicitFileType: String?
    public let lastKnownFileType: String?
    public let includeInIndex: Int
    public let path: String
    public let sourceTree: String
}
