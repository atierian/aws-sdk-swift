// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCompatibleImagesInput: Equatable {
    /// <p>The maximum number of results for the list of compatible images. Currently, a Snowball
    ///       Edge device can store 10 AMIs.</p>
    public let maxResults: Int?
    /// <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    ///       compatible images, you can specify a value for <code>NextToken</code> as the starting point
    ///       for your list of returned images.</p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListCompatibleImagesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCompatibleImagesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}