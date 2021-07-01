// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRecommendationsInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    ///                <code>CodeReview</code>
    ///             </a> object.
    ///       </p>
    public let codeReviewArn: String?
    /// <p>
    ///          The maximum number of results that are returned per call. The default is 100.
    ///       </p>
    public let maxResults: Int?
    /// <p>
    ///          Pagination token.
    ///       </p>
    public let nextToken: String?

    public init (
        codeReviewArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.codeReviewArn = codeReviewArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListRecommendationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRecommendationsInput(codeReviewArn: \(String(describing: codeReviewArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}