// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The <code>ReadJobResponse</code> structure.</p>
public struct ReadJobOutputResponse: Equatable {
    /// <p>A section of the response body that provides information about the job.</p>
    public let job: Job?

    public init (
        job: Job? = nil
    )
    {
        self.job = job
    }
}

extension ReadJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReadJobOutputResponse(job: \(String(describing: job)))"}
}