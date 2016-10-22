//
//  ContainerItemProxy.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/04.
//
//

public struct ContainerItemProxy {
    public var section: Section {
        return .containerItemProxy
    }
    
    public let identifier: String
    public let containerPortal: String
    public let proxyType: Int
    public let remoteGlobalIDString: String
    public let remoteInfo: String
}
