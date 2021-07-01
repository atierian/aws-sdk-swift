// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A group of versioned models in the model registry.</p>
public struct ModelPackageGroup: Equatable {
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let createdBy: UserContext?
    /// <p>The time that the model group was created.</p>
    public let creationTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the model group.</p>
    public let modelPackageGroupArn: String?
    /// <p>The description for the model group.</p>
    public let modelPackageGroupDescription: String?
    /// <p>The name of the model group.</p>
    public let modelPackageGroupName: String?
    /// <p>The status of the model group. This can be one of the following values.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>PENDING</code> - The model group is pending being created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>IN_PROGRESS</code> - The model group is in the process of being
    ///                     created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>COMPLETED</code> - The model group was successfully created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>FAILED</code> - The model group failed.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>DELETING</code> - The model group is in the process of being deleted.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>DELETE_FAILED</code> - SageMaker failed to delete the model group.</p>
    ///             </li>
    ///          </ul>
    public let modelPackageGroupStatus: ModelPackageGroupStatus?
    /// <p>A list of the tags associated with the model group. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging AWS
    ///             resources</a> in the <i>AWS General Reference Guide</i>.</p>
    public let tags: [Tag]?

    public init (
        createdBy: UserContext? = nil,
        creationTime: Date? = nil,
        modelPackageGroupArn: String? = nil,
        modelPackageGroupDescription: String? = nil,
        modelPackageGroupName: String? = nil,
        modelPackageGroupStatus: ModelPackageGroupStatus? = nil,
        tags: [Tag]? = nil
    )
    {
        self.createdBy = createdBy
        self.creationTime = creationTime
        self.modelPackageGroupArn = modelPackageGroupArn
        self.modelPackageGroupDescription = modelPackageGroupDescription
        self.modelPackageGroupName = modelPackageGroupName
        self.modelPackageGroupStatus = modelPackageGroupStatus
        self.tags = tags
    }
}

extension ModelPackageGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelPackageGroup(createdBy: \(String(describing: createdBy)), creationTime: \(String(describing: creationTime)), modelPackageGroupArn: \(String(describing: modelPackageGroupArn)), modelPackageGroupDescription: \(String(describing: modelPackageGroupDescription)), modelPackageGroupName: \(String(describing: modelPackageGroupName)), modelPackageGroupStatus: \(String(describing: modelPackageGroupStatus)), tags: \(String(describing: tags)))"}
}