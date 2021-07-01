// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdatePullRequestDescriptionOutputResponse: Equatable {
    /// <p>Information about the updated pull request.</p>
    public let pullRequest: PullRequest?

    public init (
        pullRequest: PullRequest? = nil
    )
    {
        self.pullRequest = pullRequest
    }
}

extension UpdatePullRequestDescriptionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePullRequestDescriptionOutputResponse(pullRequest: \(String(describing: pullRequest)))"}
}