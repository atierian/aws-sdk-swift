// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A dataset group is a collection of related datasets (Interactions, User, and Item). You
///       create a dataset group by calling <a>CreateDatasetGroup</a>. You then create a
///       dataset and add it to a dataset group by calling <a>CreateDataset</a>. The dataset
///       group is used to create and train a solution by calling <a>CreateSolution</a>. A
///       dataset group can contain only one of each type of dataset.</p>
///          <p>You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group.</p>
public struct DatasetGroup: Equatable {
    /// <p>The creation date and time (in Unix time) of the dataset group.</p>
    public let creationDateTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    public let datasetGroupArn: String?
    /// <p>If creating a dataset group fails, provides the reason why.</p>
    public let failureReason: String?
    /// <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the datasets.</p>
    public let kmsKeyArn: String?
    /// <p>The last update date and time (in Unix time) of the dataset group.</p>
    public let lastUpdatedDateTime: Date?
    /// <p>The name of the dataset group.</p>
    public let name: String?
    /// <p>The ARN of the IAM role that has permissions to create the dataset group.</p>
    public let roleArn: String?
    /// <p>The current status of the dataset group.</p>
    ///          <p>A dataset group can be in one of the following states:</p>
    ///          <ul>
    ///             <li>
    ///                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    ///             </li>
    ///             <li>
    ///                <p>DELETE PENDING</p>
    ///             </li>
    ///          </ul>
    public let status: String?

    public init (
        creationDateTime: Date? = nil,
        datasetGroupArn: String? = nil,
        failureReason: String? = nil,
        kmsKeyArn: String? = nil,
        lastUpdatedDateTime: Date? = nil,
        name: String? = nil,
        roleArn: String? = nil,
        status: String? = nil
    )
    {
        self.creationDateTime = creationDateTime
        self.datasetGroupArn = datasetGroupArn
        self.failureReason = failureReason
        self.kmsKeyArn = kmsKeyArn
        self.lastUpdatedDateTime = lastUpdatedDateTime
        self.name = name
        self.roleArn = roleArn
        self.status = status
    }
}

extension DatasetGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DatasetGroup(creationDateTime: \(String(describing: creationDateTime)), datasetGroupArn: \(String(describing: datasetGroupArn)), failureReason: \(String(describing: failureReason)), kmsKeyArn: \(String(describing: kmsKeyArn)), lastUpdatedDateTime: \(String(describing: lastUpdatedDateTime)), name: \(String(describing: name)), roleArn: \(String(describing: roleArn)), status: \(String(describing: status)))"}
}