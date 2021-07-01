// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A collection of settings used for an AutoML job.</p>
public struct AutoMLJobConfig: Equatable {
    /// <p>How long an AutoML job is allowed to run, or how many candidates a job is allowed to
    ///          generate.</p>
    public let completionCriteria: AutoMLJobCompletionCriteria?
    /// <p>The security configuration for traffic encryption or Amazon VPC settings.</p>
    public let securityConfig: AutoMLSecurityConfig?

    public init (
        completionCriteria: AutoMLJobCompletionCriteria? = nil,
        securityConfig: AutoMLSecurityConfig? = nil
    )
    {
        self.completionCriteria = completionCriteria
        self.securityConfig = securityConfig
    }
}

extension AutoMLJobConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AutoMLJobConfig(completionCriteria: \(String(describing: completionCriteria)), securityConfig: \(String(describing: securityConfig)))"}
}