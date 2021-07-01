// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListIAMPolicyAssignmentsInput: Equatable {
    /// <p>The status of the assignments.</p>
    public let assignmentStatus: AssignmentStatus?
    /// <p>The ID of the AWS account that contains these IAM policy assignments.</p>
    public let awsAccountId: String?
    /// <p>The maximum number of results to be returned per request.</p>
    public let maxResults: Int
    /// <p>The namespace for the assignments.</p>
    public let namespace: String?
    /// <p>The token for the next set of results, or null if there are no more results.</p>
    public let nextToken: String?

    public init (
        assignmentStatus: AssignmentStatus? = nil,
        awsAccountId: String? = nil,
        maxResults: Int = 0,
        namespace: String? = nil,
        nextToken: String? = nil
    )
    {
        self.assignmentStatus = assignmentStatus
        self.awsAccountId = awsAccountId
        self.maxResults = maxResults
        self.namespace = namespace
        self.nextToken = nextToken
    }
}

extension ListIAMPolicyAssignmentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListIAMPolicyAssignmentsInput(assignmentStatus: \(String(describing: assignmentStatus)), awsAccountId: \(String(describing: awsAccountId)), maxResults: \(String(describing: maxResults)), namespace: \(String(describing: namespace)), nextToken: \(String(describing: nextToken)))"}
}