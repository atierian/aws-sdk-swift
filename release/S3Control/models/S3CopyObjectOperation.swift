// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains the configuration parameters for a PUT Copy object operation. S3 Batch Operations passes every object to the underlying PUT Copy object
///          API. For more information about the parameters for this operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html">PUT Object - Copy</a>.</p>
public struct S3CopyObjectOperation: Equatable {
    /// <p></p>
    public let accessControlGrants: [S3Grant]?
    /// <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    ///          server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    ///          causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    ///          <p>Specifying this header with an <i>object</i> action doesn’t affect
    ///          <i>bucket-level</i> settings for S3 Bucket Key.</p>
    public let bucketKeyEnabled: Bool
    /// <p></p>
    public let cannedAccessControlList: S3CannedAccessControlList?
    /// <p></p>
    public let metadataDirective: S3MetadataDirective?
    /// <p></p>
    public let modifiedSinceConstraint: Date?
    /// <p></p>
    public let newObjectMetadata: S3ObjectMetadata?
    /// <p></p>
    public let newObjectTagging: [S3Tag]?
    /// <p>The legal hold status to be applied to all objects in the Batch Operations job.</p>
    public let objectLockLegalHoldStatus: S3ObjectLockLegalHoldStatus?
    /// <p>The retention mode to be applied to all objects in the Batch Operations job.</p>
    public let objectLockMode: S3ObjectLockMode?
    /// <p>The date when the applied object retention configuration expires on all objects in
    ///          the Batch Operations job.</p>
    public let objectLockRetainUntilDate: Date?
    /// <p>Specifies an optional metadata property for website redirects,
    ///             <code>x-amz-website-redirect-location</code>. Allows webpage redirects if the object is
    ///          accessed through a website endpoint.</p>
    public let redirectLocation: String?
    /// <p></p>
    public let requesterPays: Bool
    /// <p></p>
    public let sSEAwsKmsKeyId: String?
    /// <p></p>
    public let storageClass: S3StorageClass?
    /// <p>Specifies the folder prefix into which you would like the objects to be copied. For
    ///          example, to copy objects into a folder named "Folder1" in the destination bucket, set the
    ///          TargetKeyPrefix to "Folder1/".</p>
    public let targetKeyPrefix: String?
    /// <p>Specifies the destination bucket ARN for the batch copy operation.
    ///          For example, to copy objects to a bucket named "destinationBucket",
    ///          set the TargetResource to "arn:aws:s3:::destinationBucket".</p>
    public let targetResource: String?
    /// <p></p>
    public let unModifiedSinceConstraint: Date?

    public init (
        accessControlGrants: [S3Grant]? = nil,
        bucketKeyEnabled: Bool = false,
        cannedAccessControlList: S3CannedAccessControlList? = nil,
        metadataDirective: S3MetadataDirective? = nil,
        modifiedSinceConstraint: Date? = nil,
        newObjectMetadata: S3ObjectMetadata? = nil,
        newObjectTagging: [S3Tag]? = nil,
        objectLockLegalHoldStatus: S3ObjectLockLegalHoldStatus? = nil,
        objectLockMode: S3ObjectLockMode? = nil,
        objectLockRetainUntilDate: Date? = nil,
        redirectLocation: String? = nil,
        requesterPays: Bool = false,
        sSEAwsKmsKeyId: String? = nil,
        storageClass: S3StorageClass? = nil,
        targetKeyPrefix: String? = nil,
        targetResource: String? = nil,
        unModifiedSinceConstraint: Date? = nil
    )
    {
        self.accessControlGrants = accessControlGrants
        self.bucketKeyEnabled = bucketKeyEnabled
        self.cannedAccessControlList = cannedAccessControlList
        self.metadataDirective = metadataDirective
        self.modifiedSinceConstraint = modifiedSinceConstraint
        self.newObjectMetadata = newObjectMetadata
        self.newObjectTagging = newObjectTagging
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.redirectLocation = redirectLocation
        self.requesterPays = requesterPays
        self.sSEAwsKmsKeyId = sSEAwsKmsKeyId
        self.storageClass = storageClass
        self.targetKeyPrefix = targetKeyPrefix
        self.targetResource = targetResource
        self.unModifiedSinceConstraint = unModifiedSinceConstraint
    }
}

extension S3CopyObjectOperation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3CopyObjectOperation(accessControlGrants: \(String(describing: accessControlGrants)), bucketKeyEnabled: \(String(describing: bucketKeyEnabled)), cannedAccessControlList: \(String(describing: cannedAccessControlList)), metadataDirective: \(String(describing: metadataDirective)), modifiedSinceConstraint: \(String(describing: modifiedSinceConstraint)), newObjectMetadata: \(String(describing: newObjectMetadata)), newObjectTagging: \(String(describing: newObjectTagging)), objectLockLegalHoldStatus: \(String(describing: objectLockLegalHoldStatus)), objectLockMode: \(String(describing: objectLockMode)), objectLockRetainUntilDate: \(String(describing: objectLockRetainUntilDate)), redirectLocation: \(String(describing: redirectLocation)), requesterPays: \(String(describing: requesterPays)), sSEAwsKmsKeyId: \(String(describing: sSEAwsKmsKeyId)), storageClass: \(String(describing: storageClass)), targetKeyPrefix: \(String(describing: targetKeyPrefix)), targetResource: \(String(describing: targetResource)), unModifiedSinceConstraint: \(String(describing: unModifiedSinceConstraint)))"}
}