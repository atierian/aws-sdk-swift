// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>If this job failed, this element indicates why the job failed.</p>
public struct JobFailure: Equatable {
    /// <p>The failure code, if any, for the specified job.</p>
    public let failureCode: String?
    /// <p>The failure reason, if any, for the specified job.</p>
    public let failureReason: String?

    public init (
        failureCode: String? = nil,
        failureReason: String? = nil
    )
    {
        self.failureCode = failureCode
        self.failureReason = failureReason
    }
}

extension JobFailure: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobFailure(failureCode: \(String(describing: failureCode)), failureReason: \(String(describing: failureReason)))"}
}