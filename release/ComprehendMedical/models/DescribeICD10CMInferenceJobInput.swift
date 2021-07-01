// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeICD10CMInferenceJobInput: Equatable {
    /// <p>The identifier that Amazon Comprehend Medical generated for the job. <code>The
    ///         StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>
    public let jobId: String?

    public init (
        jobId: String? = nil
    )
    {
        self.jobId = jobId
    }
}

extension DescribeICD10CMInferenceJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeICD10CMInferenceJobInput(jobId: \(String(describing: jobId)))"}
}