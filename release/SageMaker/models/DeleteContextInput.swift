// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteContextInput: Equatable {
    /// <p>The name of the context to delete.</p>
    public let contextName: String?

    public init (
        contextName: String? = nil
    )
    {
        self.contextName = contextName
    }
}

extension DeleteContextInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteContextInput(contextName: \(String(describing: contextName)))"}
}