// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAccessPointInput: Equatable {
    /// <p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent
    ///       creation.</p>
    public var clientToken: String?
    /// <p>The ID of the EFS file system that the access point provides access to.</p>
    public let fileSystemId: String?
    /// <p>The operating system user and
    ///       group applied to all file system requests made using the access point.</p>
    public let posixUser: PosixUser?
    /// <p>Specifies the directory on the Amazon EFS file system that the access point exposes as
    ///       the root directory of your file system to NFS clients using the access point.
    ///       The clients using the access point can only access the root directory and below.
    ///       If the <code>RootDirectory</code> > <code>Path</code> specified does not exist,
    ///       EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an access point.
    ///       When specifying a <code>RootDirectory</code>, you need to provide the <code>Path</code>, and the <code>CreationInfo</code>.</p>
    ///          <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory.
    ///       If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount
    ///       using the access point will fail.</p>
    public let rootDirectory: RootDirectory?
    /// <p>Creates tags associated with the access point. Each tag is a key-value pair.</p>
    public let tags: [Tag]?

    public init (
        clientToken: String? = nil,
        fileSystemId: String? = nil,
        posixUser: PosixUser? = nil,
        rootDirectory: RootDirectory? = nil,
        tags: [Tag]? = nil
    )
    {
        self.clientToken = clientToken
        self.fileSystemId = fileSystemId
        self.posixUser = posixUser
        self.rootDirectory = rootDirectory
        self.tags = tags
    }
}

extension CreateAccessPointInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccessPointInput(clientToken: \(String(describing: clientToken)), fileSystemId: \(String(describing: fileSystemId)), posixUser: \(String(describing: posixUser)), rootDirectory: \(String(describing: rootDirectory)), tags: \(String(describing: tags)))"}
}