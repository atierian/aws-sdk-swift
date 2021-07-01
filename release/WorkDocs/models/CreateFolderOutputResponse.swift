// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateFolderOutputResponse: Equatable {
    /// <p>The metadata of the folder.</p>
    public let metadata: FolderMetadata?

    public init (
        metadata: FolderMetadata? = nil
    )
    {
        self.metadata = metadata
    }
}

extension CreateFolderOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFolderOutputResponse(metadata: \(String(describing: metadata)))"}
}