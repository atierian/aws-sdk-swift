// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetJobUnlockCodeInput: Equatable {
    /// <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for
    ///       example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    public let jobId: String?

    public init (
        jobId: String? = nil
    )
    {
        self.jobId = jobId
    }
}

extension GetJobUnlockCodeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetJobUnlockCodeInput(jobId: \(String(describing: jobId)))"}
}