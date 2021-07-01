// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeregisterWorkspaceDirectoryInput: Equatable {
    /// <p>The identifier of the directory. If any WorkSpaces are registered to this directory, you must
    ///          remove them before you deregister the directory, or you will receive an OperationNotSupportedException
    ///          error.</p>
    public let directoryId: String?

    public init (
        directoryId: String? = nil
    )
    {
        self.directoryId = directoryId
    }
}

extension DeregisterWorkspaceDirectoryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeregisterWorkspaceDirectoryInput(directoryId: \(String(describing: directoryId)))"}
}