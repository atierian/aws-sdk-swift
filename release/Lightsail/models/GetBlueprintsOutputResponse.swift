// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBlueprintsOutputResponse: Equatable {
    /// <p>An array of key-value pairs that contains information about the available
    ///       blueprints.</p>
    public let blueprints: [Blueprint]?
    /// <p>The token to advance to the next page of results from your request.</p>
    ///          <p>A next page token is not returned if there are no more results to display.</p>
    ///          <p>To get the next page of results, perform another <code>GetBlueprints</code> request and
    ///       specify the next page token using the <code>pageToken</code> parameter.</p>
    public let nextPageToken: String?

    public init (
        blueprints: [Blueprint]? = nil,
        nextPageToken: String? = nil
    )
    {
        self.blueprints = blueprints
        self.nextPageToken = nextPageToken
    }
}

extension GetBlueprintsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBlueprintsOutputResponse(blueprints: \(String(describing: blueprints)), nextPageToken: \(String(describing: nextPageToken)))"}
}