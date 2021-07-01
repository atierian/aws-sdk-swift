// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRuleOutputResponse: Equatable {
    /// <p>Information about the <a>Rule</a> that you specified in the <code>GetRule</code> request.
    /// 			For more information, see the following topics:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <a>Rule</a>: Contains <code>MetricName</code>, <code>Name</code>, an array of <code>Predicate</code> objects,
    /// 				and <code>RuleId</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a>Predicate</a>: Each <code>Predicate</code> object contains <code>DataId</code>, <code>Negated</code>, and
    /// 				<code>Type</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let rule: Rule?

    public init (
        rule: Rule? = nil
    )
    {
        self.rule = rule
    }
}

extension GetRuleOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRuleOutputResponse(rule: \(String(describing: rule)))"}
}