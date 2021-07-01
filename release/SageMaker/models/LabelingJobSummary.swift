// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides summary information about a labeling job.</p>
public struct LabelingJobSummary: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the Lambda function used to consolidate the
    ///             annotations from individual workers into a label for a data object. For more
    ///             information, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html">Annotation
    ///                 Consolidation</a>.</p>
    public let annotationConsolidationLambdaArn: String?
    /// <p>The date and time that the job was created (timestamp).</p>
    public let creationTime: Date?
    /// <p>If the <code>LabelingJobStatus</code> field is <code>Failed</code>, this field
    ///             contains a description of the error.</p>
    public let failureReason: String?
    /// <p>Input configuration for the labeling job.</p>
    public let inputConfig: LabelingJobInputConfig?
    /// <p>Counts showing the progress of the labeling job.</p>
    public let labelCounters: LabelCounters?
    /// <p>The Amazon Resource Name (ARN) assigned to the labeling job when it was
    ///             created.</p>
    public let labelingJobArn: String?
    /// <p>The name of the labeling job.</p>
    public let labelingJobName: String?
    /// <p>The location of the output produced by the labeling job.</p>
    public let labelingJobOutput: LabelingJobOutput?
    /// <p>The current status of the labeling job. </p>
    public let labelingJobStatus: LabelingJobStatus?
    /// <p>The date and time that the job was last modified (timestamp).</p>
    public let lastModifiedTime: Date?
    /// <p>The Amazon Resource Name (ARN) of a Lambda function. The function is run before each
    ///             data object is sent to a worker.</p>
    public let preHumanTaskLambdaArn: String?
    /// <p>The Amazon Resource Name (ARN) of the work team assigned to the job.</p>
    public let workteamArn: String?

    public init (
        annotationConsolidationLambdaArn: String? = nil,
        creationTime: Date? = nil,
        failureReason: String? = nil,
        inputConfig: LabelingJobInputConfig? = nil,
        labelCounters: LabelCounters? = nil,
        labelingJobArn: String? = nil,
        labelingJobName: String? = nil,
        labelingJobOutput: LabelingJobOutput? = nil,
        labelingJobStatus: LabelingJobStatus? = nil,
        lastModifiedTime: Date? = nil,
        preHumanTaskLambdaArn: String? = nil,
        workteamArn: String? = nil
    )
    {
        self.annotationConsolidationLambdaArn = annotationConsolidationLambdaArn
        self.creationTime = creationTime
        self.failureReason = failureReason
        self.inputConfig = inputConfig
        self.labelCounters = labelCounters
        self.labelingJobArn = labelingJobArn
        self.labelingJobName = labelingJobName
        self.labelingJobOutput = labelingJobOutput
        self.labelingJobStatus = labelingJobStatus
        self.lastModifiedTime = lastModifiedTime
        self.preHumanTaskLambdaArn = preHumanTaskLambdaArn
        self.workteamArn = workteamArn
    }
}

extension LabelingJobSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LabelingJobSummary(annotationConsolidationLambdaArn: \(String(describing: annotationConsolidationLambdaArn)), creationTime: \(String(describing: creationTime)), failureReason: \(String(describing: failureReason)), inputConfig: \(String(describing: inputConfig)), labelCounters: \(String(describing: labelCounters)), labelingJobArn: \(String(describing: labelingJobArn)), labelingJobName: \(String(describing: labelingJobName)), labelingJobOutput: \(String(describing: labelingJobOutput)), labelingJobStatus: \(String(describing: labelingJobStatus)), lastModifiedTime: \(String(describing: lastModifiedTime)), preHumanTaskLambdaArn: \(String(describing: preHumanTaskLambdaArn)), workteamArn: \(String(describing: workteamArn)))"}
}