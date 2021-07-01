// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SearchProfilesOutputResponse: Equatable {
    /// <p>The token returned to indicate that there is more data available.</p>
    public let nextToken: String?
    /// <p>The profiles that meet the specified set of filter criteria, in sort order.</p>
    public let profiles: [ProfileData]?
    /// <p>The total number of room profiles returned.</p>
    public let totalCount: Int?

    public init (
        nextToken: String? = nil,
        profiles: [ProfileData]? = nil,
        totalCount: Int? = nil
    )
    {
        self.nextToken = nextToken
        self.profiles = profiles
        self.totalCount = totalCount
    }
}

extension SearchProfilesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SearchProfilesOutputResponse(nextToken: \(String(describing: nextToken)), profiles: \(String(describing: profiles)), totalCount: \(String(describing: totalCount)))"}
}