public struct tool {
    public init() {
        
    }
    public func tool() {
        print("hello world")
    }
}

public struct FileInfo {
    let path : String
}

public struct swiftTool {
    
    let projectPath : String
    let excludedPaths : [String]
    let resourceExtensions : [String]
    let fileExtensions : [String]
    
    public init(projectPath:String, excludedPaths:[String], resourceExtensions:[String], fileExtensions:[String]) {
        
        self.projectPath = projectPath
        self.excludedPaths = excludedPaths
        self.resourceExtensions = resourceExtensions
        self.fileExtensions = fileExtensions
    }
    
    public func unusedResource() -> [FileInfo] {
        fatalError()
    }
    
    func stringsInUse() -> [String] {
        fatalError()
    }
    
    func resourceInUse() -> [String:String] {
        fatalError()
    }
    
    
}
