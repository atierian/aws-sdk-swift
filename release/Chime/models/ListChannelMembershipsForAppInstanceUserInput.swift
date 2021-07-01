// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListChannelMembershipsForAppInstanceUserInput: Equatable {
    /// <p>The ARN of the <code>AppInstanceUser</code>s</p>
    public let appInstanceUserArn: String?
    /// <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    public let chimeBearer: String?
    /// <p>The maximum number of users that you want returned.</p>
    public let maxResults: Int?
    /// <p>The token returned from previous API requests until the number of channel memberships is reached.</p>
    public let nextToken: String?

    public init (
        appInstanceUserArn: String? = nil,
        chimeBearer: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.appInstanceUserArn = appInstanceUserArn
        self.chimeBearer = chimeBearer
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListChannelMembershipsForAppInstanceUserInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListChannelMembershipsForAppInstanceUserInput(appInstanceUserArn: \(String(describing: appInstanceUserArn)), chimeBearer: \(String(describing: chimeBearer)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}