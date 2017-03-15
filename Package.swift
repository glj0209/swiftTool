import PackageDescription

let package = Package(
    name: "swiftTool",
    targets:[
        Target(name:"swiftToolKit", dependencies:[]),
        Target(name:"swiftTool", dependencies:["swiftToolKit"])
    ],
    dependencies:[
        .Package(url:"https://github.com/jatoben/CommandLine", "3.0.0-pre1"),
        .Package(url: "https://github.com/onevcat/Rainbow", majorVersion: 2)
    ]
)
