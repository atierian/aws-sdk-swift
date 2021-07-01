// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       	Information about insight feedback received from a customer.
///       </p>
public struct InsightFeedback: Equatable {
    /// <p>
    ///       	The feedback provided by the customer.
    ///       </p>
    public let feedback: InsightFeedbackOption?
    /// <p>
    ///       	The insight feedback ID.
    ///       </p>
    public let id: String?

    public init (
        feedback: InsightFeedbackOption? = nil,
        id: String? = nil
    )
    {
        self.feedback = feedback
        self.id = id
    }
}

extension InsightFeedback: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InsightFeedback(feedback: \(String(describing: feedback)), id: \(String(describing: id)))"}
}