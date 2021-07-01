// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateRuleGroupOutputResponse: Equatable {
    /// <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    public let summary: RuleGroupSummary?

    public init (
        summary: RuleGroupSummary? = nil
    )
    {
        self.summary = summary
    }
}

extension CreateRuleGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateRuleGroupOutputResponse(summary: \(String(describing: summary)))"}
}