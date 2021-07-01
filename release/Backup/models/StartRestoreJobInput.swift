// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartRestoreJobInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses to create the target
    ///          recovery point; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    public let iamRoleArn: String?
    /// <p>A customer chosen string that can be used to distinguish between calls to
    ///             <code>StartRestoreJob</code>.</p>
    public let idempotencyToken: String?
    /// <p>A set of metadata key-value pairs. Contains information, such as a resource name,
    ///          required to restore a recovery point.</p>
    ///          <p> You can get configuration metadata about a resource at the time it was backed up by
    ///          calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
    ///          provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
    ///          resource. For example, you might need to provide a new resource name if the original
    ///          already exists.</p>
    ///          <p>You need to specify specific metadata to restore an Amazon Elastic File System (Amazon
    ///          EFS) instance:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>file-system-id</code>: The ID of the Amazon EFS file system that is backed
    ///                up by AWS Backup. Returned in <code>GetRecoveryPointRestoreMetadata</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Encrypted</code>: A Boolean value that, if true, specifies that the file
    ///                system is encrypted. If <code>KmsKeyId</code> is specified, <code>Encrypted</code>
    ///                must be set to <code>true</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>KmsKeyId</code>: Specifies the AWS KMS key that is used to encrypt the
    ///                restored file system. You can specify a key from another AWS account provided that
    ///                key it is properly shared with your account via AWS KMS.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>PerformanceMode</code>: Specifies the throughput mode of the file
    ///                system.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>CreationToken</code>: A user-supplied value that ensures the uniqueness
    ///                (idempotency) of the request.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>newFileSystem</code>: A Boolean value that, if true, specifies that the
    ///                recovery point is restored to a new Amazon EFS file system.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ItemsToRestore </code>: An array of one to five strings where each string is
    ///                a file path. Use <code>ItemsToRestore</code> to restore specific files or directories
    ///                rather than the entire file system. This parameter is optional. For example,
    ///                   <code>"itemsToRestore":"[\"/my.test\"]"</code>.</p>
    ///             </li>
    ///          </ul>
    public let metadata: [String:String]?
    /// <p>An ARN that uniquely identifies a recovery point; for example,
    ///             <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    public let recoveryPointArn: String?
    /// <p>Starts a job to restore a recovery point for one of the following resources:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>DynamoDB</code> for Amazon DynamoDB</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>EBS</code> for Amazon Elastic Block Store</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>EFS</code> for Amazon Elastic File System</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>RDS</code> for Amazon Relational Database Service</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Aurora</code> for Amazon Aurora</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Storage Gateway</code> for AWS Storage Gateway</p>
    ///             </li>
    ///          </ul>
    public let resourceType: String?

    public init (
        iamRoleArn: String? = nil,
        idempotencyToken: String? = nil,
        metadata: [String:String]? = nil,
        recoveryPointArn: String? = nil,
        resourceType: String? = nil
    )
    {
        self.iamRoleArn = iamRoleArn
        self.idempotencyToken = idempotencyToken
        self.metadata = metadata
        self.recoveryPointArn = recoveryPointArn
        self.resourceType = resourceType
    }
}

extension StartRestoreJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartRestoreJobInput(iamRoleArn: \(String(describing: iamRoleArn)), idempotencyToken: \(String(describing: idempotencyToken)), metadata: \(String(describing: metadata)), recoveryPointArn: \(String(describing: recoveryPointArn)), resourceType: \(String(describing: resourceType)))"}
}