// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains data about the state of a job execution.</p>
public struct JobExecutionState: Equatable {
    /// <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    ///          "REJECTED", or "REMOVED".</p>
    public let status: JobExecutionStatus?
    /// <p>A collection of name/value pairs that describe the status of the job execution.</p>
    public let statusDetails: [String:String]?
    /// <p>The version of the job execution. Job execution versions are incremented each time they are updated by a
    ///          device.</p>
    public let versionNumber: Int

    public init (
        status: JobExecutionStatus? = nil,
        statusDetails: [String:String]? = nil,
        versionNumber: Int = 0
    )
    {
        self.status = status
        self.statusDetails = statusDetails
        self.versionNumber = versionNumber
    }
}

extension JobExecutionState: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobExecutionState(status: \(String(describing: status)), statusDetails: \(String(describing: statusDetails)), versionNumber: \(String(describing: versionNumber)))"}
}