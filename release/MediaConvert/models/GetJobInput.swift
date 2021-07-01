// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetJobInput: Equatable {
    /// the job ID of the job.
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetJobInput(id: \(String(describing: id)))"}
}