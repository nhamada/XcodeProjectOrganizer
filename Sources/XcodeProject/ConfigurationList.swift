//
//  ConfigurationList.swift
//  XcodeProjectOrganizer
//
//  Created by Naohiro Hamada on 2016/10/03.
//
//

struct ConfigurationList {
    public var section: Section {
        return .configurationList
    }
    
    public let identifier: String
    public let buildConfigurations: [String]
    public let defaultConfigurationIsVisible: Int
    public let defaultConfigurationName: String?
}
