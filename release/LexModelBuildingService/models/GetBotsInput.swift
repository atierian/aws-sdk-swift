// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBotsInput: Equatable {
    /// <p>The maximum number of bots to return in the response that the
    ///       request will return. The default is 10.</p>
    public let maxResults: Int?
    /// <p>Substring to match in bot names. A bot will be returned if any part
    ///       of its name matches the substring. For example, "xyz" matches both
    ///       "xyzabc" and "abcxyz."</p>
    public let nameContains: String?
    /// <p>A pagination token that fetches the next page of bots. If the
    ///       response to this call is truncated, Amazon Lex returns a pagination token in
    ///       the response. To fetch the next page of bots, specify the pagination token
    ///       in the next request. </p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nameContains: String? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nameContains = nameContains
        self.nextToken = nextToken
    }
}

extension GetBotsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBotsInput(maxResults: \(String(describing: maxResults)), nameContains: \(String(describing: nameContains)), nextToken: \(String(describing: nextToken)))"}
}