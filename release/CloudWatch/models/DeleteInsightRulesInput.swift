// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteInsightRulesInput: Equatable {
    /// <p>An array of the rule names to delete. If you need to find out the names of your rules, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html">DescribeInsightRules</a>.</p>
    public let ruleNames: [String]?

    public init (
        ruleNames: [String]? = nil
    )
    {
        self.ruleNames = ruleNames
    }
}

extension DeleteInsightRulesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteInsightRulesInput(ruleNames: \(String(describing: ruleNames)))"}
}