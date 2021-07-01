// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeletePullRequestApprovalRuleInput: Equatable {
    /// <p>The name of the approval rule you want to delete.</p>
    public let approvalRuleName: String?
    /// <p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>
    public let pullRequestId: String?

    public init (
        approvalRuleName: String? = nil,
        pullRequestId: String? = nil
    )
    {
        self.approvalRuleName = approvalRuleName
        self.pullRequestId = pullRequestId
    }
}

extension DeletePullRequestApprovalRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeletePullRequestApprovalRuleInput(approvalRuleName: \(String(describing: approvalRuleName)), pullRequestId: \(String(describing: pullRequestId)))"}
}