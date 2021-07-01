// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RejectAssignmentInput: Equatable {
    /// <p>
    ///             The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    ///         </p>
    public let assignmentId: String?
    /// <p>
    ///             A message for the Worker, which the Worker can see in the Status section of the web site.
    ///         </p>
    public let requesterFeedback: String?

    public init (
        assignmentId: String? = nil,
        requesterFeedback: String? = nil
    )
    {
        self.assignmentId = assignmentId
        self.requesterFeedback = requesterFeedback
    }
}

extension RejectAssignmentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RejectAssignmentInput(assignmentId: \(String(describing: assignmentId)), requesterFeedback: \(String(describing: requesterFeedback)))"}
}