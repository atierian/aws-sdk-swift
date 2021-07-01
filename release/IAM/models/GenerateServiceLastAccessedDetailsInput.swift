// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GenerateServiceLastAccessedDetailsInput: Equatable {
    /// <p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate
    ///             information about when the resource was last used in an attempt to access an AWS
    ///             service.</p>
    public let arn: String?
    /// <p>The level of detail that you want to generate. You can specify whether you want to
    ///             generate information about the last attempt to access services or actions. If you
    ///             specify service-level granularity, this operation generates only service data. If you
    ///             specify action-level granularity, it generates service and action data. If you don't
    ///             include this optional parameter, the operation generates service data.</p>
    public let granularity: AccessAdvisorUsageGranularityType?

    public init (
        arn: String? = nil,
        granularity: AccessAdvisorUsageGranularityType? = nil
    )
    {
        self.arn = arn
        self.granularity = granularity
    }
}

extension GenerateServiceLastAccessedDetailsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GenerateServiceLastAccessedDetailsInput(arn: \(String(describing: arn)), granularity: \(String(describing: granularity)))"}
}