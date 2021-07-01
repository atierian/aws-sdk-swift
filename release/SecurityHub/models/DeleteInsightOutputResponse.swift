// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteInsightOutputResponse: Equatable {
    /// <p>The ARN of the insight that was deleted.</p>
    public let insightArn: String?

    public init (
        insightArn: String? = nil
    )
    {
        self.insightArn = insightArn
    }
}

extension DeleteInsightOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteInsightOutputResponse(insightArn: \(String(describing: insightArn)))"}
}