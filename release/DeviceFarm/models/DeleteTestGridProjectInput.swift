// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteTestGridProjectInput: Equatable {
    /// <p>The ARN of the project to delete, from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>
    public let projectArn: String?

    public init (
        projectArn: String? = nil
    )
    {
        self.projectArn = projectArn
    }
}

extension DeleteTestGridProjectInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTestGridProjectInput(projectArn: \(String(describing: projectArn)))"}
}