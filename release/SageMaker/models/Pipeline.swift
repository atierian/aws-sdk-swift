// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A SageMaker Model Building Pipeline instance.</p>
public struct Pipeline: Equatable {
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let createdBy: UserContext?
    /// <p>The creation time of the pipeline.</p>
    public let creationTime: Date?
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let lastModifiedBy: UserContext?
    /// <p>The time that the pipeline was last modified.</p>
    public let lastModifiedTime: Date?
    /// <p>The time when the pipeline was last run.</p>
    public let lastRunTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    public let pipelineArn: String?
    /// <p>The description of the pipeline.</p>
    public let pipelineDescription: String?
    /// <p>The display name of the pipeline.</p>
    public let pipelineDisplayName: String?
    /// <p>The name of the pipeline.</p>
    public let pipelineName: String?
    /// <p>The status of the pipeline.</p>
    public let pipelineStatus: PipelineStatus?
    /// <p>The Amazon Resource Name (ARN) of the role that created the pipeline.</p>
    public let roleArn: String?
    /// <p>A list of tags that apply to the pipeline.</p>
    public let tags: [Tag]?

    public init (
        createdBy: UserContext? = nil,
        creationTime: Date? = nil,
        lastModifiedBy: UserContext? = nil,
        lastModifiedTime: Date? = nil,
        lastRunTime: Date? = nil,
        pipelineArn: String? = nil,
        pipelineDescription: String? = nil,
        pipelineDisplayName: String? = nil,
        pipelineName: String? = nil,
        pipelineStatus: PipelineStatus? = nil,
        roleArn: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.createdBy = createdBy
        self.creationTime = creationTime
        self.lastModifiedBy = lastModifiedBy
        self.lastModifiedTime = lastModifiedTime
        self.lastRunTime = lastRunTime
        self.pipelineArn = pipelineArn
        self.pipelineDescription = pipelineDescription
        self.pipelineDisplayName = pipelineDisplayName
        self.pipelineName = pipelineName
        self.pipelineStatus = pipelineStatus
        self.roleArn = roleArn
        self.tags = tags
    }
}

extension Pipeline: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Pipeline(createdBy: \(String(describing: createdBy)), creationTime: \(String(describing: creationTime)), lastModifiedBy: \(String(describing: lastModifiedBy)), lastModifiedTime: \(String(describing: lastModifiedTime)), lastRunTime: \(String(describing: lastRunTime)), pipelineArn: \(String(describing: pipelineArn)), pipelineDescription: \(String(describing: pipelineDescription)), pipelineDisplayName: \(String(describing: pipelineDisplayName)), pipelineName: \(String(describing: pipelineName)), pipelineStatus: \(String(describing: pipelineStatus)), roleArn: \(String(describing: roleArn)), tags: \(String(describing: tags)))"}
}