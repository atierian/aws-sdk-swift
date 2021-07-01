// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The structure representing the SubmitFeedbackRequest.</p>
public struct SubmitFeedbackInput: Equatable {
    /// <p>The universally unique identifier (UUID) of the
    ///             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html">
    ///                <code>AnomalyInstance</code>
    ///             </a> object
    ///             that is included in the analysis data.</p>
    public let anomalyInstanceId: String?
    /// <p>Optional feedback about this anomaly.</p>
    public let comment: String?
    /// <p>The name of the profiling group that is associated with the analysis data.</p>
    public let profilingGroupName: String?
    /// <p>
    ///             The feedback tpye. Thee are two valid values, <code>Positive</code> and <code>Negative</code>.
    ///         </p>
    public let type: FeedbackType?

    public init (
        anomalyInstanceId: String? = nil,
        comment: String? = nil,
        profilingGroupName: String? = nil,
        type: FeedbackType? = nil
    )
    {
        self.anomalyInstanceId = anomalyInstanceId
        self.comment = comment
        self.profilingGroupName = profilingGroupName
        self.type = type
    }
}

extension SubmitFeedbackInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SubmitFeedbackInput(anomalyInstanceId: \(String(describing: anomalyInstanceId)), comment: \(String(describing: comment)), profilingGroupName: \(String(describing: profilingGroupName)), type: \(String(describing: type)))"}
}