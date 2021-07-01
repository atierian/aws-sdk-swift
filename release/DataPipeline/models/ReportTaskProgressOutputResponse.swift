// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of ReportTaskProgress.</p>
public struct ReportTaskProgressOutputResponse: Equatable {
    /// <p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>
    public let canceled: Bool

    public init (
        canceled: Bool = false
    )
    {
        self.canceled = canceled
    }
}

extension ReportTaskProgressOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReportTaskProgressOutputResponse(canceled: \(String(describing: canceled)))"}
}