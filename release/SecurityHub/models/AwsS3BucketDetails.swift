// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The details of an Amazon S3 bucket.</p>
public struct AwsS3BucketDetails: Equatable {
    /// <p>Indicates when the S3 bucket was created.</p>
    ///          <p>Uses the <code>date-time</code> format specified in <a href="https://tools.ietf.org/html/rfc3339#section-5.6">RFC 3339 section 5.6, Internet
    ///             Date/Time Format</a>. The value cannot contain spaces. For example,
    ///             <code>2020-03-22T13:22:13.933Z</code>.</p>
    public let createdAt: String?
    /// <p>The canonical user ID of the owner of the S3 bucket.</p>
    public let ownerId: String?
    /// <p>The display name of the owner of the S3 bucket.</p>
    public let ownerName: String?
    /// <p>Provides information about the Amazon S3 Public Access Block configuration for the S3 bucket.</p>
    public let publicAccessBlockConfiguration: AwsS3AccountPublicAccessBlockDetails?
    /// <p>The encryption rules that are applied to the S3 bucket.</p>
    public let serverSideEncryptionConfiguration: AwsS3BucketServerSideEncryptionConfiguration?

    public init (
        createdAt: String? = nil,
        ownerId: String? = nil,
        ownerName: String? = nil,
        publicAccessBlockConfiguration: AwsS3AccountPublicAccessBlockDetails? = nil,
        serverSideEncryptionConfiguration: AwsS3BucketServerSideEncryptionConfiguration? = nil
    )
    {
        self.createdAt = createdAt
        self.ownerId = ownerId
        self.ownerName = ownerName
        self.publicAccessBlockConfiguration = publicAccessBlockConfiguration
        self.serverSideEncryptionConfiguration = serverSideEncryptionConfiguration
    }
}

extension AwsS3BucketDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsS3BucketDetails(createdAt: \(String(describing: createdAt)), ownerId: \(String(describing: ownerId)), ownerName: \(String(describing: ownerName)), publicAccessBlockConfiguration: \(String(describing: publicAccessBlockConfiguration)), serverSideEncryptionConfiguration: \(String(describing: serverSideEncryptionConfiguration)))"}
}