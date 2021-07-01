// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>User accounts whose documents should be indexed.</p>
public struct OneDriveUsers: Equatable {
    /// <p>A list of users whose documents should be indexed. Specify the
    ///             user names in email format, for example,
    ///                 <code>username@tenantdomain</code>. If you need to index the
    ///             documents of more than 100 users, use the
    ///                 <code>OneDriveUserS3Path</code> field to specify the location of
    ///             a file containing a list of users.</p>
    public let oneDriveUserList: [String]?
    /// <p>The S3 bucket location of a file containing a list of users whose
    ///             documents should be indexed.</p>
    public let oneDriveUserS3Path: S3Path?

    public init (
        oneDriveUserList: [String]? = nil,
        oneDriveUserS3Path: S3Path? = nil
    )
    {
        self.oneDriveUserList = oneDriveUserList
        self.oneDriveUserS3Path = oneDriveUserS3Path
    }
}

extension OneDriveUsers: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OneDriveUsers(oneDriveUserList: \(String(describing: oneDriveUserList)), oneDriveUserS3Path: \(String(describing: oneDriveUserS3Path)))"}
}