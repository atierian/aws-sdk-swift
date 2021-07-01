// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An AWS Identity and Access Management (IAM) policy assignment.</p>
public struct IAMPolicyAssignment: Equatable {
    /// <p>Assignment ID.</p>
    public let assignmentId: String?
    /// <p>Assignment name.</p>
    public let assignmentName: String?
    /// <p>Assignment status.</p>
    public let assignmentStatus: AssignmentStatus?
    /// <p>The AWS account ID.</p>
    public let awsAccountId: String?
    /// <p>Identities.</p>
    public let identities: [String:[String]]?
    /// <p>The Amazon Resource Name (ARN) for the IAM policy.</p>
    public let policyArn: String?

    public init (
        assignmentId: String? = nil,
        assignmentName: String? = nil,
        assignmentStatus: AssignmentStatus? = nil,
        awsAccountId: String? = nil,
        identities: [String:[String]]? = nil,
        policyArn: String? = nil
    )
    {
        self.assignmentId = assignmentId
        self.assignmentName = assignmentName
        self.assignmentStatus = assignmentStatus
        self.awsAccountId = awsAccountId
        self.identities = identities
        self.policyArn = policyArn
    }
}

extension IAMPolicyAssignment: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IAMPolicyAssignment(assignmentId: \(String(describing: assignmentId)), assignmentName: \(String(describing: assignmentName)), assignmentStatus: \(String(describing: assignmentStatus)), awsAccountId: \(String(describing: awsAccountId)), identities: \(String(describing: identities)), policyArn: \(String(describing: policyArn)))"}
}