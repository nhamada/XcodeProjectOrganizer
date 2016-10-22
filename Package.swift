import PackageDescription

let package = Package(
    name: "XcodeProjectOrganizer",
    targets: [
        Target(name: "XPO", dependencies: ["XcodeProject", "ProjectImporter", "ProjectExporter"]),
        Target(name: "ProjectImporter", dependencies: ["XcodeProject"]),
    ],
    exclude: ["Resources"]
)
