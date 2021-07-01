// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateFileSystemAssociationOutputResponse: Equatable {
    /// <p>The ARN of the updated file system association.</p>
    public let fileSystemAssociationARN: String?

    public init (
        fileSystemAssociationARN: String? = nil
    )
    {
        self.fileSystemAssociationARN = fileSystemAssociationARN
    }
}

extension UpdateFileSystemAssociationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateFileSystemAssociationOutputResponse(fileSystemAssociationARN: \(String(describing: fileSystemAssociationARN)))"}
}