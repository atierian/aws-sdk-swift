// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetFolderInput: Equatable {
    /// <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    public let authenticationToken: String?
    /// <p>The ID of the folder.</p>
    public let folderId: String?
    /// <p>Set to TRUE to include custom metadata in the response.</p>
    public let includeCustomMetadata: Bool

    public init (
        authenticationToken: String? = nil,
        folderId: String? = nil,
        includeCustomMetadata: Bool = false
    )
    {
        self.authenticationToken = authenticationToken
        self.folderId = folderId
        self.includeCustomMetadata = includeCustomMetadata
    }
}

extension GetFolderInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetFolderInput(authenticationToken: \(String(describing: authenticationToken)), folderId: \(String(describing: folderId)), includeCustomMetadata: \(String(describing: includeCustomMetadata)))"}
}