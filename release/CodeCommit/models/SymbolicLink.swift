// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Returns information about a symbolic link in a repository folder.</p>
public struct SymbolicLink: Equatable {
    /// <p>The fully qualified path to the folder that contains the symbolic link.</p>
    public let absolutePath: String?
    /// <p>The blob ID that contains the information about the symbolic link.</p>
    public let blobId: String?
    /// <p>The file mode permissions of the blob that cotains information about the symbolic link.</p>
    public let fileMode: FileModeTypeEnum?
    /// <p>The relative path of the symbolic link from the folder where the query originated.</p>
    public let relativePath: String?

    public init (
        absolutePath: String? = nil,
        blobId: String? = nil,
        fileMode: FileModeTypeEnum? = nil,
        relativePath: String? = nil
    )
    {
        self.absolutePath = absolutePath
        self.blobId = blobId
        self.fileMode = fileMode
        self.relativePath = relativePath
    }
}

extension SymbolicLink: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SymbolicLink(absolutePath: \(String(describing: absolutePath)), blobId: \(String(describing: blobId)), fileMode: \(String(describing: fileMode)), relativePath: \(String(describing: relativePath)))"}
}