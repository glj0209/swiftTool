import Foundation
import CommandLineKit
import Rainbow

let cli = CommandLineKit.CommandLine()

let projectOption = StringOption(shortFlag: "p",
                            longFlag: "project",
                            helpMessage: "Path to the project.")

let excludedPathsOption = MultiStringOption(shortFlag: "e",
                                     longFlag: "excluded-extensions",
                                     helpMessage: "exclused paths.")


let resourceExtensionsOption = MultiStringOption(shortFlag: "r",
                          longFlag: "resource-extensions",
                          helpMessage: "extensions to search.")

let fileExtensionsOption = MultiStringOption(shortFlag: "f",
                                 longFlag: "file-extensions",
                                 helpMessage: "file extensions to search this.")

let help = BoolOption(shortFlag: "h",
                      longFlag: "help",
                      helpMessage: "Prints a help message.")


cli.addOptions(projectOption, resourceExtensionsOption, fileExtensionsOption, help)

cli.formatOutput = { s, type in
    var str: String
    switch(type) {
    case .error:
        str = s.red.bold
    case .optionFlag:
        str = s.green.underline
    case .optionHelp:
        str = s.blue
    default:
        str = s
    }
    return cli.defaultFormat(s: str, type: type)
}

do {
    try cli.parse()
} catch {
    cli.printUsage(error)
    exit(EX_USAGE)
}

if help.value {
    cli.printUsage()
    exit(EX_OK)
}

let project = projectOption.value ?? "."
let resourceExtensions = resourceExtensionsOption.value ?? ["png", "jpg", "imageset"]
let fileExtensions = fileExtensionsOption.value ?? ["swift", "m", "mm", "xib", "storyboard"]
let excludedExtensions = excludedPathsOption.value ?? []



























