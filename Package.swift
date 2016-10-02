import PackageDescription

let package = Package(
    name: "XcodeProjectOrganizer",
    targets: [
        Target(name: "XPO", dependencies: ["Project", "ProjectImporter"])
    ]
)
