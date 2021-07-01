// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSkillsInput: Equatable {
    /// <p>Whether the skill is enabled under the user's account.</p>
    public let enablementType: EnablementTypeFilter?
    /// <p>The maximum number of results to include in the response. If more results exist than
    ///          the specified <code>MaxResults</code> value, a token is included in the response so that
    ///          the remaining results can be retrieved.</p>
    public let maxResults: Int?
    /// <p>An optional token returned from a prior request. Use this token for pagination of
    ///          results from this action. If this parameter is specified, the response includes only
    ///          results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    public let nextToken: String?
    /// <p>The ARN of the skill group for which to list enabled skills.</p>
    public let skillGroupArn: String?
    /// <p>Whether the skill is publicly available or is a private skill.</p>
    public let skillType: SkillTypeFilter?

    public init (
        enablementType: EnablementTypeFilter? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        skillGroupArn: String? = nil,
        skillType: SkillTypeFilter? = nil
    )
    {
        self.enablementType = enablementType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.skillGroupArn = skillGroupArn
        self.skillType = skillType
    }
}

extension ListSkillsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSkillsInput(enablementType: \(String(describing: enablementType)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), skillGroupArn: \(String(describing: skillGroupArn)), skillType: \(String(describing: skillType)))"}
}