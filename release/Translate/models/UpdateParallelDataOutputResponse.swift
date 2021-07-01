// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateParallelDataOutputResponse: Equatable {
    /// <p>The time that the most recent update was attempted.</p>
    public let latestUpdateAttemptAt: Date?
    /// <p>The status of the parallel data update attempt. When the updated parallel data resource is
    ///       ready for you to use, the status is <code>ACTIVE</code>.</p>
    public let latestUpdateAttemptStatus: ParallelDataStatus?
    /// <p>The name of the parallel data resource being updated.</p>
    public let name: String?
    /// <p>The status of the parallel data resource that you are attempting to update. Your update
    ///       request is accepted only if this status is either <code>ACTIVE</code> or
    ///       <code>FAILED</code>.</p>
    public let status: ParallelDataStatus?

    public init (
        latestUpdateAttemptAt: Date? = nil,
        latestUpdateAttemptStatus: ParallelDataStatus? = nil,
        name: String? = nil,
        status: ParallelDataStatus? = nil
    )
    {
        self.latestUpdateAttemptAt = latestUpdateAttemptAt
        self.latestUpdateAttemptStatus = latestUpdateAttemptStatus
        self.name = name
        self.status = status
    }
}

extension UpdateParallelDataOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateParallelDataOutputResponse(latestUpdateAttemptAt: \(String(describing: latestUpdateAttemptAt)), latestUpdateAttemptStatus: \(String(describing: latestUpdateAttemptStatus)), name: \(String(describing: name)), status: \(String(describing: status)))"}
}