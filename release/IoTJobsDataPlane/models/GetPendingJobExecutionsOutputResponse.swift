// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPendingJobExecutionsOutputResponse: Equatable {
    /// <p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>
    public let inProgressJobs: [JobExecutionSummary]?
    /// <p>A list of JobExecutionSummary objects with status QUEUED.</p>
    public let queuedJobs: [JobExecutionSummary]?

    public init (
        inProgressJobs: [JobExecutionSummary]? = nil,
        queuedJobs: [JobExecutionSummary]? = nil
    )
    {
        self.inProgressJobs = inProgressJobs
        self.queuedJobs = queuedJobs
    }
}

extension GetPendingJobExecutionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPendingJobExecutionsOutputResponse(inProgressJobs: \(String(describing: inProgressJobs)), queuedJobs: \(String(describing: queuedJobs)))"}
}