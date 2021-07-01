// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSamplingTargetsInput: Equatable {
    /// <p>Information about rules that the service is using to sample requests.</p>
    public let samplingStatisticsDocuments: [SamplingStatisticsDocument]?

    public init (
        samplingStatisticsDocuments: [SamplingStatisticsDocument]? = nil
    )
    {
        self.samplingStatisticsDocuments = samplingStatisticsDocuments
    }
}

extension GetSamplingTargetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSamplingTargetsInput(samplingStatisticsDocuments: \(String(describing: samplingStatisticsDocuments)))"}
}