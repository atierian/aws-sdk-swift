// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteInsightRulesOutputResponse: Equatable {
    /// <p>An array listing the rules that could not be deleted. You cannot delete built-in rules.</p>
    public let failures: [PartialFailure]?

    public init (
        failures: [PartialFailure]? = nil
    )
    {
        self.failures = failures
    }
}

extension DeleteInsightRulesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteInsightRulesOutputResponse(failures: \(String(describing: failures)))"}
}